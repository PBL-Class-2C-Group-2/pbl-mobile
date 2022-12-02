import 'dart:ui';

import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton(
      {Key? key}): super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30),
      width: double.infinity,
      height: 100,
      child: ElevatedButton(
        onPressed: (){},  
      child:Text('Masuk',
      style:TextStyle(
        color: Colors.black
      )),
      style: ElevatedButton.styleFrom(
        primary: Color.fromARGB(255, 220, 226, 255),
      ),
      ),
    );
  }
}
