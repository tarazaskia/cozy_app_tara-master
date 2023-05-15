import 'package:cozy_application/Pages/home_page.dart';
import 'package:flutter/material.dart';
// import 'package:cozy_application/Pages/home_page.dart';
import 'package:cozy_application/Pages/splash_page.dart';
import 'package:google_fonts/google_fonts.dart';

class CircularImage extends StatelessWidget {
  const CircularImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 70),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(40),
              topLeft: Radius.circular(40),
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
            child: Image.asset(
              'assets/images/person2.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            'Tara Zaskia Thamrin',
            style: GoogleFonts.poppins(
              fontSize: 20,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            "24 : 00 minutes",
            style: GoogleFonts.poppins(
              fontSize: 15,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(19),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            },
            child: const Text('Back to Home Page'),
          ),
        )
      ],
    );
  }
}
