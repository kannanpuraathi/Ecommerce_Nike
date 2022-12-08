import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {

  const NotificationPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: const Center(child: Text('Notification',style: TextStyle(color: Colors.red),)),
    );
  }
}
