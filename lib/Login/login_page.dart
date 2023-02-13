import 'package:flutter/material.dart';
import 'package:fluttersignin/Login/LoginModel.dart';

import 'package:fluttersignin/LoginController/login_controller.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginPage extends StatelessWidget {
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Center(child: Obx(() {
        if (controller.googleAccount.value == null) {
          return buidLoginButton();
        } else {
          return profile();
        }
      })),
    );
  }

  Widget buidLoginButton() {
    return FloatingActionButton.extended(
      onPressed: () {
        controller.login();
      },
      label: Text("Signing With Google"),
      icon: Image.asset(
        "images/google-logo-png.png",
        height: 32,
        width: 32,
      ),
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
    );
  }

  Widget profile() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          backgroundImage:
              Image.network(controller.googleAccount.value?.photoUrl ?? "")
                  .image,
          radius: 100,
        ),
        Text("${controller.googleAccount.value?.email}"),
        Text("${controller.googleAccount.value?.displayName}"),
        ActionChip(
          avatar: Icon(Icons.logout),
          label: Text("LogOut"),
          onPressed: () {
            controller.logout();
          },
        )
      ],
    );
  }


}
