import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("Змінити пароль"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsetsGeometry.all(12),
              child: TextField(
                  decoration: InputDecoration(
                      labelText: "Email"
                  )
              ),
            ),
            Padding(padding: EdgeInsetsGeometry.all(12),
              child: OutlinedButton(
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
                child:  Text("Далі"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  foregroundColor: Colors.white,
                ),
              ),
            ),
            Padding(padding: EdgeInsetsGeometry.all(12),
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
