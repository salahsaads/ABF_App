import 'dart:developer';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<String> LoginApi({
  required String password,
  required String email,
}) async {
  String apiUrl = "https://albakr-ac.com/api/login";

  Map<String, dynamic> data = {
    'password': password,
    "email": email,
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
