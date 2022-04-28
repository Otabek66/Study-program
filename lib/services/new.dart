
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:onboarding/services/fire_service.dart';
import 'package:onboarding/widgets/my_messanger.dart';

class MyService{
  Future<bool> signUp( String emailController,
      String passwordController) async {
    try {
      await FireService.auth.createUserWithEmailAndPassword(
        email: emailController,
        password: passwordController,
      );
      
      return true;
    } catch (e) {
      Exception(e);
      return false;
    }
  }
  Future<bool> signIn( String emailController,
      String passwordController) async {
    try {
      await FireService.auth.signInWithEmailAndPassword(
        email: emailController,
        password: passwordController,
      );
      return true;
    } catch (e) {
      Exception(e);
      return false;
    }
  }

  Future saveToStore(BuildContext context, String emailController) async{
    try{
      await FireService.store.collection('user').doc("$emailController").set(
        {
          "email": emailController,
          "create_at" : FieldValue.serverTimestamp(),
        }
      );
      return true;
    } catch (e) {
      MyMessenger.messenger(context, "Error while Sign Up", Colors.red);
      return false;
    }    
  } 
  Future updateProfile(BuildContext context, XFile file,String name, String email, String dateOfBirth, String phoneNumber, String studentId) async{
    try{
      var image = await FireService.storage.ref().child('users').child('avatars').child(email.toString()).putFile(File(file.path));
      String downloadUrl = await image.ref.getDownloadURL();
      await  FireService.store.collection('users').doc('$email').update({
            "image_url": downloadUrl,
          "name": name,
          "email": email,
          "birth": dateOfBirth,
          "phone": phoneNumber,
          "studentId": studentId,
      });
      return true;
    } catch (e){
      MyMessenger.messenger(context, "Error while Sign Up", Colors.red);
      return false;
    }    
  } 
}