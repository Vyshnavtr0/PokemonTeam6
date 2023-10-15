import 'package:flutter/material.dart';
import 'package:pokemon/Screens/home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {


    Future<void> nextscreen() async {

         await Future.delayed(const Duration(milliseconds: 3000));
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
         
    }

    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nextscreen();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(40),
              child: Image.network(
                  "https://res.cloudinary.com/dvhlfyvrr/image/upload/v1697360303/Pet%20Life/Data/pngwing.com_vjq3ia.png",
                  height: 100,
                  width: 100,
                  fit:BoxFit.cover,
                  ),
            ),
            Text("Catchathon",

                style: TextStyle(fontFamily: "ProductSans-Bold",fontSize: 16),
            )
          ],
        )),

    );
  }
}