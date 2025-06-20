import'package:flutter/material.dart';
class bmi extends StatefulWidget {
  const bmi({super.key});

  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();

  String _bmiResult = '';
  String _bmiCategory = '';

  void _calculateBMI(){
    final double? height = double.tryParse(_heightController.text);
    final double? weight = double.tryParse(_weightController.text);

    if (height == null || weight == null || height <=0 || weight <=0){
      setState(() {
        _bmiResult = 'Invalid input';
        _bmiCategory = '';
      });
      return;
    }

    double heightInMeters = height / 100;
    double bmi = weight / (heightInMeters * heightInMeters);
    String category;

    if (bmi < 18.5){
      category = 'Underweight' ;
    } else if (bmi < 25){
      category = 'Normal weight' ;
    } else if (bmi < 30) {
      category = 'Overweight' ;
    } else {
      category = 'Obese' ;
    }
    setState(() {
      showDialog(context: (context), builder: (BuildContext){
        return AboutDialog(
          children: [
            Text(_bmiResult),
            Text("$category"),
          ],
        );
      });
      _bmiResult = 'Your BMI is ${bmi.toStringAsFixed(1)}';
      _bmiCategory = 'Category: ${category}';
    });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text("BMI CALCULATOR",style: TextStyle(fontWeight: FontWeight.bold),
      ),

          backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(Icons.person),
          )
        ],

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _heightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Height in (cm)',
                icon: Icon(Icons.height_outlined),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _weightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                icon: Icon(Icons.monitor_weight),
                labelText: 'Weight in (Kg)',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 40),
          ElevatedButton(    onPressed: _calculateBMI, child: Text('Calculate BMI')),
          SizedBox(height: 40),
          Text(
            _bmiResult,
            style: const TextStyle(fontSize: 45),
          ),
          SizedBox(height: 20),
          Text(
            _bmiCategory,
            style: const TextStyle(fontSize: 20, color: Colors.red),
          ),

        ],
      ),
    );
  }
}