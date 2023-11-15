import 'package:api_in_flutter/transaction.dart';
import 'package:flutter/material.dart';

class GuardianDetailStyling extends StatelessWidget {
  GuardianDetailStyling({super.key});
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle, border: Border.all()),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: 'Enter your full name',
                      labelText: 'Full Name',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle, border: Border.all()),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.email),
                      hintText: 'Enter your Email',
                      labelText: 'Email',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle, border: Border.all()),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.phone),
                      hintText: 'Enter your Mobile Number',
                      labelText: 'Mobile Number',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle, border: Border.all()),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.home),
                      hintText: 'Enter your Address',
                      labelText: 'Address',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle, border: Border.all()),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.change_history),
                      hintText: 'Enter your State name',
                      labelText: 'State',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle, border: Border.all()),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.location_city),
                      hintText: 'Enter your City name',
                      labelText: 'City',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle, border: Border.all()),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.numbers_rounded),
                      hintText: 'Enter your Pin Code',
                      labelText: 'Pin Code',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle, border: Border.all()),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.date_range),
                      hintText: 'Enter your Date of Birth',
                      labelText: 'Date of Birth',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const SizedBox(
                  height: 30,
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
                    if (_formKey.currentState!.validate()) {
                      // If the form is valid, display a Snackbar.
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Data is Submitted.'),
                        ),
                      );
                      Navigator.of(context)
                          .pushNamed(TransactionPage.routename);
                    }
                  },
                  child: const Row(
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
          )
        ],
      ),
    );
  }
}
