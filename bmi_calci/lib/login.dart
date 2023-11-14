import 'package:flutter/material.dart';
import 'calculating.dart';
import 'signup.dart';
// import 'package:newapp/imageda.dart';
// import 'package:newapp/singup.dart';
import 'auth.dart';

class Log_in extends StatefulWidget {
  @override
  State<Log_in> createState() => _Log_inState();
}

class _Log_inState extends State<Log_in> {
  bool is_visibility = false;
  bool is_visibility2 = false;
  String _name = "";
  TextEditingController _usernamee = TextEditingController();
  TextEditingController _passwordd = TextEditingController();
  TextEditingController _email = TextEditingController();
  final formkey = GlobalKey<FormState>();
  void dispose() {
    _email.dispose();
    _usernamee.dispose();
    _passwordd.dispose();
    super.dispose();
  }

  void showErrorMessage(BuildContext context, String message) {
    // Show an error dialog, snackbar, or any widget to display the message
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Error'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  Future<void> settings(BuildContext ctxxxxx) async {
    Navigator.of(ctxxxxx).push(
      MaterialPageRoute(
        builder: (_) {
          return Calculator();
        },
      ),
    );
  }

  newsr(BuildContext ctxxxxx) {
    Navigator.of(ctxxxxx).push(
      MaterialPageRoute(
        builder: (_) {
          return Sign_up();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [const Color.fromARGB(255, 25, 116, 190), Colors.white],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
                key: formkey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _email,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "enter the Email";
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.email_rounded),
                        contentPadding: EdgeInsets.all(15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(4),
                              right: Radius.circular(4)),
                        ),
                        hintText: "Email",
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    TextFormField(
                      controller: _passwordd,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password invalid";
                        } else {
                          return null;
                        }
                      },
                      obscureText: !is_visibility2,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password_outlined),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              is_visibility2 = !is_visibility2;
                            });
                          },
                          icon: is_visibility2
                              ? Icon(
                                  Icons.visibility,
                                  color: Colors.blue,
                                )
                              : Icon(
                                  Icons.visibility_off,
                                  color: Colors.black,
                                ),
                        ),
                        contentPadding: EdgeInsets.all(15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(4),
                              right: Radius.circular(4)),
                        ),
                        hintText: "Password",
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          String email = _email.text.toString();
                          String password = _passwordd.text.toString();
                          if (formkey.currentState!.validate() &&
                              login(email, password)) {
                            settings(context);
                          } else {
                            showErrorMessage(context, "Account not found");
                          }
                        },
                        child: Text("Login")),
                    SizedBox(
                      height: 50,
                    ),
                    Text("Dont have an account??"),
                    SizedBox(
                      height: 10,
                    ),
                    TextButton(
                        onPressed: () => newsr(context), child: Text("SignUp")),
                  ],
                )),
          ),
        ),
      ),
    ));
  }
}
