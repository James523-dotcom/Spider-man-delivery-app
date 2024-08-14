import 'package:flutter/material.dart';
import 'package:spidermanapp2/paymentmethod.dart';

class Neworder extends StatelessWidget {
  const Neworder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("New Order"),
      ),
      body: Column(
        children: [
            Padding(
           padding: const EdgeInsets.all(18),
           child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("ID"),
                ],
              ),
               Material(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14)
                ),
                 child: Container(
                        width: double.infinity,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 228, 223, 223),
                          borderRadius: BorderRadius.circular(14)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text("1246272371"),
                        )),
               ),
               SizedBox(
                height: 10,
               ),
                Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Pick up"),
                ],
              ),
               Material(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14)
                ),
                 child: Container(
                        width: double.infinity,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 228, 223, 223),
                          borderRadius: BorderRadius.circular(14)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text("Bambili"),
                        )),
               ),
               SizedBox(
                height: 10,
               ),
                Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Drop up"),
                ],
              ),
               Material(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14)
                ),
                 child: Container(
                        width: double.infinity,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 228, 223, 223),
                          borderRadius: BorderRadius.circular(14)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text("Mile 4 Nkwen"),
                        )),
               ),
               SizedBox(
                height: 10,
               ),
                Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Brief Description"),
                ],
              ),
               Material(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14)
                ),
                 child: Container(
                        width: double.infinity,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 228, 223, 223),
                          borderRadius: BorderRadius.circular(14)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text("Second gate after Campus A"),
                        )),
               ),
               SizedBox(
                height: 10,
               ),
                 Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Vehicle Preference"),
                ],
              ),
               Material(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14)
                ),
                 child: Container(
                        width: double.infinity,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 228, 223, 223),
                          borderRadius: BorderRadius.circular(14)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text("Bike"),
                        )),
               ),
                SizedBox(
                  height: 50,
                ),
               Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: TextButton( onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Paymentmethod()));
                },
                  child: Text("Confirm", 
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
          )
        ],
      ),
    );
  }
}