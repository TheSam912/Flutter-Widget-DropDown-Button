import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DropDownClass(),
    );
  }
}

class DropDownClass extends StatefulWidget {
  @override
  _DropDownClassState createState() => _DropDownClassState();
}

class _DropDownClassState extends State<DropDownClass> {
  final List<String> month = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];

  String text = 'June';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DropDown Widget Flutter'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(30),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.red),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('@Sobhan912',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900)),
              SizedBox(
                height: 100,
              ),
              DropdownButton(
                value: text,
                onChanged: (value) {
                  setState(() {
                    text = value;
                  });
                },
                items: month.map<DropdownMenuItem<String>>((value) {
                  return DropdownMenuItem(
                    child: Text(value),
                    value: value,
                  );
                }).toList(),
              ),
              SizedBox(
                height: 50,
              ),
              Text(text,
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w800))
            ],
          ),
        ),
      ),
    );
  }
}
