import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  final Widget icon;

  const ContactList({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
              color: Color(0xffC4C4C4),
              borderRadius: BorderRadius.all(
                Radius.circular(100),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                'assets/images/lg_user.png',
              ),
            ),
          ),
          const SizedBox(width: 17),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Alisson'),
              Text('+62 821 2113 3111'),
            ],
          ),
          const Spacer(),
          IconButton(
            icon: icon,
            // icon: Image.asset(
            //   'assets/images/lg_more.png',
            //   width: 22,
            //   height: 20,
            // ),
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => const DetailContact(),
              //   ),
              // );
            },
          ),
        ],
      ),
    );
  }
}
