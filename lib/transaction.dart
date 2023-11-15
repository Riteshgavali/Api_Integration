import 'dart:convert';

import 'package:api_in_flutter/styling/indicatorstyle.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class TransactionPage extends StatefulWidget {
  static const routename = "/TransactionPage";
  const TransactionPage({super.key});

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  String responseText = '';

  Future<void> sendPostRequest() async {
    final String apiUrl = 'https://mycollegeindia.as.r.appspot.com/';
    final Map<String, String> headers = {'Content-Type': 'application/json'};
    final Map<String, String> body = {'query': 'query { __typename }'};

    final http.Response response = await http.post(
      Uri.parse(apiUrl),
      headers: headers,
      body: jsonEncode(body),
    );

    setState(() {
      responseText = response.body;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Transaction Details",
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
                child: Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        sendPostRequest();
                      },
                      child: const Text('Send POST Request'),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Response:',
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(height: 10),
                    Text(responseText),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
