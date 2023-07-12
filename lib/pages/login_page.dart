import 'package:flutter/material.dart';
import '../custom_widgets/custom_app_title.dart';
import '../custom_widgets/custom_button.dart';
import '../custom_widgets/custom_text_form_field.dart';
import 'home_page.dart';
import 'new_account_details_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _seePassword = true;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.1,
                color: Colors.red.shade800,
                alignment: Alignment.center,
                child: const CustomAppTitle(textSize: 30),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Image.asset('assets/images/logo_pic.png'),
              const CustomTextFormField(
                  textLabel: "Email Address/Username",
                  textHint: 'abc123@gmail.com',
                  aboveHeightSpace: 26,
                  keyBoard: TextInputType.emailAddress),
              CustomTextFormField(
                textLabel: "Password",
                showText: _seePassword,
                keyBoard: TextInputType.visiblePassword,
                iconSuffix: IconButton(
                  onPressed: () {
                    setState(() {
                      _seePassword = !_seePassword;
                    });
                  },
                  icon: const Icon(
                    Icons.remove_red_eye,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 35),
              CustomButton(
                buttonPress: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ));
                  }
                },
                buttonText: "Login",
                textColor: Colors.white,
                bgColor: Colors.red.shade700,
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account? ",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const NewAccountDetails(),
                            ));
                      },
                      child: Text("Create an account",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.red.shade900,
                          )))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
