import 'package:flutter/material.dart';
import 'package:login_page/custom_text_field.dart';
import 'package:login_page/divider_with_text.dart';
import 'package:login_page/login_button.dart';
import 'package:login_page/social_login_buttons.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 80),
              const Icon(Icons.lock_outline, size: 100, color: Colors.blue),
              const SizedBox(height: 20),
              const Text(
                'Welcome to App',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                'Sign in to continue',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 40),
              const CustomTextField(
                labelText: 'Email',
                prefixIcon: Icons.email,
                obscureText: false,
              ),
              const SizedBox(height: 20),
              CustomTextField(
                labelText: 'Password',
                prefixIcon: Icons.lock,
                obscureText: !_isPasswordVisible,
                suffixIcon: IconButton(
                  icon: Icon(
                    _isPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: Colors.blue,
                  ),
                  onPressed: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                ),
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.blue, fontSize: 14),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              LoginButton(
                onPressed: () {},
                label: 'Login',
              ),
              const SizedBox(height: 20),
              const DividerWithText(text: 'OR'),
              const SizedBox(height: 20),
              SocialLoginButtons(),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t have an account? ',
                    style: TextStyle(color: Colors.grey),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
