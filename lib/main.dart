import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart'; // Import for generating unique IDs

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Map<String, String> _buttonIds = {}; // Store button IDs for uniqueness
  final double buttonSpacing = 20.0; // Spacing between buttons

  final List<String> buttonTexts = [
    "Fine Rule 1",
    "Overtake",
    "Cut",
    "Write",
    "Scan",
    "Pay the Payment",
    "Rules 4:1",
    "Scanning",
    "Writing",
    "Police",
    "Users",
    "People's",
    "Banking",
    "Online",
    "Coming",
    "Payment",
    // Add more button texts as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0F3758),
      appBar: AppBar(
        backgroundColor: Color(0xFF0F3758),
        title: Text("NSKP Police Fine App", style: TextStyle(color: Colors.white)),
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              for (final text in buttonTexts) ...[
                _buildButton(text),
                SizedBox(height: buttonSpacing), // Add spacing between buttons
              ]
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton(String text) {
    final uniqueId = Uuid().v4(); // Generate and store unique ID
    _buttonIds[text] = uniqueId;

    return Center(
      child: ElevatedButton(
        key: UniqueKey(), // Use UniqueKey for each button
        onPressed: () {}, // Add appropriate button actions
        child: Text(text, style: TextStyle(fontSize: 20)),
        style: ElevatedButton.styleFrom(minimumSize: Size(450, 50)),
      ),
    );
  }
}
