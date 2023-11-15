import 'package:api_in_flutter/guardian_details.dart';
import 'package:api_in_flutter/personal_details.dart';
import 'package:api_in_flutter/subjects_page.dart';
import 'package:api_in_flutter/transaction.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SubjectPage(),
      debugShowCheckedModeBanner: false,
      routes: {
        PersonalDetails.routename: (context) => const PersonalDetails(),
        GuardianDetails.routename: (context) => const GuardianDetails(),
        TransactionPage.routename: (context) => const TransactionPage(),
      },
    );
  }
}
