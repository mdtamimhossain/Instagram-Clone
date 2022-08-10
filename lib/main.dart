import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:instagram_clone/view/screen/login_screen.dart';
import 'package:instagram_clone/view/screen/signup_screen.dart';

import 'controller/auth_controller.dart';
import 'model/constant/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyA6I7EInpRH47nX3Oa6Lp5dcX7lFCbfE7I",
        appId: "1:1063883600297:web:d5fd57f46e493f8b6d94b8",
        messagingSenderId: "1063883600297",
        projectId: "instagram-clone-bb6a0",
        storageBucket: "instagram-clone-bb6a0.appspot.com",
      ),
    ).then((value) {
      Get.put(AuthController());
    });
  } else {
    await Firebase.initializeApp().then((value) {
      Get.put(AuthController());
    });
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Instagram Clone",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      /* home: ResponsiveLayout(
        mobileScreen: MobileScreen(),
        webScreen: WebScreen(),
      ),*/
      home: SignupScreen(),
    );
  }
}
