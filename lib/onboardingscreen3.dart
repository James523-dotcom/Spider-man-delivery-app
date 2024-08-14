import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:spidermanapp2/signin.dart';

class Onboardingscreen3 extends StatelessWidget {
  const Onboardingscreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [ Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Image.asset('assets/delivery.png',),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Fast Delivery", style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 23
                    ),),
                     Text("We provide the fastest delivery service",
                style: TextStyle(
                  fontSize: 18
                ),
                textAlign: TextAlign.center,
                ),
                 SizedBox(
                height: 30,
              ),
                 Container(
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: TextButton( onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Signin()));
                },
                  child: Text("Get Started", 
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 17
                  ),
                  textAlign: TextAlign.center,
                  ),
                ),
                
              ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SmoothPageIndicator(controller: PageController(), count: 3)
            ],
          ),
        ),
        ]
      ),
    );
  }
}