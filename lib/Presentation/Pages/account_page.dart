import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {

  const AccountPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: const Center(child: Text('Account',style: TextStyle(color: Colors.red),)),
    );
  }
}
