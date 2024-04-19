import 'package:flutter/material.dart';

class SolarPanelCalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Solar Panel Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SolarPanelCalculatorScreen(),
    );
  }
}

class SolarPanelCalculatorScreen extends StatefulWidget {
  @override
  _SolarPanelCalculatorScreenState createState() =>
      _SolarPanelCalculatorScreenState();
}

class _SolarPanelCalculatorScreenState extends State<SolarPanelCalculatorScreen> {

  TextEditingController consumptionController = TextEditingController();
  TextEditingController solarHoursController = TextEditingController();
  TextEditingController billOffsetController = TextEditingController();
  TextEditingController environmentalFactorController = TextEditingController();
  TextEditingController panelOutputController = TextEditingController();
  TextEditingController panelWidthController = TextEditingController();
  TextEditingController panelLengthController = TextEditingController();
  TextEditingController roofAreaController = TextEditingController();


  bool fits = false;
  double requiredPanels = 0;
  double areaOccupied = 0;


  void calculate() {
    double consumption = double.parse(consumptionController.text);
    double solarHours = double.parse(solarHoursController.text);
    double billOffset = double.parse(billOffsetController.text);
    double environmentalFactor = double.parse(environmentalFactorController.text);
    double panelOutput = double.parse(panelOutputController.text);
    double panelWidth = double.parse(panelWidthController.text);
    double panelLength = double.parse(panelLengthController.text);
    double roofArea = double.parse(roofAreaController.text);
    double solarArrayOutput = consumption / (365 * solarHours);
    double solarArraySize = solarArrayOutput * (billOffset / environmentalFactor);
    double areaOccupied = solarArraySize * 1000 / panelOutput * panelWidth * panelLength;
    double requiredPanels = solarArraySize * 1000 / panelOutput;
    bool fits = areaOccupied <= roofArea;


    setState(() {
      this.fits = fits;
      this.requiredPanels = requiredPanels;
      this.areaOccupied = areaOccupied;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Solar Panel Calculator",style: TextStyle(
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
              controller: consumptionController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Yearly electricity consumption (kWh)'),
            ),
            TextField(
              controller: solarHoursController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Average solar hours per day'),
            ),
            TextField(
              controller: billOffsetController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Desired bill offset percentage'),
            ),
            TextField(
              controller: environmentalFactorController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Environmental factor percentage'),
            ),
            TextField(
              controller: panelOutputController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Output of individual solar panels (watts)'),
            ),
            TextField(
              controller: panelWidthController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Width of each solar panel (meters)'),
            ),
            TextField(
              controller: panelLengthController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Length of each solar panel (meters)'),
            ),
            TextField(
              controller: roofAreaController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Available roof area (square meters)'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: calculate,
              child: Text('Calculate'),
            ),
            SizedBox(height: 16.0),
            fits
                ? Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('The solar system fits on the roof.'),
                Text('Number of required panels: $requiredPanels'),
                Text('Area occupied by panels: $areaOccupied square meters'),
              ],
            )
                : Text('The solar system does not fit on the roof.'),
          ],
        ),
      ),
    );
  }
}
