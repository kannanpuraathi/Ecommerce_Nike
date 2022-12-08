import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SizeButton extends StatefulWidget {
  final List sizelist;

  const SizeButton({Key? key, required this.sizelist}) : super(key: key);

  @override
  State<SizeButton> createState() => _SizeButtonState();
}

class _SizeButtonState extends State<SizeButton> {
  int selectedIndex = 0;

  void changeIndex(int index) {
    setState(() {
      selectedIndex = index;
      print(widget.sizelist[selectedIndex]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: widget.sizelist.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Container(
            margin: const EdgeInsets.only(left: 5, right: 5),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: selectedIndex == index
                    ? MaterialStateProperty.all<Color>(Colors.deepPurpleAccent)
                    : MaterialStateProperty.all<Color>(
                        Theme.of(context).scaffoldBackgroundColor),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              onPressed: () {
                changeIndex(index);
              },
              child: Text(
                widget.sizelist[index].toString(),
                style: GoogleFonts.raleway(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: selectedIndex == index
                        ? Theme.of(context).scaffoldBackgroundColor
                        : Theme.of(context).primaryColor),
              ),
            ));
      },
    );
  }
}
