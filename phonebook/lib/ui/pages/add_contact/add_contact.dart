// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:phonebook/ui/wigets/buttoms/custom_buttom.dart';
import 'package:phonebook/ui/wigets/label_form/text_form.dart';

class AddContact extends StatelessWidget {
  const AddContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffDCDCDC),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/lg_back.png',
                      width: 21,
                      height: 18,
                    ),
                    SizedBox(width: 17),
                    Text(
                      'Back',
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 36),
              Image.asset(
                'assets/images/lg_adduser.png',
                width: 184,
                height: 160,
              ),
              const SizedBox(height: 48),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    TextForm(
                      fillColor: Color(0xffC4C4C4),
                      obscureText: false,
                      labelTextForm: 'Name',
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color(0xff000000),
                      ),
                      style: TextStyle(
                        color: Color(0xff353434),
                      ),
                      labelStyle: TextStyle(
                        color: Color(0xff353434),
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2.44,
                          child: TextForm(
                            keyboardType: TextInputType.number,
                            fillColor: Color(0xffC4C4C4),
                            obscureText: false,
                            labelTextForm: 'Phone',
                            prefixIcon: Icon(
                              Icons.phone,
                              color: Color(0xff000000),
                            ),
                            style: TextStyle(
                              color: Color(0xff353434),
                            ),
                            labelStyle: TextStyle(
                              color: Color(0xff353434),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: MediaQuery.of(context).size.width / 2.44,
                          child: TextForm(
                            fillColor: Color(0xffC4C4C4),
                            obscureText: false,
                            labelTextForm: 'Email',
                            prefixIcon: Icon(
                              Icons.mail_outline_outlined,
                              color: Color(0xff000000),
                            ),
                            style: TextStyle(
                              color: Color(0xff353434),
                            ),
                            labelStyle: TextStyle(
                              color: Color(0xff353434),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2.44,
                          child: TextForm(
                            fillColor: Color(0xffC4C4C4),
                            obscureText: false,
                            labelTextForm: 'Company',
                            prefixIcon: Icon(
                              Icons.house_rounded,
                              color: Color(0xff000000),
                            ),
                            style: TextStyle(
                              color: Color(0xff353434),
                            ),
                            labelStyle: TextStyle(
                              color: Color(0xff353434),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: MediaQuery.of(context).size.width / 2.44,
                          child: TextForm(
                            fillColor: Color(0xffC4C4C4),
                            obscureText: false,
                            labelTextForm: 'Job',
                            prefixIcon: Icon(
                              Icons.folder_outlined,
                              color: Color(0xff000000),
                            ),
                            style: TextStyle(
                              color: Color(0xff353434),
                            ),
                            labelStyle: TextStyle(
                              color: Color(0xff353434),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 36),
              CustomButtom(
                width: 330,
                height: 50,
                nameTitle: 'CREATE NEW ACCOUNT',
                onClick: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (_) => const ButtomNavi(),
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
