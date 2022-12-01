import 'package:flutter/material.dart';

class SosialLogin extends StatelessWidget {
  const SosialLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 191, 255, 191),
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
          ),
        ],
      ),
    
    );
  }
}
