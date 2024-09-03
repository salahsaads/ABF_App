import 'dart:developer';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<String> sendDataToApi({
  required String f_name,
  required String l_name,
  required String phone,
  required String password,
  required String confirm_password,
  required String email,
  required String otp,
}) async {
  String apiUrl = "https://albakr-ac.com/api/complete/register";

  Map<String, dynamic> data = {
    'f_name': f_name,
    'l_name': l_name,
    'phone': phone,
    'password': password,
    'password_confirmation': confirm_password,
    "email": email,
    "otp": otp,
  };

  try {
    final response = await http.post(
      Uri.parse(apiUrl),
      body: jsonEncode(data),
      headers: <String, String>{
        "Content-Type": "application/json",
      },
    );

    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body);
      log('Request successful: ${jsonResponse['message']}');
      return jsonResponse['message'];
    } else if (response.statusCode == 422) {
      log('422 Unprocessable Entity: Validation failed.');
      log('Response body: ${response.body}'); // Log the full response for details
      return "Error: 422 Unprocessable Entity - ${response.body}";
    } else {
      log('Request failed with status: ${response.statusCode} - ${response.body}');
      return "Error: ${response.statusCode} - ${response.body}";
    }
  } catch (e) {
    log('Error occurred during the request: $e');
    return "Error occurred: $e";
  }
}
