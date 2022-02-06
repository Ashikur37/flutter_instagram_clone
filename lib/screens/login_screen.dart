import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_clone/utils/colors.dart';
import 'package:instagram_clone/widgets/text_field_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Container(),
                flex: 1,
              ),
              SvgPicture.asset(
                'assets/ic_instagram.svg',
                color: primaryColor,
                height: 64,
              ),
              const SizedBox(
                height: 64,
              ),
              TextFieldInput(
                isPass: false,
                hintText: "Enter Email",
                keyboardType: TextInputType.emailAddress,
                controller: _emailController,
              ),
              const SizedBox(
                height: 24,
              ),
              TextFieldInput(
                isPass: true,
                hintText: "Enter Password",
                keyboardType: TextInputType.text,
                controller: _passwordcontroller,
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                child: Text('Log In'),
                width: double.infinity,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(
                  vertical: 12,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
