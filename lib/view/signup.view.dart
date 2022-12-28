import 'package:flutter/material.dart';
import 'package:mobile_pbl/view/login.view.dart';
import 'package:mobile_pbl/view/widgets/text.form.global.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final TextEditingController namaLengakapController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nomerHpController = TextEditingController();

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
                Text("Nama Lengkap"),
                SizedBox(height: 10),
                TextFormGlobal(
                  controller: namaLengakapController,
                  textInputType: TextInputType.emailAddress,
                  obscure: false,
                ),
                SizedBox(height: 10),
                Text("E-mail"),
                const SizedBox(height: 5),
                TextFormGlobal(
                  controller: emailController,
                  textInputType: TextInputType.emailAddress,
                  obscure: false,
                ),
                SizedBox(height: 10),
                Text("Nomer HP"),
                const SizedBox(height: 5),
                TextFormGlobal(
                  controller: nomerHpController,
                  textInputType: TextInputType.phone,
                  obscure: false,
                ),
                SizedBox(height: 10),
                Text("Password"),
                const SizedBox(height: 5),
                TextFormGlobal(
                  controller: passwordController,
                  textInputType: TextInputType.text,
                  obscure: true,
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  width: double.infinity,
                  height: 80,
                  child: ElevatedButton(
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => MyLoginView())),
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
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Sudah Mempunyai Akun?  "),
                      GestureDetector(
                        child: Text(
                          "Masuk",
                          style: TextStyle(
                            color: Color.fromARGB(255, 196, 12, 12),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        onTap: () {
                          // Write Tap Code Here.
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => MyLoginView()));
                        },
                      ),
                    ],
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
