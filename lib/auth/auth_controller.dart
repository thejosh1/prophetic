import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prayers/pages/auth_pages/login.dart';
import 'package:prayers/pages/prayer_screen.dart';

class AuthController extends GetxController{
  //create a static variable to make authcontroller accessible throughout the app
  static AuthController instance = Get.find();

  //initialize firebase auth
  late Rx<User?> _user;

  FirebaseAuth auth = FirebaseAuth.instance;

  //ensure it is ready when getxcontroller is initialized
  @override
  void onReady (){
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    //notify the _user variable when there is a change like where the user wants to login or something
    _user.bindStream(auth.userChanges());
    ever(_user, _initalScreen);
  }
  //this handles the authentication process
  _initalScreen(User? user) {
    if(user==null){
      Get.offAll(()=>LoginScreen());
    } else {
      Get.offAll(PrayerScreen());
    }
  }

  void registerUser(String email, password) async{
    try{
      await auth.createUserWithEmailAndPassword(email: email, password: password);
    } catch(e){
      Get.snackbar("Registration Status", "Message",
        backgroundColor: Colors.white,
        icon: Icon(Icons.warning_amber_rounded, color: Colors.red,),
        snackPosition: SnackPosition.TOP,
        titleText: Text("Failed to create Account", style: TextStyle(
          color: Colors.red,
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),),
        messageText: Text(e.toString(), style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16,
            fontWeight: FontWeight.w200,
            color: Color(0xFF1E2432)
        ))
      );

    }
  }
  void LoginUser(String email, password) async{
    try{
      await auth.createUserWithEmailAndPassword(email: email, password: password);
    } catch(e){
      Get.snackbar("Login Status", "login Message",
          backgroundColor: Colors.white,
          snackPosition: SnackPosition.TOP,
          icon: Icon(Icons.warning_amber_rounded, color: Colors.red,),
          titleText: Text("Failed to Login", style: TextStyle(
            color: Colors.red,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),),
          messageText: Text(e.toString(), style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              fontWeight: FontWeight.w200,
              color: Color(0xFF1E2432)
          ))
      );

    }
  }
  void Logout() async{
    try{
      await auth.signOut();
    } catch(e){
      Get.snackbar("Logout", "Logout Message",
          backgroundColor: Colors.white,
          snackPosition: SnackPosition.TOP,
          titleText: Text("can't log out try again", style: TextStyle(
            color: Colors.red,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),),
          messageText: Text(e.toString(), style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              fontWeight: FontWeight.w200,
              color: Color(0xFF1E2432)
          ))
      );

    }
  }

}