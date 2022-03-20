// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:phonebook/ui/pages/home/home.dart';

class DetailContact extends StatelessWidget {
  const DetailContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pop(true);
        return true;
      },
      child: Scaffold(
        backgroundColor: const Color(0xffDCDCDC),
        body: SafeArea(
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: [
              FlatButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Home(),
                    ),
                  );
                },
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/lg_back.png',
                      width: 21,
                      height: 18,
                    ),
                    const SizedBox(width: 17),
                    const Text(
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
              const SizedBox(height: 32),
              Image.asset(
                'assets/images/lg_detailprofile.png',
                width: 161,
                height: 161,
              ),
              const SizedBox(height: 22),
              Column(
                children: [
                  const Text(
                    'Michael Ballack',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      color: Color(0xff000000),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 48),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.phone),
                            SizedBox(width: 22),
                            Text(
                              '+62 812 2113 4111',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Color(0xff000000),
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 26),
                        Row(
                          children: const [
                            Icon(Icons.house_outlined),
                            SizedBox(width: 22),
                            Text(
                              'Refactory',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Color(0xff000000),
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        Row(
                          children: const [
                            Icon(Icons.badge_outlined),
                            SizedBox(width: 22),
                            Text(
                              'Engineer',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Color(0xff000000),
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 21),
                        Row(
                          children: const [
                            Icon(Icons.mail_outline),
                            SizedBox(width: 22),
                            Text(
                              'hahay@gmail.com',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Color(0xff000000),
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // ignore: avoid_unnecessary_containers
                  // Column(
                  //   crossAxisAlignment: CrossAxisAlignment.end,
                  //   children: [
                  //     Row(
                  //       children: const [
                  //         Icon(Icons.phone),
                  //         SizedBox(width: 22),
                  //         Text(
                  //           '+62 812 2113 4111',
                  //           style: TextStyle(
                  //             fontFamily: 'Roboto',
                  //             color: Color(0xff000000),
                  //             fontSize: 18,
                  //             fontWeight: FontWeight.w400,
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //     const SizedBox(height: 26),
                  //     Row(
                  //       children: const [
                  //         Icon(Icons.house_outlined),
                  //         SizedBox(width: 22),
                  //         Text(
                  //           'Refactory',
                  //           style: TextStyle(
                  //             fontFamily: 'Roboto',
                  //             color: Color(0xff000000),
                  //             fontSize: 18,
                  //             fontWeight: FontWeight.w400,
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
