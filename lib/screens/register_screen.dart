import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:mysocial/components/text_button.dart';
import 'package:mysocial/utils/color_palette.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _identifierController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  // Separate FocusNodes for each text field
  final FocusNode _identifierFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  // Default border colors
  Color _identifierBorderColor = Palette.disable;
  Color _passwordBorderColor = Palette.disable;
  bool passwordShow = true;

  @override
  void initState() {
    super.initState();

    // Listener for identifier field
    _identifierFocusNode.addListener(() {
      setState(() {
        _identifierBorderColor =
            _identifierFocusNode.hasFocus ? Palette.main : Palette.disable;
      });
    });

    // Listener for password field
    _passwordFocusNode.addListener(() {
      setState(() {
        _passwordBorderColor =
            _passwordFocusNode.hasFocus ? Palette.main : Palette.disable;
      });
    });
  }

  @override
  void dispose() {
    _identifierFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  void _showErrorSnackbar(String message) {
    Get.snackbar(
      "Error",
      message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.red.withOpacity(0.8),
      colorText: Colors.white,
      borderRadius: 10,
      margin: EdgeInsets.all(15),
      duration: Duration(seconds: 3),
    );
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      print("Form is valid!");
    } else {
      _showErrorSnackbar("Please fill in all required fields.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {},
            icon: const FaIcon(Icons.arrow_back),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                Text(
                  "Sign up",
                  style:
                      TextStyle(fontSize: 30.sp, fontWeight: FontWeight.w800),
                ),
                SizedBox(height: 15.h),
                Text(
                  "Sign up for a new account using email and phone number.",
                  style: TextStyle(fontSize: 15.sp, color: Palette.disable),
                ),
                SizedBox(height: 35.h),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        height: 50.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(
                              color: _identifierBorderColor, width: 1.w),
                        ),
                        child: TextFormField(
                          focusNode: _identifierFocusNode,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email",
                            hintStyle: TextStyle(
                              fontSize: 16.0,
                              color: Palette.disable,
                            ),
                          ),
                          controller: _identifierController,
                          keyboardType: TextInputType.emailAddress,
                          cursorColor: Palette.main,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email.';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: 25.h),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        height: 50.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(
                              color: _identifierBorderColor, width: 1.w),
                        ),
                        child: TextFormField(
                          focusNode: _identifierFocusNode,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email",
                            hintStyle: TextStyle(
                              fontSize: 16.0,
                              color: Palette.disable,
                            ),
                          ),
                          controller: _identifierController,
                          keyboardType: TextInputType.emailAddress,
                          cursorColor: Palette.main,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email.';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: 25.h),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        height: 50.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(
                              color: _identifierBorderColor, width: 1.w),
                        ),
                        child: TextFormField(
                          focusNode: _identifierFocusNode,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email",
                            hintStyle: TextStyle(
                              fontSize: 16.0,
                              color: Palette.disable,
                            ),
                          ),
                          controller: _identifierController,
                          keyboardType: TextInputType.emailAddress,
                          cursorColor: Palette.main,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email.';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: 25.h),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        height: 50.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(
                              color: _identifierBorderColor, width: 1.w),
                        ),
                        child: TextFormField(
                          focusNode: _identifierFocusNode,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email",
                            hintStyle: TextStyle(
                              fontSize: 16.0,
                              color: Palette.disable,
                            ),
                          ),
                          controller: _identifierController,
                          keyboardType: TextInputType.emailAddress,
                          cursorColor: Palette.main,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email.';
                            }
                            return null;
                          },
                        ),
                      ),
                    SizedBox(height: 25.h),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        height: 50.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(
                              color: _identifierBorderColor, width: 1.w),
                        ),
                        child: TextFormField(
                          focusNode: _identifierFocusNode,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email",
                            hintStyle: TextStyle(
                              fontSize: 16.0,
                              color: Palette.disable,
                            ),
                          ),
                          controller: _identifierController,
                          keyboardType: TextInputType.emailAddress,
                          cursorColor: Palette.main,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email.';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: 25.h),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        height: 50.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(
                              color: _passwordBorderColor, width: 1.w),
                        ),
                        child: TextFormField(
                          focusNode: _passwordFocusNode,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                            hintStyle: const TextStyle(
                              fontSize: 16.0,
                              color: Palette.disable,
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  passwordShow = !passwordShow;
                                });
                              },
                              icon: FaIcon(
                                passwordShow
                                    ? FontAwesomeIcons.eyeSlash
                                    : FontAwesomeIcons.eye,
                                color: Palette.main,
                                size: 18.sp,
                              ),
                            ),
                          ),
                          controller: _passwordController,
                          obscureText: passwordShow,
                          cursorColor: Palette.main,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Forget Password ?",
                              style: TextStyle(
                                color: Palette.main,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      MyTextButton(
                          text: "Continue",
                          backgroundColor: Palette.main,
                          textColor: Colors.white,
                          onPressed: _submitForm),
                      SizedBox(
                        height: 25.h,
                      ),
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account ?",
                            style: TextStyle(
                                fontSize: 14.sp, fontWeight: FontWeight.w500),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "Sing In",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Palette.main),
                              ))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
