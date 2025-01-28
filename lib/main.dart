import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo new',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          // change color while the other colors stay the same.
          backgroundColor: Colors.black,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title, style: TextStyle(color: Colors.white)),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10, bottom: 10),
                          height: 200,
                          width: 100,
                          color: Colors.red,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, bottom: 10),
                          height: 200,
                          width: 100,
                          color: Colors.red,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, bottom: 10),
                          height: 200,
                          width: 100,
                          color: Colors.red,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, bottom: 10),
                          height: 200,
                          width: 100,
                          color: Colors.blue,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  width: 200,
                  height: 200,
                  color: Colors.orange,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  color: Colors.orange,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  width: 200,
                  height: 200,
                  color: Colors.orange,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  width: 200,
                  height: 200,
                  color: Colors.orange,
                ),
              ],
            ),
          ),
        ));
  }
}
