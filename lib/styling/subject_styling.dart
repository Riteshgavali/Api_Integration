import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubjectStyle extends StatefulWidget {
  const SubjectStyle(this.text, this.arrowicon, this.checkbox, {super.key});
  final String text;
  final IconButton arrowicon;
  final Checkbox checkbox;

  @override
  State<SubjectStyle> createState() => _SubjectStyleState();
}

class _SubjectStyleState extends State<SubjectStyle> {

 bool val1 = false;
  bool val2 = false;
  bool val3 = false;
  bool val4 = false;
  bool val5 = false;
  bool val6 = false;
  bool val7 = false;
  bool val8 = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Checkbox(
                value: val1,
                onChanged: (bool? value) {
                  setState(() {
                    val1 = value!;
                    val2 = false;
                    val3 = false;
                    val4 = false;
                    val5 = false;
                    val6 = false;
                    val7 = false;
                    val8 = false;
                  });
                },
              ),
              Text(
                widget.text,
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                    color: Color(0xFF191C1E),
                    fontSize: 20,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.50,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_right_outlined, size: 24),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
