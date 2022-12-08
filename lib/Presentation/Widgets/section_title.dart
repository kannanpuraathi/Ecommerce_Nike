import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class SectionTitle extends StatelessWidget {
  final String title;
  final double size;
  const SectionTitle({Key? key, required this.title, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        title,
        style: GoogleFonts.raleway(
          fontSize: size,
          color: Theme.of(context).scaffoldBackgroundColor,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
