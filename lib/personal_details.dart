import 'package:api_in_flutter/styling/indicatorstyle.dart';
import 'package:api_in_flutter/styling/personal_details_form_styling.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonalDetails extends StatefulWidget {
  static const routename = '/PersonalDetails';

  const PersonalDetails({super.key});

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Personal Details",
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
                child: PersonalDetailsForm(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
