import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:xoxgame/service/auth.dart';
import 'package:xoxgame/view/xox_view.dart';
import '../viewModel/game_store.dart';

class LoginRegisterPage extends StatefulWidget {
  const LoginRegisterPage({Key? key}) : super(key: key);

  @override
  State<LoginRegisterPage> createState() => _LoginRegisterPageState();
}

class _LoginRegisterPageState extends State<LoginRegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isLogin = true;

  String? errorMessage;

  Future<void> createUser() async {
    try {
      await Auth().createUser(
          email: emailController.text, password: passwordController.text
          );
      print("User created");
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Future<void> signIn() async {
    try {
      await Auth().signIn(
          email: emailController.text, password: passwordController.text);
      print("Signed in");
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => XOXView(gameStore: GameStore())));
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login/Register'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 8),
            errorMessage != null
                ? Text(errorMessage!)
                : const SizedBox.shrink(),
            ElevatedButton(
              onPressed: () {
                if (isLogin) {
                  signIn();
                } else {
                  createUser(); 
                }
              },
              child: Text(isLogin ? 'Login' : 'Register'),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isLogin = !isLogin;
                });
              },
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: Text(isLogin
                    ? "Haven't you got account yet? Click."
                    : "Already have an account? Click."),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
