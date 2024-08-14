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

class ColorChanger {
  List<Color> _colors;
  int _colorIndex;

  ColorChanger(this._colors) : _colorIndex = 0;

  Color getColor() {
    return _colors[_colorIndex];
  }

  void changeColor() {
    _colorIndex = (_colorIndex + 1) % _colors.length;
}
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Color> _colors = [
    Colors.blue[600]!,
    Colors.green[600]!,
    Colors.yellow[600]!,
    Colors.red[600]!,
    Colors.purple[600]!,
    Colors.pink[600]!
  ];

  late ColorChanger _colorChanger1_1;
  late ColorChanger _colorChanger1_2; 
  late ColorChanger _colorChanger1_3;

  late ColorChanger _colorChanger2_1; 
  late ColorChanger _colorChanger2_2; 
  late ColorChanger _colorChanger2_3; 

  late ColorChanger _colorChanger3_1; 
  late ColorChanger _colorChanger3_2; 
  late ColorChanger _colorChanger3_3; 

  @override
  void initState() {
    super.initState();
    _colorChanger1_1 = ColorChanger(_colors);
    _colorChanger1_2 = ColorChanger(_colors);
    _colorChanger1_3 = ColorChanger(_colors);
    _colorChanger2_1 = ColorChanger(_colors);
    _colorChanger2_2 = ColorChanger(_colors);
    _colorChanger2_3 = ColorChanger(_colors);
    _colorChanger3_1 = ColorChanger(_colors);
    _colorChanger3_2 = ColorChanger(_colors);
    _colorChanger3_3 = ColorChanger(_colors);
  }

  void _changeColor(ColorChanger colorChanger) {
    setState(() {
      colorChanger.changeColor();
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
                  onTap: () =>_changeColor(_colorChanger1_1),
                  child: Container(
                    color: _colorChanger1_1.getColor(),
                    width: 100.0,
                    height: 100.0,
                    child: Center(child: Text('Item1')),
                  ),
                ),
                GestureDetector(
                  onTap: () =>_changeColor(_colorChanger1_2),
                  child: Container(
                    color: _colorChanger1_2.getColor(),
                    width: 100.0,
                    height: 100.0,
                    child: Center(child: Text('Item2')),
                  ),
                ),
                GestureDetector(
                  onTap: () =>_changeColor(_colorChanger1_3),
                  child: Container(
                    color: _colorChanger1_3.getColor(),
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
                  onTap: () =>_changeColor(_colorChanger2_1),
                  child: Container(
                    color: _colorChanger2_1.getColor(),
                    width: 100.0,
                    height: 100.0,
                    child: Center(child: Text('Item1')),
                  ),
                ),
                GestureDetector(
                  onTap: () =>_changeColor(_colorChanger2_2),
                  child: Container(
                    color: _colorChanger2_2.getColor(),
                    width: 100.0,
                    height: 100.0,
                    child: Center(child: Text('Item2')),
                  ),
                ),
                GestureDetector(
                  onTap: () =>_changeColor(_colorChanger2_3),
                  child: Container(
                    color: _colorChanger2_3.getColor(),
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
                  onTap: () =>_changeColor(_colorChanger3_1),
                  child: Container(
                    color: _colorChanger3_1.getColor(),
                    width: 100.0,
                    height: 100.0,
                    child: Center(child: Text('Item1')),
                  ),
                ),
                GestureDetector(
                  onTap: () =>_changeColor(_colorChanger3_2),
                  child: Container(
                    color: _colorChanger3_2.getColor(),
                    width: 100.0,
                    height: 100.0,
                    child: Center(child: Text('Item2')),
                  ),
                ),
                GestureDetector(
                  onTap: () =>_changeColor(_colorChanger3_3),
                  child: Container(
                    color: _colorChanger3_3.getColor(),
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
