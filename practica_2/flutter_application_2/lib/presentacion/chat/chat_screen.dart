import "package:flutter/material.dart";
import "package:flutter_application_2/presentacion/chat/widgets/her_message_bubble.dart";
import "package:flutter_application_2/presentacion/chat/widgets/message_field_box.dart";
import "package:flutter_application_2/presentacion/chat/widgets/my_message_bubble.dart";

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ChatApp"),
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://lh3.googleusercontent.com/ogw/AKPQZvxZhBdkrYMzDWNYqiT-8fjR1FTZYAiV9HSi5Box=s64-c-mo"),
          ),
        ),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          // ignore: unnecessary_const
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) => index % 2 == 0
                  ? const HerMessageBubble()
                  : const MyMessageBubble(),
            )),
            //caja de texto
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
