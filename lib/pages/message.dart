
import 'package:flutter/material.dart';


class MessagingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messages'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Card(
            child: ListTile(
              title: Text('Dr. Zim Akhter'),
              subtitle: Text('Can you tell me more about your symptoms?'),
              trailing: Icon(Icons.message),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Dr. Shahin Alam'),
              subtitle: Text('I recommend booking a follow-up next week.'),
              trailing: Icon(Icons.message),
            ),
          ),
        ],
      ),
    );
  }
}
