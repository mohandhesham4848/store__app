import 'package:flutter/material.dart';
import 'package:store__app/features/auth/presentation/widgets/remember_me.dart';
import 'package:store__app/features/home/presentation/home_screen.dart';
import 'package:store__app/core/widgets/elevated_button.dart';
import 'package:store__app/core/widgets/outlined_button.dart';
import 'package:store__app/core/widgets/textfield_button.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 150),
              const Text(
                'Shop Smarter',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Log in to Access Exclusive Deals and Simplify Your Shopping Experience',
                style: TextStyle(
                  color: Color(0xff939393),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 24),
              const CustomTextField(
                hintText: 'Email',
                prefixIcon: Icon(Icons.email),
              ),
              const SizedBox(height: 16),
              const CustomTextField(
                hintText: 'Password',
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.remove_red_eye),
              ),
              const SizedBox(height: 16),
              const RememberMe(),
              const SizedBox(height: 64),
              CustomElvatedButton(
                title: 'Sign In',
                onTap: () {
                  
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()),
                  );
                },
              ),
              const SizedBox(height: 8),
              CustomOutlinedButton(
                title: 'Create Account',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
