// Github: https://github.com/vchirinosb/myapp
// Victor Chirinos
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MyCard App",
      home: HomePage(),
    );
  }
}

class AppColors {
  static const Color defaultColor = Color(0xFF1E3859);
  static const Color backgroundColor = Color(0xFFD0D3D9);
  static const Color textColor = Color(0xFF1E3859);
  static const Color iconColor = Color(0xFF254159);
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50.0,
            backgroundColor: AppColors.defaultColor,
            child: ClipOval(
              child: Align(
                alignment: Alignment.center,
                heightFactor: 1,
                widthFactor: 1,
                child: Image.asset(
                  "assets/images/hugo.jpeg",
                  fit: BoxFit.cover,
                  width: 100.0,
                  height: 100.0,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          const Text(
            "Victor Hugo Chirinos",
            style: TextStyle(
              color: AppColors.textColor,
              fontSize: 26.0,
              fontFamily: "Quicksand",
              fontWeight: FontWeight.w100,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          const Text(
            "Software Engineer",
            style: TextStyle(
              color: AppColors.textColor,
              fontSize: 20.0,
              fontFamily: 'CormorantGaramond',
              fontWeight: FontWeight.w200,
            ),
          ),
          const SizedBox(
            height: 3.0,
          ),
          const SizedBox(
            width: 220.0,
            child: Divider(
              thickness: 0.48,
              color: AppColors.textColor,
            ),
          ),
          const Card(
            elevation: 10,
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
            child: ListTile(
              title: Text(
                "+51 987 654 321",
                style: TextStyle(
                  fontFamily: "CormorantGaramond",
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              leading: Icon(
                Icons.phone,
                size: 30.0,
                color: AppColors.iconColor,
              ),
            ),
          ),
          const Card(
            elevation: 10,
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
            child: ListTile(
              title: Text(
                "vchirinosb@gmail.com",
                style: TextStyle(
                  fontFamily: "CormorantGaramond",
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              leading: Icon(
                Icons.email,
                size: 30.0,
                color: AppColors.iconColor,
              ),
            ),
          ),
          const SizedBox(
            height: 24.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/images/facebook.svg",
                height: 42.0,
              ),
              const SizedBox(
                width: 24.0,
              ),
              SvgPicture.asset(
                "assets/images/x.svg",
                height: 42.0,
              ),
              const SizedBox(
                width: 24.0,
              ),
              SvgPicture.asset(
                "assets/images/instagram.svg",
                height: 42.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
