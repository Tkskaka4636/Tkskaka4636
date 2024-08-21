import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reminder2/view/homeview.dart';
import 'package:reminder2/view/signupview.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.green[200],
                  child: Text(
                    'R',
                    style: TextStyle(fontSize: 50, color: Colors.grey[800]),
                  ),
                ),
                SizedBox(height: 50),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email/ Mobile',
                  ),
                ),
                SizedBox(height: 20),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    suffixIcon: Icon(Icons.visibility),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (value) {}),
                    Text('Remember me'),
                  ],
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Get.to(HomeView());
                  },
                  child: Text('LOGIN'),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('FORGOT PASSWORD?'),
                ),
                TextButton(
                  onPressed: () {
                    Get.to(SignUpView());
                  },
                  child: Text('SIGN UP'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}