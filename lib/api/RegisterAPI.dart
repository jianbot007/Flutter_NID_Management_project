import 'dart:convert';
import 'package:flutter_nid_management_project/Model/UserList.dart';
import 'package:http/http.dart' as http;

class RegisterAPI {
  Future<Map<String, dynamic>> signupUser(Map<String, dynamic> data) async {
    String url = "http://localhost/NidMS/registerApi.php";
     
    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(data),
      );

      if (response.statusCode == 200) {
        var responseData = jsonDecode(response.body);
        return {"success": true, "message": responseData['message']};
      } else {
        return {"success": false, "message": "Signup failed. Server error: ${response.statusCode}"};
      }
    } catch (e) {
      return {"success": false, "message": "Error: $e"};
    }
  }




  //API for userlist

   Future<List<User>> fetchUserData() async {
    String url = "http://localhost/NidMS/getUser.php"; // Your API endpoint to fetch user data
    List<User> users = [];

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);

        // Assuming the data is a list of users, and each user can be converted into a User object
        for (var userJson in data) {
          users.add(User.fromJson(userJson));
        }
      } else {
        print("Error: Unable to fetch data. Status code: ${response.statusCode}");
      }
    } catch (e) {
      print("Error: $e");
    }

    return users;  // Return the list of users
  }
}
