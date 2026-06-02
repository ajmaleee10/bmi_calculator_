import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Gredient extends StatefulWidget {

  @override
  State<Gredient> createState() => _GredientState();
}

class _GredientState extends State<Gredient> {
 TextEditingController hcontroller=TextEditingController();

 TextEditingController wcontroller=TextEditingController();

 String result =""; 

  void calculate(){
    double h=double.parse(hcontroller.text)/100;
    double w=double.parse(wcontroller.text);
    double bmi=w/(h*h);
    setState(() {
      result="your bmi is ${bmi.toStringAsFixed(2)}";
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 242, 186, 3),
              const Color.fromARGB(255, 236, 219, 63),
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topCenter,
          ),
        ),

        child: Center(
          child: Column(
            children: [
              SizedBox(height: 175),
              Text(
                "BMI CALCULATOR",
                style:GoogleFonts.rubikBubbles(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 350,
                width: 350,
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40, right: 40),
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        TextField( controller: hcontroller,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.height),
                            fillColor:const Color.fromARGB(255, 169, 172, 172),
                            filled: true,
                            // hintText: "cfgvh",
                            // hintStyle: TextStyle(),
                            labelText: "HEIGTH",
                            labelStyle: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        TextField(controller: wcontroller,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.monitor_weight),
                            fillColor: const Color.fromARGB(255, 169, 172, 172),
                            filled: true,
                            labelText: "WEIGTH",
                            labelStyle: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        GestureDetector(onTap: () =>calculate() ,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.yellow,
                                  const Color.fromARGB(255, 249, 193, 9),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 55,
                            width: 450,
                            child: Center(
                              child: Text(
                                "CALCULATE",
                                style: GoogleFonts.acme(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(result,style: GoogleFonts.abhayaLibre(),selectionColor: Colors.black,),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
