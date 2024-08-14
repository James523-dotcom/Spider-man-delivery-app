import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:spidermanapp2/onboardingscreen2.dart';

class Onboardingscreen1 extends StatelessWidget {
  const Onboardingscreen1({super.key});

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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Onboardingscreen2()));
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
              ),
              Image.asset('assets/spiderman.png',),
              Container(
                width: 300,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Bienvenu", 
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 17
                  ),
                  textAlign: TextAlign.center,
                  ),
                ),
                
              ),
        
              SizedBox(
                height: 20,
              ),
               Container(
                width: 300,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.red,
                    width: 2
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Welcome", 
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.red,
                    fontSize: 17
                  ),
                  textAlign: TextAlign.center,
                  ),
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