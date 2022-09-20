import 'package:flutter/material.dart';

void main() {
  runApp(const LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PPAM-Tugas1_124200004',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top:250,bottom:60,left:65,right:65),
              child: Center(
                  child: FlutterLogo(
                    size: 55,
                  )
              ),
            ),
            Padding(
              padding: EdgeInsets.all(4),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Input Your Email or Username",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(45)
                    )
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(4),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Input Your Password",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(45),
                      )
                  ),
                )
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: SizedBox(
                  height : 55,
                  width: 355,
                  child: ElevatedButton(onPressed: (){},
                    child: Text("Log In"),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  )
              ),
            ),
            Padding(
              padding: EdgeInsets.all(2),
              child: TextButton(onPressed: (){},
                child: Text("Forgot Password?"),
                style: TextButton.styleFrom(
                  primary: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}