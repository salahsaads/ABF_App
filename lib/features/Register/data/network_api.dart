import 'package:abf_app/core/Api_Url/Api.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class ApiSignUp {
  Future<String> signUp({
    required String email,
    // Add other required fields here, like password, username, etc.
  }) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    String apiUrl =
        Endpointapi().SingUpEndPoint; // Ensure the endpoint is correct.

    Map<String, dynamic> dataUser = {
      "email": email, // Ensure the field name matches what the API expects.
      // Add other fields if required by the API.
    };

    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        body: jsonEncode(dataUser),
        headers: <String, String>{
          "Content-Type": "application/json",
        },
      );

      if (response.statusCode == 200) {
        var jsonResponse = json.decode(response.body);

        prefs.setBool('user', true);
        print('done');
        return 'User SignUp';
      } else {
        // Print the response body to understand the error better.
        print('Failed to sign up: ${response.statusCode}');
        print('Response body: ${response.body}');
        return 'Failed to sign up: ${response.statusCode}';
      }
    } catch (e) {
      print('Error occurred: $e');
      return 'Error occurred: $e';
    }
  }
}
