import 'package:beauty_mapping/pages/home.dart';
import 'package:beauty_mapping/screens/landing.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/bg.jpg"),
        fit: BoxFit.cover,
        opacity: 0.7,
      )),
      child: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(vertical: 65, horizontal: 25),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Enjoy",
              style: TextStyle(
                color: Colors.white.withOpacity(0.9),
                fontSize: 35,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              "the world!",
              style: TextStyle(
                color: Colors.white.withOpacity(1),
                decoration: TextDecoration.none,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "At urbm, we know this better than anyone. That’s why we offer information about destinations and travel tips in an engaging way that will have you itching to pack your bags and go!",
              style: TextStyle(
                color: Color.fromARGB(34, 255, 255, 255).withOpacity(0.9),
                fontSize: 16,
                decoration: TextDecoration.none,
                letterSpacing: 1.2,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => HomePage())));
              },
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(Icons.arrow_forward_ios),
              ),
            )
          ]),
        )),
      ),
    );
  }
}
