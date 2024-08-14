import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:spidermanapp2/onboardingscreen3.dart';

class Onboardingscreen2 extends StatelessWidget {
  const Onboardingscreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
       body: Stack(
        children: [ Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Onboardingscreen3()));
                  },
                    child: Text("Skip", textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500
                    ),
                    ),
                  ),
                ],
              ),
              Image.asset('assets/takeaway.png',),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Place an Order", style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 23
                    ),),
                     Text("Register an order for the product or service we deliver",
                style: TextStyle(
                  fontSize: 18
                ),
                textAlign: TextAlign.center,
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