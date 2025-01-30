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
        body: Center(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              InkWell(
                onTap: (){
                    print('from inkwell');
                },
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('One'),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text('2'),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text('3'),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text('4'),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text('5'),
              ),
            ],
          ),
        ));
  }
}
