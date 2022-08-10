import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/controller/auth_controller.dart';
import 'package:instagram_clone/model/constant/colors.dart';

import '../../model/widget/Text_input_field.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SignupScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double diviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 100),
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(children: [
                SvgPicture.asset(
                  'assets/ic_instagram.svg',
                  color: Colors.black,
                  height: 63,
                ),
                const SizedBox(
                  height: 10,
                ),
                Stack(
                  children: [
                    const CircleAvatar(
                      radius: 64,
                      backgroundImage: NetworkImage(
                          'https://www.facebook.com/photo/?fbid=379755210776984&set=a.102750145144160'),
                    ),
                    Positioned(
                        left: 75,
                        bottom: -7,
                        child: IconButton(
                            onPressed: () {
                              AuthController.instance.pickImage();
                            },
                            icon: const Icon(
                              Icons.add_a_photo,
                              color: Colors.grey,
                            )))
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                TextInputField(
                  conTroller: _usernameController,
                  hintext: 'Enter your username',
                  isPass: false,
                  textInputType: TextInputType.text,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextInputField(
                    conTroller: _emailController,
                    hintext: "Enter your email",
                    textInputType: TextInputType.emailAddress,
                    isPass: false),
                const SizedBox(
                  height: 10,
                ),
                TextInputField(
                    conTroller: _passwordController,
                    hintext: "Enter your password",
                    textInputType: TextInputType.text,
                    isPass: true),
                const SizedBox(
                  height: 10,
                ),

                const SizedBox(
                  height: 25,
                ),
                InkWell(
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      color: blueColor,
                    ),
                    child: InkWell(
                      onTap: () {
                        AuthController.instance.registerUser(
                            email: _emailController.text,
                            username: _usernameController.text,
                            password: _passwordController.text,
                            profilePhoto: AuthController.instance.profilePhoto);
                      },
                      child: const Text(
                        "Sign up",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),

                // alignment: Alignment.topRight,

                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width * 0.35,
                      color: const Color(0xffA2A2A2),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Or',
                      style: TextStyle(
                          fontSize: diviceWidth * 0.040, color: Colors.black),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width * 0.35,
                      color: const Color(0xffA2A2A2),
                    ),
                  ],
                ),
                SizedBox(
                  height: diviceWidth * .05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/facebook.png',
                      height: 30,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Login with facebook",
                      style: TextStyle(
                          fontSize: diviceWidth * 0.040,
                          color: const Color(0xff1877f2),
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account? ",
                      style: TextStyle(color: Colors.black54),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: diviceWidth * 0.040,
                            color: const Color(0xff00258B),
                            fontWeight: FontWeight.w700),
                      ),
                    )
                  ],
                )
              ]),
            ),
          ),
        ));
  }
}
