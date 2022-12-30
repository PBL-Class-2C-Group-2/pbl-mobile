  // Future doLogin() async {
  //   if (emailController.text.isEmpty || passwordController.text.isEmpty) {
  //     Alert(
  //             context: context,
  //             title: "Data yang dimasukkan tidak boleh kosong",
  //             type: AlertType.error)
  //         .show();
  //     return;
  //   }
  //   ProgressDialog progressDialog = ProgressDialog(context);
  //   progressDialog.style(message: "Loading ...");
  //   progressDialog.show();

  //   final response = await http.post(
  //       Uri.parse('http://127.0.0.1:8000/api/users'),
  //       headers: {'Content-Type': 'application/json;'},
  //       body: jsonEncode({"email" : emailController.text,
  //       "password" :passwordController.text, 
  // }));
  //   progressDialog.hide();
  //   if (response.statusCode == 200) {
  //     Alert(context: context, title: "Login Berhasil", type: AlertType.success)
  //         .show();
  //   } else {
  //     Alert(context: context, title: "Login Gagal", type: AlertType.error)
  //         .show();
  //   }
  // }