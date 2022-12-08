import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final String title;

  const ElevatedButtonWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 150,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
              Theme.of(context).scaffoldBackgroundColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
        onPressed: () {},
        child: Text(
          title,
          style: GoogleFonts.raleway(
              fontSize: 20,
              fontWeight: FontWeight.normal,
              color: Theme.of(context).primaryColor),
        ),
      ),
    );
  }
}
