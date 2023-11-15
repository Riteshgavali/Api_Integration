// import 'dart:developer';

// import 'package:api_in_flutter/apis/user_model.dart';
// import 'package:api_in_flutter/apis/constants.dart';
// import 'package:http/http.dart' as http;

// class ApiService {
//   // ignore: body_might_complete_normally_nullable
//   Future<List<UserModel>?> getUsers() async {
//     try {
//       var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndpoint);
//       var response = await http.get(url);
//       if (response.statusCode == 200) {
//         List<UserModel> _model = userModelFromJson(response.body);
//         return _model;
//       }
//     } catch (e) {
//       log(e.toString());
//     }
//   }
// }