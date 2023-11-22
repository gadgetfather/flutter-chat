import 'package:chat/components/my_button.dart';
import 'package:chat/components/my_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
//text controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        // appBar: AppBar(
        //   title: const Text('Login'),
        //   titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
        //   backgroundColor: Colors.deepPurple,
        // ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                //Logo
                Center(
                  child: Icon(
                    Icons.chat,
                    size: 100,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                //welcome text
                Text(
                  'Welcome to Chat',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                //Email textfield
                MyTextField(controller: emailController, hintText: "Email"),
                const SizedBox(
                  height: 30,
                ),

                //password textfield
                MyTextField(
                  controller: passwordController,
                  hintText: "Password",
                  obscureText: true,
                ),
                const SizedBox(
                  height: 30,
                ),
                //sign in
                MyButton(
                    onTap: () {
                      print('hello');
                    },
                    text: "Sign In")

                //not member register
                ,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Not a member?"),
                    TextButton(
                        onPressed: () {
                          print('hello');
                        },
                        child: Text("Register"))
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
