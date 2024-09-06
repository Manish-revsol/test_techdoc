import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CreateUserPage extends StatefulWidget {
  @override
  _CreateUserPageState createState() => _CreateUserPageState();
}

class _CreateUserPageState extends State<CreateUserPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  Future<void> createUser() async {
    var url = Uri.parse('http://localhost/flutter_crud/create_user.php');
    var response = await http.post(url, body: {
      'name': nameController.text,
      'email': emailController.text,
      'mobile': mobileController.text,
      'address': addressController.text,
    });
    if (response.statusCode == 200) {
      var jsonResponse = response.body;
      print(jsonResponse);
      Navigator.pop(context, true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create User'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: mobileController,
              decoration: InputDecoration(labelText: 'Mobile'),
            ),
            TextField(
              controller: addressController,
              decoration: InputDecoration(labelText: 'Address'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: createUser,
              child: Text('Create User'),
            ),
          ],
        ),
      ),
    );
  }
}
