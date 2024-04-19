

import 'package:flutter/material.dart';

class useCalculator extends StatelessWidget {
  const useCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("How to use the calculator",style: TextStyle(
            fontSize:20.0,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),),
          backgroundColor: Colors.deepOrange,
          centerTitle: true,
        ),
      body: SingleChildScrollView(
        child: Padding(
          padding:EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Calculate Solar Array Output :-",
                style: TextStyle(fontWeight:
                FontWeight.bold,fontSize: 20.0),),
              Text(" Estimate your yearly electricity "
                  "consumption in kilowatt-hours (kWh). "
                  "Divide this by the number of days in "
                  "a year multiplied by the average number"
                  " of solar hours per day in your "
                  "location to get your"
                  " solar array output",style:
              TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold),),
              SizedBox(
                height: 10.0,
              ),
              Text("Determine Solar Array Size :-",
                style: TextStyle(fontWeight:
                FontWeight.bold,fontSize: 20.0),),
              Text("Decide how much of your electricity"
                  " bill you want to offset with solar "
                  "power and choose an environmental"
                  " factor representing the efficiency "
                  "of your system. Multiply the solar "
                  "array output by the ratio of bill "
                  "offset to the environmental factor.",style:
              TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold),),
              SizedBox(
                height: 10.0,
              ),
              Text("Estimate Roof Area :-",
                style: TextStyle(fontWeight:
                FontWeight.bold,fontSize: 20.0),),
              Text("Measure your roof area,"
                  " excluding any shaded or unusable "
                  "areas. This will give you an idea"
                  " of the maximum available space "
                  "for solar panels.",style:
              TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold),),
              SizedBox(
                height: 10.0,
              ),
              Text("Calculate Number of Solar Panels :-",
                style: TextStyle(fontWeight:
                FontWeight.bold,fontSize: 20.0),),
              Text("Divide the solar array size in"
                  " kilowatts (kW) by the output of "
                  "individual solar panels in watts "
                  "(typically around 300 watts). "
                  "This gives you the required number "
                  "of panels.",style:
              TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold),),
              SizedBox(
                height: 10.0,
              ),
              Text("Determine Occupied Area :-",
                style: TextStyle(fontWeight:
                FontWeight.bold,fontSize: 20.0),),
              Text("Multiply the number of required "
                  "panels by the width and length of "
                  "each panel in meters. This will "
                  "give you the total area occupied"
                  " by the panels.",style:
              TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold),),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
