import 'package:http/http.dart' as http;
import 'dart:convert';

Future<String> check({
  required String email,
  required String otp,
}) async {
  final url = 'https://albakr-ac.com/api/check/otp?email=$email&otp=$otp';

  final response = await http.get(
    Uri.parse(url),
    headers: {
      'Content-Type': 'application/json',
    },
  );
  final data = json.decode(response.body);

  try {
    if (response.statusCode == 200) {
      return data['message'];
    } else if (response.statusCode == 401) {
      // Handle 401 Unauthorized separately
      return data['message'];
    } else {
      return data['message'];
    }
  } catch (e) {
    print('Error $e');
    return data['message'];
  }
}
