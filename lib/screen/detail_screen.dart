import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Screen', style: GoogleFonts.manrope(fontWeight: FontWeight.w800)),
        backgroundColor: const Color(0xFF818AF9),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 336 / 184,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFF818AF9),
                ),
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/backround_card.png',
                      height: double.maxFinite,
                      width: double.maxFinite,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: "Your",
                              style: GoogleFonts.manrope(
                                  fontSize: 14,
                                  color: const Color.fromARGB(255, 231, 228, 228),
                                  height: 150 / 100),
                              children: const [
                                TextSpan(
                                    text: " Asep ",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w800)),
                                TextSpan(
                                  text: 'will get \n Vaccinated ',
                                ),
                                TextSpan(
                                    text: 'tomorrow \n at 9:00 AM',
                                    style: TextStyle(
                                        color: Colors.white, fontWeight: FontWeight.w800))
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Vaccination Details',
              style: GoogleFonts.manrope(
                fontSize: 24,
                fontWeight: FontWeight.w800,
                color: const Color(0xFF35385A),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Your pet Asep is scheduled to get vaccinated tomorrow at 9:00 AM. Please make sure to bring your pet to the clinic on time.',
              style: GoogleFonts.manrope(
                fontSize: 16,
                color: const Color(0xFF35385A),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Preparation Tips',
              style: GoogleFonts.manrope(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: const Color(0xFF35385A),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '1. Ensure your pet is well-rested.\n'
              '2. Do not feed your pet 2 hours before the vaccination.\n'
              '3. Bring your pet\'s medical records.\n'
              '4. Keep your pet calm and relaxed.',
              style: GoogleFonts.manrope(
                fontSize: 16,
                color: const Color(0xFF35385A),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back to Home',
                    style: GoogleFonts.manrope(
                      fontSize: 14,
                      color: const Color(0xFF818AF9),
                      fontWeight: FontWeight.w800,
                    )),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            )
          ],
        ),
      ),
    );
  }
}