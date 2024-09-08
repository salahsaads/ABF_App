import 'dart:convert';
import 'package:http/http.dart' as http;

class ResetPswApi {
  Future<String> resetPassword(
      {required String email,
      required String password,
      required String otp,
      required String password_confirmation}) async {
    String apiUrl = "https://albakr-ac.com/api/resetPassword";
    Map<String, dynamic> data = {
      "email": email,
      'password': password,
      'password_confirmation': password_confirmation,
      'otp': otp
    };
    final response = await http.post(
      Uri.parse(apiUrl),
      body: jsonEncode(data),
      headers: <String, String>{
        "Content-Type": "application/json",
      },
    );
    var jsonResponse = json.decode(response.body);
    return jsonResponse['message'];
  }
}
