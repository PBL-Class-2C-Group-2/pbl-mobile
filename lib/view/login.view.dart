import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mobile_pbl/view/navbar.dart';
import 'package:mobile_pbl/view/signup.view.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'widgets/text.form.global.dart';
import 'package:mobile_pbl/view/home.view.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future doLogin() async {
    if (emailController.text.isEmpty || passwordController.text.isEmpty) {
      Alert(
              context: context,
              title: "Data yang dimasukkan tidak boleh kosong",
              type: AlertType.error)
          .show();
      return;
    }
    ProgressDialog progressDialog = ProgressDialog(context);
    progressDialog.style(message: "Loading ...");
    progressDialog.show();

    final response =
        await http.post(Uri.parse('http://127.0.0.1:8000/api/users'),
            headers: {'Content-Type': 'application/json'},
            body: jsonEncode({
              "email": emailController.text,
              "password": passwordController.text,
            }));
    progressDialog.hide();
    print(response.body);
    if (response.statusCode == 200) {
      Alert(context: context, title: "Login Berhasil", type: AlertType.success)
          .show();
      Navigator.push(
          context, MaterialPageRoute(builder: ((context) => HomeView())));
    } else {
      Alert(context: context, title: "Login Gagal", type: AlertType.error)
          .show();
    }
  }

  @override
  Widget build(BuildContext contex) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.all(10.0),
          primary: true,
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
              //           //Password Form
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
                  onPressed: () {
                    doLogin();
                  },
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
              SizedBox(height: 10),
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
              SizedBox(height: 10),
              Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Belum Punya Akun? '),
                  GestureDetector(
                    child: Text(
                      'Daftar',
                      style: TextStyle(
                        color: Color.fromARGB(255, 196, 12, 12),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    onTap: () => {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => SignUpView()))
                    },
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
