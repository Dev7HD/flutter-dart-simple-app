import 'package:flutter/material.dart';
import 'quiz.dart';
import 'weather-form.dart';

void main() => runApp(MaterialApp(
  home: MyApp(),
));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('First App'),
          backgroundColor: Colors.orange,
        ),
        body: const Center(
            child: Text(
              'Hello',
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            )),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Colors.orange, Colors.white])),
                child: Center(
                  child: CircleAvatar(
                    radius: 50,backgroundImage: AssetImage('assets/images/developer.png'),
                  ),
                ),
              ),
              ListTile(
                  title: const Text(
                    'Quiz', style: TextStyle(fontSize: 18),
                  ),
                  trailing: const Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => const Quiz()));
                  }),
              ListTile(
                  title: const Text(
                    'Weather form',style: TextStyle(fontSize: 18),
                  ),
                  trailing: const Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(context, MaterialPageRoute(builder: (context) => WeatherForm()));
                  })
            ],
          ),
        ),
    );
  }
}
