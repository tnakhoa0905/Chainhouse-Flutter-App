import 'package:chainhouse_flutter_app/widgets/chat_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<StatefulWidget> createState() => _ChatScreen();
}

class _ChatScreen extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(0, 11, 0, 11),
          child: const Text(
            'Chats',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          ),
        ),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
                border: Border(
              top: BorderSide(width: 1, color: Colors.black),
            )),
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 8,
                itemBuilder: ((context, index) => ChatItem())),
          ),
        )
      ],
    );
  }
}
