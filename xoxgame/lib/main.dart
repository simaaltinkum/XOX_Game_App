import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XOX Game',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'XOX'),
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
  Color _itemColor1_1 = Colors.blue[600]!;
  Color _itemColor1_2 = Colors.blue[600]!;
  Color _itemColor1_3 = Colors.blue[600]!;

  Color _itemColor2_1 = Colors.blue[600]!;
  Color _itemColor2_2 = Colors.blue[600]!;
  Color _itemColor2_3 = Colors.blue[600]!;

  Color _itemColor3_1 = Colors.blue[600]!;
  Color _itemColor3_2 = Colors.blue[600]!;
  Color _itemColor3_3 = Colors.blue[600]!;

  List<Color> _colors = [
    Colors.blue[600]!,
    Colors.green[600]!,
    Colors.yellow[600]!,
    Colors.red[600]!,
    Colors.purple[600]!,
    Colors.pink[600]!
  ];

  int _colorIndex1_1 = 0;
  int _colorIndex1_2 = 0;
  int _colorIndex1_3 = 0;

  int _colorIndex2_1 = 0;
  int _colorIndex2_2 = 0;
  int _colorIndex2_3 = 0;

  int _colorIndex3_1 = 0;
  int _colorIndex3_2 = 0;
  int _colorIndex3_3 = 0;

  void _changeColor1_1() {
    setState(() {
      _colorIndex1_1 = (_colorIndex1_1 + 1) % _colors.length;
      _itemColor1_1 = _colors[_colorIndex1_1];
    });
  }

  void _changeColor1_2() {
    setState(() {
      _colorIndex1_2 = (_colorIndex1_2 + 1) % _colors.length;
      _itemColor1_2 = _colors[_colorIndex1_2];
    });
  }

  void _changeColor1_3() {
    setState(() {
      _colorIndex1_3 = (_colorIndex1_3 + 1) % _colors.length;
      _itemColor1_3 = _colors[_colorIndex1_3];
    });
  }

  void _changeColor2_1() {
    setState(() {
      _colorIndex2_1 = (_colorIndex2_1 + 1) % _colors.length;
      _itemColor2_1 = _colors[_colorIndex2_1];
    });
  }

  void _changeColor2_2() {
    setState(() {
      _colorIndex2_2 = (_colorIndex2_2 + 1) % _colors.length;
      _itemColor2_2 = _colors[_colorIndex2_2];
    });
  }

  void _changeColor2_3() {
    setState(() {
      _colorIndex2_3 = (_colorIndex2_3 + 1) % _colors.length;
      _itemColor2_3 = _colors[_colorIndex2_3];
    });
  }

  void _changeColor3_1() {
    setState(() {
      _colorIndex3_1 = (_colorIndex3_1 + 1) % _colors.length;
      _itemColor3_1 = _colors[_colorIndex3_1];
    });
  }

  void _changeColor3_2() {
    setState(() {
      _colorIndex3_2 = (_colorIndex3_2 + 1) % _colors.length;
      _itemColor3_2 = _colors[_colorIndex3_2];
    });
  }

  void _changeColor3_3() {
    setState(() {
      _colorIndex3_3 = (_colorIndex3_3 + 1) % _colors.length;
      _itemColor3_3 = _colors[_colorIndex3_3];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Row 1
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: _changeColor1_1,
                  child: Container(
                    color: _itemColor1_1,
                    width: 100.0,
                    height: 100.0,
                    child: Center(child: Text('Item1')),
                  ),
                ),
                GestureDetector(
                  onTap: _changeColor1_2,
                  child: Container(
                    color: _itemColor1_2,
                    width: 100.0,
                    height: 100.0,
                    child: Center(child: Text('Item2')),
                  ),
                ),
                GestureDetector(
                  onTap: _changeColor1_3,
                  child: Container(
                    color: _itemColor1_3,
                    width: 100.0,
                    height: 100.0,
                    child: Center(child: Text('Item3')),
                  ),
                ),
              ],
            ),
            // Row 2
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: _changeColor2_1,
                  child: Container(
                    color: _itemColor2_1,
                    width: 100.0,
                    height: 100.0,
                    child: Center(child: Text('Item1')),
                  ),
                ),
                GestureDetector(
                  onTap: _changeColor2_2,
                  child: Container(
                    color: _itemColor2_2,
                    width: 100.0,
                    height: 100.0,
                    child: Center(child: Text('Item2')),
                  ),
                ),
                GestureDetector(
                  onTap: _changeColor2_3,
                  child: Container(
                    color: _itemColor2_3,
                    width: 100.0,
                    height: 100.0,
                    child: Center(child: Text('Item3')),
                  ),
                ),
              ],
            ),
            // Row 3
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: _changeColor3_1,
                  child: Container(
                    color: _itemColor3_1,
                    width: 100.0,
                    height: 100.0,
                    child: Center(child: Text('Item1')),
                  ),
                ),
                GestureDetector(
                  onTap: _changeColor3_2,
                  child: Container(
                    color: _itemColor3_2,
                    width: 100.0,
                    height: 100.0,
                    child: Center(child: Text('Item2')),
                  ),
                ),
                GestureDetector(
                  onTap: _changeColor3_3,
                  child: Container(
                    color: _itemColor3_3,
                    width: 100.0,
                    height: 100.0,
                    child: Center(child: Text('Item3')),
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
