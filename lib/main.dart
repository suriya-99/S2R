import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
Widget showeimage(){
  return Container(width: 200.0,height: 200.0,
    child: Image.asset('images/gg.png'),
    );
}
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Bar Hello World'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 10),
                const Text(
                  'Resume',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            showeimage(),
            const Text('First Name: Suriya', style: TextStyle(fontSize: 18)),
            const Text('Last Name: Sanrueangdet', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            const Text('Hobby: eating', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            const Text('Education:', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Primary: Padungwit  School', style: TextStyle(fontSize: 16)),
                      Text('Secondary: Lomsak School', style: TextStyle(fontSize: 16)),
                      Text('UnderGrad: Naresuan University', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('GPA: X.XX', style: TextStyle(fontSize: 16)),
                      Text('GPA: Y.YY', style: TextStyle(fontSize: 16)),
                      Text('GPA: Z.ZZ', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
