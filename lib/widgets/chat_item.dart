import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 16, 16, 20),
      height: 100,
      decoration: const BoxDecoration(
          border: Border(
              top: BorderSide(width: 0.5, color: Colors.black),
              bottom: BorderSide(width: 0.5, color: Colors.black))),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 32,
            backgroundImage: AssetImage('assets/images/home_avt.png'),
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'James',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
              ),
              Text('Thank you! That was very helpful!',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400)),
            ],
          )
        ],
      ),
    );
  }
}
