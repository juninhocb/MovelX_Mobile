import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GuestHomePage extends StatefulWidget {
  const GuestHomePage({Key? key}) : super(key: key);

  @override
  State<GuestHomePage> createState() => _HomePageState();
}


class _HomePageState extends State<GuestHomePage> {

  @override
  void dispose() {
    print('GuestHomePage disposed!');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Text("teste"),),
    );
  }
}


