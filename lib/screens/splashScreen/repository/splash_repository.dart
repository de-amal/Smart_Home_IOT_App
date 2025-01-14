import 'dart:convert';
import 'package:http/http.dart' as http;

import '../../../utils/constants.dart';
import '../models/login_response.dart';

class SplashRepository{

  Future<http.Response?> loginUser(String email, String password) async {
    final url = 'https://yourapiendpoint.com/login';  // Replace with your API URL

    try {
      // Prepare the headers for the POST request
      Map<String, String> headers = {
        "Content-Type": "application/json",  // This tells the server we're sending JSON data
      };

      // Prepare the body data
      Map<String, dynamic> body = {
        'email': email,
        'password': password,
      };

      // Convert the body data into JSON format
      String jsonData = json.encode(body);

      // Make the POST request
      final response = await http.post(
        Uri.parse(url),
        headers: headers,
        body: jsonData,  // Pass the JSON string as the body
      );

      // Check the response status code
      if (response.statusCode == 200) {
        // Parse the JSON response
        Map<String, dynamic> responseData = json.decode(response.body);

        // Return the parsed response as a LoginResponse object
        return response;
      } else {
        // Handle failure or errors
        print('Failed to login: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      print('Error: $e');
      return null;
    }
  }


}