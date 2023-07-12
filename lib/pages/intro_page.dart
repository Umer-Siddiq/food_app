import 'package:flutter/material.dart';
import '../custom_widgets/custom_app_title.dart';
import 'login_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            'assets/images/intro_page_bg_pic.jpg',
            fit: BoxFit.fitHeight,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.15,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                color: Colors.red.shade900,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
              child: const CustomAppTitle()),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.85,
              child: ElevatedButton(
                onPressed: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    )),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 23,
                    shadowColor: Colors.black,
                    side:
                        BorderSide(strokeAlign: 20, color: Colors.red.shade900),
                    fixedSize:
                        Size(MediaQuery.of(context).size.width * 0.85, 43)),
                child: Text("Get Started",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.red.shade800,
                        fontWeight: FontWeight.w700)),
              ))
        ],
      ),
    );
  }
}
