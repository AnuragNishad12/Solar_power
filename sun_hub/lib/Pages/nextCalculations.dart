import 'package:flutter/material.dart';
import 'package:sun_hub/Pages/panelsize.dart';
import 'package:sun_hub/Pages/solarOutput.dart';
import 'package:sun_hub/Pages/useCalculator.dart';

class nextCalculation extends StatelessWidget {
  const nextCalculation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cost Estimation tools",style: TextStyle(
          fontSize:20.0,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
        ),),
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
      ),
      body:
      Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder:
                    //         (context)=>solar()));
                  },
                  child: Material(
                    borderRadius: BorderRadius.circular(15.0),
                    elevation: 5.0,
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder:
                                (context)=>useCalculator()));
                      },
                      child: Container(
                        height: 150.0,
                        width: 150.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                            image: AssetImage("Assets/one.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.orange,
                            ),
                            padding: EdgeInsets.all(8.0),
                            child: Text("How to use the calculator",style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              fontSize: 10.0,
                            ),),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                InkWell(
                  onTap: () {

                  },
                  child: Material(
                    borderRadius: BorderRadius.circular(15.0),
                    elevation: 5.0,
                    child: Container(
                      height: 150.0,
                      width: 150.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                          image: AssetImage("Assets/two.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: InkWell(
                        onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder:
                              (context)=>SolarPanelCalculatorApp()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.orange,
                              ),
                              padding: EdgeInsets.all(8.0),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Solar Panel Sizing Calculator",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10.0,
                                ),),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                 Navigator.push(context,
                 MaterialPageRoute(builder: (context)=>SolarPanelOutputCalculatorApp()));
                  },
                    child: Material(
                      borderRadius: BorderRadius.circular(15.0),
                      elevation: 5.0,
                      child: Container(
                        height: 150.0,
                        width: 150.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                            image: AssetImage("Assets/three.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.orange,
                              ),
                              padding: EdgeInsets.all(8.0),
                              child: Text("Solar Panel Output Calculator",style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                fontSize: 10.0,
                              ),),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                SizedBox(
                  width: 10.0,
                )
                ],
            ),
      ],
            ),
    );
  }
}
