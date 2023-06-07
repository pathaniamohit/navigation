import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Route route = MaterialPageRoute(builder: (context) => SecondHome());
            Navigator.push(context, route);
          },
          child: Text('second home'),
        ),
      ),
    );
  }
}

class SecondHome extends StatelessWidget {
  const SecondHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
    child: ElevatedButton(
    onPressed: () {
    Navigator.pop(context);
    },
        child: Text('Welcome to my second home'),
      ),
    ),
    );
  }
}
