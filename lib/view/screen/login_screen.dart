import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/model/constant/colors.dart';

import '../../model/widget/Text_input_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double diviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 150),
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(children: [
                SvgPicture.asset(
                  'assets/ic_instagram.svg',
                  color: Colors.black,
                  height: 63,
                ),
                const SizedBox(
                  height: 63,
                ),
                TextInputField(
                  conTroller: _emailController,
                  hintext: 'Enter your email',
                  isPass: false,
                  textInputType: TextInputType.emailAddress,
                ),
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
                  height: 20,
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
                    child: const Text(
                      "Log In",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),

                // alignment: Alignment.topRight,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Forgotton your password?",
                      style: TextStyle(color: Colors.black),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "Get Help",
                        style: TextStyle(
                            color: Color(0xff002588),
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width * 0.35,
                      color: Color(0xffA2A2A2),
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
                      color: Color(0xffA2A2A2),
                    ),
                  ],
                ),
                SizedBox(
                  height: diviceWidth * .06,
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
                          color: Color(0xff1877f2),
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                SizedBox(
                  height: diviceWidth * 0.50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account? ",
                      style: TextStyle(color: Colors.black54),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Sign up",
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
