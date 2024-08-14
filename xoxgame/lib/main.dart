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
      title: 'XOX Game',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'XOX')
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  static const double RADIUS_CORNER = 12;
  static const int None = 0;
  static const int X = 1;
  static const int O = 2;

  Color colorBorder = Colors.blue[600]!;
  Color colorBackground = Colors.blue[100]!;
  Color colorBackgroundChannelNone = Colors.blue[200]!;
  Color colorBackgroundChanelX = Colors.blue[400]!;
  Color colorBackgroundChanelO = Colors.blue[400]!;
  Color colorChanelIcon = Colors.blue[800]!;
  Color colorTextCurrentTurn = Colors.blue[900]!;

  List<List<int>> chanelStatus = [
    [None, None, None],
    [None, None, None],
    [None, None, None]
  ];

  int currentTurn = X;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(

        child:Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(margin: const EdgeInsets.all(10.0),
            color: Colors.red[600],
            width: 150.0,
            height: 150.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                child: GestureDetector(
                  onTap: () {
                    print('Item1.1 tapped');
                  },
                child: Container(
                  margin: const EdgeInsets.all(3.0),
                  padding: const EdgeInsets.all(20.0),
                  color: Colors.blue[600],
                  child: Text('Item1'),),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                  onTap: () {
                    print('Item1.2 tapped');
                  },
                  child: Container(
                  margin: const EdgeInsets.all(3.0),
                  padding: const EdgeInsets.all(20.0),
                  color: Colors.blue[600],
                  child: Text('Item2'),),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                  onTap: () {
                    print('Item1.3 tapped');
                  },
                  child: Container(
                  margin: const EdgeInsets.all(3.0),
                  padding: const EdgeInsets.all(20.0),
                  color: Colors.blue[600],
                  child: Text('Item3'),),
                  ),
                ),
            ],) ,),

            Container(margin: const EdgeInsets.all(10.0),
            color: Colors.red[600],
            width: 150.0,
            height: 150.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                child: GestureDetector(
                  onTap: () {
                    print('Item2.1 tapped');
                  },
                child: Container(
                  margin: const EdgeInsets.all(3.0),
                  padding: const EdgeInsets.all(20.0),
                  color: Colors.blue[600],
                  child: Text('Item1'),),
                ),
                ),
                Expanded(
                child: GestureDetector(
                  onTap: () {
                    print('Item2.2 tapped');
                  },
                  child: Container(
                  margin: const EdgeInsets.all(3.0),
                  padding: const EdgeInsets.all(20.0),
                  color: Colors.blue[600],
                  child: Text('Item2'),),
                ),
                ),
                Expanded(
                  child: GestureDetector(
                  onTap: () {
                    print('Item2.3 tapped');
                  },
                  child: Container(
                  margin: const EdgeInsets.all(3.0),
                  padding: const EdgeInsets.all(20.0),
                  color: Colors.blue[600],
                  child: Text('Item3'),),
                  ),
                ),
            ],),),

            Container(margin: const EdgeInsets.all(10.0),
            color: Colors.red[600],
            width: 150.0,
            height: 150.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                child: GestureDetector(
                  onTap: () {
                    print('Item3.1 tapped');
                  },
                child: Container(
                  margin: const EdgeInsets.all(3.0),
                  padding: const EdgeInsets.all(20.0),
                  color: Colors.blue[600],
                  child: Text('Item1'),),
                )
                ),
                Expanded(
                  child: GestureDetector(
                  onTap: () {
                    print('Item2.3 tapped');
                  },
                  child: Container(
                  margin: const EdgeInsets.all(3.0),
                  padding: const EdgeInsets.all(20.0),
                  color: Colors.blue[600],
                  child: Text('Item2'),),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                  onTap: () {
                    print('Item3.3 tapped');
                  },
                  child: Container(
                  margin: const EdgeInsets.all(3.0),
                  padding: const EdgeInsets.all(20.0),
                  color: Colors.blue[600],
                  child: Text('Item3'),),
                  ),
                ),
            ],)
            ),
          ]
        )
        ),
    );
  }
}