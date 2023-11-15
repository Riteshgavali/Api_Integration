import 'package:api_in_flutter/styling/guardian_details_styling.dart';
import 'package:api_in_flutter/styling/indicatorstyle.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GuardianDetails extends StatefulWidget {
  static const routename = "/GuardianDetails";

  const GuardianDetails({super.key});

  @override
  State<GuardianDetails> createState() => _GuardianDetailsState();
}

class _GuardianDetailsState extends State<GuardianDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Guardian Details",
          style: GoogleFonts.roboto(
            textStyle: const TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.w400),
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomRight,
                colors: <Color>[Color(0XFF0E678F), Color(0XFF629CB6)]),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 75,
              ),
              const IndicatorStyle(),
              const SizedBox(
                height: 53,
              ),
              Center(
                child: GuardianDetailStyling(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
