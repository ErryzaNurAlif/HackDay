import 'package:flutter/material.dart';
import 'package:phonebook/ui/wigets/contact/contact_list.dart';
import 'package:phonebook/ui/wigets/label_form/text_form.dart';

class Favorites extends StatelessWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDCDCDC),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26.5),
          child: Column(
            children: [
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // ignore: avoid_unnecessary_containers
                  Container(
                    child: const Text(
                      'Favorites',
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 19),
              const TextForm(
                obscureText: false,
                labelTextForm: 'Search contact',
                prefixIcon: Icon(Icons.search),
                fillColor: Color(0xFFBEBEBE),
                style: TextStyle(color: Colors.black),
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 18),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'A',
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 10),
                  ContactList(
                    icon: Icon(Icons.star),
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
