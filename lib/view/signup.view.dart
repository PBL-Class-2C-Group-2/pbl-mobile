import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mobile_pbl/view/login.view.dart';
import 'package:mobile_pbl/view/navbar.dart';
import 'package:mobile_pbl/view/signup.view.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'widgets/text.form.global.dart';
import 'package:mobile_pbl/view/home.view.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final TextEditingController namaLengakapController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nomerHpController = TextEditingController();

  Future doSignUp() async {
    if (namaLengakapController.text.isEmpty ||
        emailController.text.isEmpty ||
        passwordController.text.isEmpty ||
        nomerHpController.text.isEmpty) {
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
              "nama_lengkap": namaLengakapController.text,
              "email": emailController.text,
              "password": passwordController.text,
              "no_hp": nomerHpController.text,
            }));
    progressDialog.hide();
    if (response.statusCode == 200) {
      Alert(
              context: context,
              title: "Register Berhasil",
              type: AlertType.success)
          .show();
    } else {
      Alert(context: context, title: "Register Gagal", type: AlertType.error)
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
              Text("Nama Lengkap"),
              const SizedBox(height: 5),
              TextFormGlobal(
                controller: namaLengakapController,
                textInputType: TextInputType.text,
                obscure: false,
              ),
              //           //Password Form
              const SizedBox(height: 10),
              Text("Email"),
              const SizedBox(height: 5),
              TextFormGlobal(
                controller: emailController,
                textInputType: TextInputType.emailAddress,
                obscure: false,
              ),
              const SizedBox(height: 10),
              Text("Nomer HP"),
              const SizedBox(height: 5),
              TextFormGlobal(
                controller: nomerHpController,
                textInputType: TextInputType.text,
                obscure: false,
              ),
              const SizedBox(height: 10),
              Text("Password"),
              const SizedBox(height: 5),
              TextFormGlobal(
                controller: passwordController,
                textInputType: TextInputType.text,
                obscure: true,
              ),

              //Daftar
              Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                width: double.infinity,
                height: 80,
                child: ElevatedButton(
                  onPressed: () {
                    doSignUp();
                  },
                  child: Text(
                    'Daftar',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 220, 255, 229),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Sudah Punya Akun? '),
                  GestureDetector(
                    child: Text(
                      'Masuk',
                      style: TextStyle(
                        color: Color.fromARGB(255, 196, 12, 12),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    onTap: () => {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => LoginView()))
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
