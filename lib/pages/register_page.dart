import 'package:chat/components/my_button.dart';
import 'package:chat/components/my_text_field.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //text controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void signUp() {
    widget.onTap!();
  }

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
                const SizedBox(
                  height: 30,
                ),
                //Logo
                const Center(
                  child: Icon(
                    Icons.chat,
                    size: 100,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                //welcome text
                const Text(
                  'Register to Chat',
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

                //confirm password textfield
                MyTextField(
                  controller: confirmPasswordController,
                  hintText: "Confirm Password",
                  obscureText: true,
                ),
                SizedBox(
                  height: 30,
                ),
                //sign up
                MyButton(
                    onTap: () {
                      signUp();
                    },
                    text: "Sign Up")

                //not member register
                ,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already a member?"),
                    TextButton(
                        onPressed: () {
                          print('hello');
                          widget.onTap!();
                        },
                        child: const Text("Login now"))
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
