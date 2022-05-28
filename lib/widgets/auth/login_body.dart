import 'package:flutter/material.dart';

import '../../screens/home/home_screen.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:
              const Text('Log in', style: TextStyle(fontFamily: 'Spinnaker')),
          backgroundColor: const Color(0xFF889452)),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top: 40, left: 15.0, right: 15.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  cursorColor: const Color(0xFF889452),
                  style: const TextStyle(
                    color: Color(0xFF889452),
                  ),
                  controller: _emailController,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide: BorderSide(color: Color(0xFF889452))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide: BorderSide(color: Color(0xFF889452))),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide: BorderSide(color: Color(0xFF889452))),
                    label: Text('Email',
                        style: TextStyle(
                            color: Color(0xFF889452), fontFamily: 'Spinnaker')),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Mandatory';
                    }

                    // if (value.isEmail()) {
                    //   return 'Enter a valid email';
                    // }
                    return null;
                  },
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                TextFormField(
                  cursorColor: const Color(0xFF889452),
                  style: const TextStyle(
                    color: Color(0xFF889452),
                  ),
                  controller: _passwordController,
                  textInputAction: TextInputAction.go,
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide: BorderSide(color: Color(0xFF889452))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide: BorderSide(color: Color(0xFF889452))),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide: BorderSide(color: Color(0xFF889452))),
                    label: Text('Password',
                        style: TextStyle(
                            color: Color(0xFF889452), fontFamily: 'Spinnaker')),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Mandatory';
                    }

                    // if (value.isPassword()) {
                    //   return '';
                    // }
                    return null;
                  },
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                SizedBox(
                  height: 52,
                  width: 167,
                  child: ElevatedButton(
                    onPressed: () => Navigator.of(context)
                        .pushNamed(HomeScreen.routeName),
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF889452),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    child: const Text(
                      'LOG IN',
                      style: TextStyle(
                          fontFamily: 'Spinnaker',
                          fontSize: 14,
                          color: Colors.white),
                    ),
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
