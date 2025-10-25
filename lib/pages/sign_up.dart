import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("Реєстрація"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsetsGeometry.all(12),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Ім'я"
                )
              ),
            ),
            Padding(padding: EdgeInsetsGeometry.all(12),
              child: TextField(
                  decoration: InputDecoration(
                      labelText: "Email"
                  )
              ),
            ),
            Padding(padding: EdgeInsetsGeometry.all(12),
              child: TextField(
                  decoration: InputDecoration(
                      labelText: "Пароль"
                  )
              ),
            ),
            Padding(padding: EdgeInsetsGeometry.all(12),
              child:
              OutlinedButton(
                onPressed: () => {
                  showDialog(
                    context: context,
                    builder: (BuildContext ctx) {
                      return const AlertDialog(
                        title: Text('Message'),
                        content: Text("Need to implement"),
                      );
                    },
                  )
                },
                child: const Text("Зареєструватись"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  foregroundColor: Colors.white,
                ),
              ),
            ),
            Padding(padding: EdgeInsetsGeometry.all(40),
              child:
                  OutlinedButton(
                    onPressed: () => {
                      Navigator.pop(context)
                    },
                    child: const Text("Назад"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      foregroundColor: Colors.white,
                    ),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
