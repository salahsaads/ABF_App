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

  try {
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data['message'];
    } else if (response.statusCode == 401) {
      // Handle 401 Unauthorized separately
      throw Exception('Unauthorized: Please check your token or log in again.');
    } else {
      throw Exception('Failed: ${response.statusCode}');
    }
  } catch (e) {
    print('Error $e');
    throw Exception('Error  $e');
  }
}
