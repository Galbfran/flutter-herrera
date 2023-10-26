import 'package:flutter/material.dart';
import 'package:flutter_application_2/presentacion/chat/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> message = [
    Message(text: "hola amor", fromWho: FromWho.me),
    Message(text: "Chau amor", fromWho: FromWho.me),
  ];

  Future<void> sendMessage() async {}
}
