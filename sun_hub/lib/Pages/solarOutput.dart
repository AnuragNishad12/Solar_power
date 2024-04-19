

import 'package:flutter/material.dart';

class SolarPanelOutputCalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solar Panel Output Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SolarPanelOutputCalculatorScreen(),
    );
  }
}

class SolarPanelOutputCalculatorScreen extends StatefulWidget {
  @override
  _SolarPanelOutputCalculatorScreenState createState() =>
      _SolarPanelOutputCalculatorScreenState();
}

class _SolarPanelOutputCalculatorScreenState
    extends State<SolarPanelOutputCalculatorScreen> {
  // Text editing controllers
  TextEditingController panelSizeController = TextEditingController();
  TextEditingController environmentalFactorController = TextEditingController();
  TextEditingController solarHoursController = TextEditingController();

  // Output
  double solarPanelOutput = 0;

  // Calculate method
  void calculateOutput() {
    double panelSize = double.parse(panelSizeController.text);
    double environmentalFactor = double.parse(environmentalFactorController.text) / 100;
    double solarHoursPerDay = double.parse(solarHoursController.text);

    // Calculate solar panel output
    setState(() {
      solarPanelOutput = panelSize * environmentalFactor * solarHoursPerDay;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Solar Panel Output Calculator",style: TextStyle(
          fontSize:20.0,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
        ),),
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Enter the following details:'),
            SizedBox(height: 16.0),
            TextField(
              controller: panelSizeController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Solar panel size (kW)'),
            ),
            TextField(
              controller: environmentalFactorController,
              keyboardType: TextInputType.number,
              decoration:
              InputDecoration(labelText: 'Environmental factor (%)'),
            ),
            TextField(
              controller: solarHoursController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Solar hours per day'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: calculateOutput,
              child: Text('Calculate Output'),
            ),
            SizedBox(height: 16.0),
            Text(
              'Solar panel output: ${solarPanelOutput.toStringAsFixed(2)} kWh',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
