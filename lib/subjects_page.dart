import 'package:api_in_flutter/personal_details.dart';
import 'package:api_in_flutter/styling/indicatorstyle.dart';
import 'package:api_in_flutter/styling/subject_styling.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubjectPage extends StatefulWidget {
  const SubjectPage({super.key});

  @override
  State<SubjectPage> createState() => _SubjectPageState();
}

class _SubjectPageState extends State<SubjectPage> {
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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Subject Form",
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
            children: <Widget>[
              const SizedBox(
                height: 75,
              ),
              const IndicatorStyle(),
              const SizedBox(
                height: 53,
              ),
              Center(
                child: Column(
                  children: [
                    SubjectStyle(
                      "SRM Entrance",
                      IconButton(onPressed: () {}, icon: const Icon(Icons.abc)),
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
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    SubjectStyle(
                      "JEE",
                      IconButton(onPressed: () {}, icon: const Icon(Icons.abc)),
                      Checkbox(
                        value: val2,
                        onChanged: (bool? value) {
                          setState(() {
                            val1 = false;
                            val2 = value!;
                            val3 = false;
                            val4 = false;
                            val5 = false;
                            val6 = false;
                            val7 = false;
                            val8 = false;
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    SubjectStyle(
                      "JEE Advanced",
                      IconButton(onPressed: () {}, icon: const Icon(Icons.abc)),
                      Checkbox(
                        value: val3,
                        onChanged: (bool? value) {
                          setState(() {
                            val1 = false;
                            val2 = false;
                            val3 = value!;
                            val4 = false;
                            val5 = false;
                            val6 = false;
                            val7 = false;
                            val8 = false;
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    SubjectStyle(
                      "NEET",
                      IconButton(onPressed: () {}, icon: const Icon(Icons.abc)),
                      Checkbox(
                        value: val4,
                        onChanged: (bool? value) {
                          setState(() {
                            val1 = false;
                            val2 = false;
                            val3 = false;
                            val4 = value!;
                            val5 = false;
                            val6 = false;
                            val7 = false;
                            val8 = false;
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    SubjectStyle(
                      "GATE",
                      IconButton(onPressed: () {}, icon: const Icon(Icons.abc)),
                      Checkbox(
                        value: val5,
                        onChanged: (bool? value) {
                          setState(() {
                            val1 = false;
                            val2 = false;
                            val3 = false;
                            val4 = false;
                            val5 = value!;
                            val6 = false;
                            val7 = false;
                            val8 = false;
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    SubjectStyle(
                      "NPTEL",
                      IconButton(onPressed: () {}, icon: const Icon(Icons.abc)),
                      Checkbox(
                        value: val6,
                        onChanged: (bool? value) {
                          setState(() {
                            val1 = false;
                            val2 = false;
                            val3 = false;
                            val4 = false;
                            val5 = false;
                            val6 = value!;
                            val7 = false;
                            val8 = false;
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    SubjectStyle(
                      "DESIGN",
                      IconButton(onPressed: () {}, icon: const Icon(Icons.abc)),
                      Checkbox(
                        value: val7,
                        onChanged: (bool? value) {
                          setState(() {
                            val1 = false;
                            val2 = false;
                            val3 = false;
                            val4 = false;
                            val5 = false;
                            val6 = false;
                            val7 = value!;
                            val8 = false;
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    SubjectStyle(
                      "VIT Entrance",
                      IconButton(onPressed: () {}, icon: const Icon(Icons.abc)),
                      Checkbox(
                        value: val8,
                        onChanged: (bool? value) {
                          setState(() {
                            val1 = false;
                            val2 = false;
                            val3 = false;
                            val4 = false;
                            val5 = false;
                            val6 = false;
                            val7 = false;
                            val8 = value!;
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 48,
              ),
              TextButton(
                style: ButtonStyle(
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    backgroundColor: const MaterialStatePropertyAll(
                      Color(0xFFD3EF64),
                    )),
                onPressed: () {
                  Navigator.of(context).pushNamed(PersonalDetails.routename);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Text(
                            "Next",
                            style: TextStyle(
                              color: Color(0xFF181E00),
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                            color: Color(0xFF181E00),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
