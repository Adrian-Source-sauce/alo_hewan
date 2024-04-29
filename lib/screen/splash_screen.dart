import 'package:alohewan/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const HomeScreen()), (route) => false);
    });

    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        alignment: Alignment.center,
      ),
      Center(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 80,
            ),
            Image.asset('assets/images/Logo.png'),
            const SizedBox(
              height: 50,
            ),
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "Helping you\n to keep ",
                  style: GoogleFonts.manrope(
                      fontSize: 24,
                      color: const Color.fromARGB(255, 231, 228, 228),
                      letterSpacing: 3.5 / 100,
                      height: 152 / 100),
                  children: const [
                    TextSpan(
                        text: "your bestie",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w800)),
                    TextSpan(
                      text: ' \n stay healthy',
                    )
                  ],
                )),
          ],
        )),
      )
    ]));
  }
}
