import 'package:flutter/material.dart';
import 'package:mobile_pbl/view/widgets/login.button.dart';
import 'package:mobile_pbl/view/widgets/social.button.dart';
import 'widgets/text.form.global.dart';

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
            color: Colors.white,
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset('./assets/tambong.jpg',
                width: 250,
                ),
                ),

                //Email form
                Text("E-mail"),
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
                  obscure: true,
                ),
                LoginButton(),
                Center(
                  child: 
                Text('Atau'),
                ),
                SosialLogin(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

