import 'package:flutter/material.dart';
import 'package:phonebook/ui/pages/sign_in/sign_in.dart';
import 'package:phonebook/ui/wigets/buttoms/custom_buttom.dart';
import 'package:phonebook/ui/wigets/label_form/text_form.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF05466A),
      body: SafeArea(
        child: Center(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const SignIn(),
                      ),
                    );
                  },
                  child: const Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 57),
              Image.asset('assets/images/lg_contact2.png'),
              const SizedBox(height: 30),
              const TextForm(
                fillColor: Color(0xFF1D3E53),
                obscureText: false,
                labelTextForm: 'Name',
                prefixIcon: Icon(
                  Icons.person_outline_rounded,
                  color: Color(0xFFB6AFAF),
                ),
                style: TextStyle(
                  color: Color(0xFFB6AFAF),
                ),
                labelStyle: TextStyle(
                  color: Color(0xFFB6AFAF),
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 12),
              const TextForm(
                fillColor: Color(0xFF1D3E53),
                obscureText: false,
                labelTextForm: 'Email',
                prefixIcon: Icon(
                  Icons.mail_outline_sharp,
                  color: Color(0xFFB6AFAF),
                ),
                style: TextStyle(
                  color: Color(0xFFB6AFAF),
                ),
                labelStyle: TextStyle(
                  color: Color(0xFFB6AFAF),
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 12),
              const TextForm(
                fillColor: Color(0xFF1D3E53),
                obscureText: true,
                labelTextForm: 'Password',
                prefixIcon: Icon(
                  Icons.lock_outline_rounded,
                  color: Color(0xFFB6AFAF),
                ),
                style: TextStyle(
                  color: Color(0xFFB6AFAF),
                ),
                labelStyle: TextStyle(
                  color: Color(0xFFB6AFAF),
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 27),
              CustomButtom(
                width: 307,
                height: 44,
                nameTitle: 'REGISTER',
                onClick: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const SignIn(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
