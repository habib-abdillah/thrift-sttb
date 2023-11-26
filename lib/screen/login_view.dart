import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thrifting_apps/home/home_view.dart';
import 'package:thrifting_apps/screen/register_view.dart';
import 'package:thrifting_apps/theme.dart';
import 'package:thrifting_apps/widgets/custom_checkbox.dart';
import 'package:thrifting_apps/widgets/primary_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordVisible = false;
  void togglePassword() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 40, 24, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Thrift STTB\nLogin',
                    style: heading2.copyWith(color: textBlack),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    'assets/images/accent.png',
                    width: 99,
                    height: 4,
                  )
                ],
              ),
              SizedBox(
                height: 48,
              ),
              Form(
                  child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: textWhiteGrey,
                        borderRadius: BorderRadius.circular(14)),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: heading6.copyWith(color: textGrey),
                          border: const OutlineInputBorder(
                              borderSide: BorderSide.none)),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: textWhiteGrey,
                        borderRadius: BorderRadius.circular(14)),
                    child: TextFormField(
                      obscureText: !passwordVisible,
                      decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: heading6.copyWith(color: textGrey),
                          suffixIcon: IconButton(
                            color: textGrey,
                            splashRadius: 1,
                            icon: Icon(passwordVisible
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined),
                            onPressed: togglePassword,
                          ),
                          border: const OutlineInputBorder(
                              borderSide: BorderSide.none)),
                    ),
                  )
                ],
              )),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const CustomCheckbox(),
                  const SizedBox(
                    width: 12,
                  ),
                  Text(
                    'Remember me',
                    style: regular16pt,
                  )
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              CustomPrimaryButton(
                buttonColor: primaryBlue,
                textValue: 'Login',
                textColor: Colors.white,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                },
              ),
              const SizedBox(
                height: 24,
              ),
              Center(
                child: Text(
                  'Or',
                  style: heading6.copyWith(color: textGrey),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              CustomPrimaryButton(
                buttonColor: colorLight,
                textValue: 'Login with Google',
                textColor: textBlack,
                onPressed: (){

                },
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Belum punya akun? ',
                    style: regular16pt.copyWith(color: textGrey),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()));
                    },
                    child: Text(
                      'Register',
                      style: regular16pt.copyWith(color: primaryBlue),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
