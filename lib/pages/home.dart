import 'package:flutter/material.dart';
import 'package:laba_6/pages/sign_up.dart';
import 'package:laba_6/pages/reset_password.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Вітаємо в застосунку"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(padding: EdgeInsetsGeometry.all(12),
              child: TextField(
                decoration: InputDecoration(
                  labelText:'Ваш email',
                ),
              ),
            ),
            Padding(padding: EdgeInsetsGeometry.all(12),
              child: TextField(
                decoration: InputDecoration(
                  labelText:'Пароль',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 180,
                  height: 32,
                  child: OutlinedButton(onPressed: () => {
                    showDialog(
                      context: context,
                      builder: (BuildContext ctx) {
                        return const AlertDialog(
                          title: Text('Message'),
                          content: Text("Need to implement"),
                        );
                      },
                    ),
                  }, child: Text("Увійти"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      foregroundColor: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                SizedBox(
                  width: 180,
                  height: 32,
                  child: OutlinedButton(onPressed: ()=> {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ),
                      )
                    },
                    child: Text("Зареєструватись"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      foregroundColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsetsGeometry.all(40),
              child:
                OutlinedButton(onPressed: ()=> {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResetPasswordScreen(),
                    ),
                  )
                },
                  child: Text("Змінити пароль"),
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
