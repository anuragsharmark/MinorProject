import 'package:flutter/material.dart';

import 'BottomNavBar.dart';

void main() {
  runApp(const Login());
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  String name = "";
  bool isLoginPage = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: 'Myfont',
      ),
      home: Material(
        color: Color.fromRGBO(252, 238, 237, 1),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                !isLoginPage
                    ? 'assets/images/login_image.png'
                    : 'assets/images/signup.png',
                fit: BoxFit.contain,
                height: !isLoginPage ? 240 : 340,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Welcome $name !!",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    if (!isLoginPage)
                      TextFormField(
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                        onSaved: (newValue) {},
                        decoration: InputDecoration(
                          labelText: "Name",
                          hintText: 'Enter your name',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Name can't be empty";
                          } else {
                            return null;
                          }
                        },
                      ),
                    TextFormField(
                      onSaved: (newValue) {},
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Email Address",
                        hintText: 'Enter your email address',
                      ),
                      validator: (value) {
                        if (value!.isEmpty && !value.contains('@')) {
                          return "Fill proper email address";
                        } else {
                          return null;
                        }
                      },
                    ),
                    TextFormField(
                      onSaved: (newValue) {},
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        hintText: 'Enter your password',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password can't be empty";
                        } else if (value.length < 6) {
                          return "Password must be atleast 6 digit long";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: TextButton.styleFrom(
                    minimumSize: Size(100, 40),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BottomNavBar()));
                  },
                  child: isLoginPage
                      ? Text(
                          "Login",
                        )
                      : Text('Sign Up')),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 32),
                child: Container(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          isLoginPage = !isLoginPage;
                        });
                      },
                      child: !isLoginPage
                          ? Text('Already a Member?')
                          : Text('Not a Member?')),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
