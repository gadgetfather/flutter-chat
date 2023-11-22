import 'package:chat/components/my_button.dart';
import 'package:chat/components/my_text_field.dart';
import 'package:chat/services/auth/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
//text controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signIn() {
    print('hello');
//get auth method with provider
    final authService = Provider.of<AuthService>(context, listen: false);

    try {
      authService.signInWithEmailAndPassword(
          emailController.text, passwordController.text);
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
    }
    // widget.onTap!(
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
                      signIn();
                    },
                    text: "Sign In")

                //not member register
                ,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Not a member?"),
                    TextButton(
                        onPressed: () {
                          print('hello');
                          widget.onTap!();
                        },
                        child: const Text("Register"))
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
