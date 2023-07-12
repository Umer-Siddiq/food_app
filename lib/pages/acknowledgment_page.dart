import 'package:flutter/material.dart';

import '../custom_widgets/custom_button.dart';
import 'login_page.dart';

class AcknowledgmentPage extends StatelessWidget {
  final TextEditingController nameController;

  const AcknowledgmentPage({required this.nameController, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("O R D E R  @  E A T"),
        centerTitle: true,
        titleTextStyle: const TextStyle(fontSize: 25, color: Colors.white),
        backgroundColor: Colors.red.shade800,
        toolbarHeight: 65,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.only(top: 35),
              child: Container(
                width: double.infinity,
                height: 70,
                color: Colors.red.shade400,
                alignment: Alignment.center,
                child: Text(
                  nameController.text,
                  style: const TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Flexible(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(top: 3.0, left: 10),
              child: Text(
                "Your account has been created successfully",
                style: TextStyle(fontSize: 23, color: Colors.black),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            buttonPress: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ));
            },
            buttonText: "Login",
            bgColor: Colors.redAccent,
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
