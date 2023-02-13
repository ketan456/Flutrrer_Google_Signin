import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:fluttersignin/Login/LoginModel.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class LoginController extends GetxController {
  final _googleSigning = GoogleSignIn();
  var googleAccount = Rx<GoogleSignInAccount?>(null);
  LoginModel loginModel = LoginModel();

  // Future<void> sigInUser()  async {
  //   String url = "http://localhost:8080/signin";
  // }

  // http://localhost:8080/signin

  login() async {
    googleAccount.value = await _googleSigning.signIn();
    print( googleAccount.value!.serverAuthCode);
    print( googleAccount);
  //  sigInUser();
  }

  logout() async {
    googleAccount.value = await _googleSigning.signOut();
  }

  void sigInUser() async {
   // Map<String, dynamic> parameter = loginModel.toJson();
    try {
      http.Response response = await post(
          Uri.parse("http://10.0.2.2:8080/signin"),
          headers: {
            "Content-Type": "application/json"
          },
          body:jsonEncode({
            "email": googleAccount.value!.email,
            "profileName": googleAccount.value!.displayName,
            "profileUrl": googleAccount.value!.photoUrl,
          }));

      if (response.statusCode == 200) {
        print(response);
      }
      else{
        print("cant save");
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
