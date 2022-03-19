import 'package:flutter/material.dart';
import 'package:phonebook/ui/pages/sign_up/sign_up.dart';
import 'package:phonebook/ui/wigets/buttoms/custom_buttom.dart';
import 'package:phonebook/ui/wigets/label_form/text_form.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000000),
      body: SafeArea(
        child: Center(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            children: [
              Container(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const SignUp(),
                      ),
                    );
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Image.asset('assets/images/lg_contact1.png'),
              const SizedBox(height: 38),
              const TextForm(
                fillColor: Color(0xFF1D3E53),
                obscureText: false,
                labelTextForm: 'Email',
                prefixIcon: Icon(
                  Icons.mail_outline_outlined,
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
                height: 50,
                nameTitle: 'LOGIN',
                onClick: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (_) => const SignUp(),
                  //   ),
                  // );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
