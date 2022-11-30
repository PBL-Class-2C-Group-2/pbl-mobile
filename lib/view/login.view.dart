import 'package:flutter/material.dart';
import 'package:mobile_pbl/view/widgets/text.form.global.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            alignment: Alignment.center,
            color: Colors.white,
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  './assets/tambong.png',
                  alignment: Alignment.center,
                  height: 270,
                  width: 270,
                ),
                //Email form
                Text("Email"),
                const SizedBox(height: 5),
                TextFormGlobal(
                  controller: emailController,
                  textInputType: TextInputType.emailAddress,
                  obscure: false,
                ),
                //Password Form
                const SizedBox(height: 10),
                Text("Password"),
                const SizedBox(height: 5),
                TextFormGlobal(
                    controller: passwordController,
                    textInputType: TextInputType.text,
                    obscure: true)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
