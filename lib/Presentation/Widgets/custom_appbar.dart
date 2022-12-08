import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CustomAppBar extends StatelessWidget  with PreferredSizeWidget{
  final String title;
  const CustomAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      title: Text(
        title,
        style: GoogleFonts.aBeeZee(
            fontSize: 25, color: Theme.of(context).scaffoldBackgroundColor),
      ),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
