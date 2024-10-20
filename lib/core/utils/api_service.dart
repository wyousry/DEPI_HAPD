import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final _baseUrl = 'https://gecko-logical-officially.ngrok-free.app/';
  final Dio dio;

  ApiService(this.dio);
  Future<dynamic> post(
      {required String endPoint, @required dynamic body}) async {
    // Map<String, String> headers = {};
    // if (token != null) {
    //   headers.addAll({'Authorization': 'Bearer $token'});
    // }
    try {
      // Make the POST request
      var response = await dio.post('$_baseUrl$endPoint', data: body);

      // Check if the status code is 200 (OK)
      if (response.statusCode == 200) {
        return response.data; // Return the response body
      } else {
        throw Exception(
            'there is a problem with status code ${response.statusCode} with body ${response.data}');
      }
    } catch (e) {
      throw Exception('Error making POST request: $e');
    }
  }

//   Future<List<dynamic>> get(
//       {required String url, @required String? token}) async {
//     Map<String, String> headers = {};

//     if (token != null) {
//       headers.addAll({'Authorization': 'Bearer $token'});
//     }
//     http.Response response = await http.get(Uri.parse(url), headers: headers);
//     if (response.statusCode == 200) {
//       return jsonDecode(response.body);
//     } else {
//       throw Exception(
//           'there is a problem with status code ${response.statusCode}');
//     }
//   }

//   Future<dynamic> put(
//       {required String url,
//       @required dynamic body,
//       @required String? token}) async {
//     Map<String, String> headers = {};
//     headers.addAll({'Content-Type': 'application/x-www-form-urlencoded'});
//     if (token != null) {
//       headers.addAll({'Authorization': 'Bearer $token'});
//     }
//     print('url = $url  body = $body  token =$token');
//     http.Response response =
//         await http.put(Uri.parse(url), body: body, headers: headers);
//     if (response.statusCode == 200) {
//       Map<String, dynamic> data = jsonDecode(response.body);
//       print(data);
//       return data;
//     } else {
//       throw Exception(
//           'there is a problem with status code ${response.statusCode} with body ${jsonDecode(response.body)}');
//     }
//   }
}
