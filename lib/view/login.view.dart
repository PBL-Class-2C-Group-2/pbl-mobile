import 'package:flutter/material.dart';
import 'package:mobile_pbl/view/navbar.dart';
import 'widgets/text.form.global.dart';
import 'package:mobile_pbl/view/home.view.dart';

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
                Center(
                  child: Image.asset(
                    './assets/tambong.jpg',
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

                //Masuk
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  width: double.infinity,
                  height: 80,
                  child: ElevatedButton(
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomeView())),
                    child: Text(
                      'Masuk',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 220, 255, 229),
                    ),
                  ),
                ),

                Center(
                  child: Text('atau'),
                ),

                SizedBox(height: 20),

                //Google
                ElevatedButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        './assets/logo/google.png',
                        height: 30,
                        width: 30,
                      ),
                      SizedBox(width: 35),
                      Text('Masuk dengan Google'),
                      SizedBox(width: 40),
                    ],
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20.0),
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    side: BorderSide(
                      color: Colors.black12,
                    ),
                    shape: StadiumBorder(),
                  ),
                ),
                SizedBox(height: 20),

                //Facebook
                ElevatedButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        './assets/logo/facebook.png',
                        height: 30,
                        width: 25,
                      ),
                      SizedBox(width: 30),
                      Text('Masuk dengan Facebook'),
                      SizedBox(width: 30),
                    ],
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20.0),
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    side: BorderSide(
                      color: Colors.black12,
                    ),
                    shape: StadiumBorder(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
