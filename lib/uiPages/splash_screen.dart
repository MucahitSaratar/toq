import 'package:flutter/material.dart';
import 'package:toq/uiPages/giris_sayfasi.dart';
import 'package:toq/utils/local/utils.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen> {
  // const SplashScreen({Key? key}) : super(key: key);

  @override
  void initState() {
    super.initState();
    LocalUtils().getSession().then((value) {
      if (value != null && value != "null") {
        print("null değil");
      } else {
        print("giris sayfasina yonlendiriyorum");
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (builder) => LoginPage()));
      }
    });
  }

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
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.multitrack_audio_sharp,
                    size: 90.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "TOQ",
                    style: TextStyle(fontSize: 60.0),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
