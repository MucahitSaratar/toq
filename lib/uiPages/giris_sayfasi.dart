import 'package:flutter/material.dart';

Widget Divider() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    physics: AlwaysScrollableScrollPhysics(),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RawMaterialButton(
          elevation: 0,
          onPressed: () {},
          child: Text(
            "create a new account",
            style: TextStyle(decoration: TextDecoration.underline),
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        Container(
            height: 1.0,
            width: 20.0,
            decoration: BoxDecoration(
              border: Border.all(width: 1.0),
            )),
        const SizedBox(
          width: 10.0,
        ),
        RawMaterialButton(
          elevation: 0,
          onPressed: () {},
          child: Text(
            "reset password",
            style: TextStyle(decoration: TextDecoration.underline),
          ),
        ),
      ],
    ),
  );
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Color(0xffB66C81), Color(0xffF1255F)])),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.multitrack_audio_sharp,
                      size: 60.0,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text(
                      "TOQ Login Page",
                      style: TextStyle(fontSize: 30.0),
                    ),
                    const TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.mail), hintText: "E-Mail"),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_outline_rounded),
                          hintText: "Password"),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Divider(),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      child: RawMaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0)),
                        elevation: 0,
                        fillColor: Color(0xffD80B45),
                        onPressed: () {},
                        child: Text("Login"),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
