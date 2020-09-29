import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counterOne = 0;
  int _counterTwo = 0;

  void _incrementCounterOne() {
    setState(() {
      _counterOne++;
    });
  }


  void _incrementCounterTwo() {
    setState(() {
      _counterTwo++;
    });
  }


  void _counterResetOne() {
    setState(() {
      _counterOne = 0;
    });
  }

  void _counterResetTwo() {
    setState(() {
      _counterTwo = 0;
    });
  }

  void _decrementCounterOne(){
    setState(() {
      _counterOne--;
    });
  }

  void _decrementCounterTwo(){
    setState(() {
      _counterTwo--;
    });
  }
  int _operationOne = 0;
  double _operationTwo = 0;
  dynamic _truncate = 0.0;
  void _modulo(){
      _operationOne = _counterOne % _counterTwo;
      _operationTwo = _counterOne / _counterTwo;
      _truncate =  _operationTwo.toStringAsFixed(2);

      if((_operationOne) != null){
        setState(() => _operationOne);
      }
      setState(() => _truncate);
  }

  final _buttonSize = 50.0;
  double _counterSize = 24.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Division: $_truncate   Modulus: $_operationOne'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _crearBotonesUp(),
            Text(
              '$_counterOne',
              style: TextStyle(
                fontSize: _counterSize,
                color: Colors.red,
              ),
            ),
            SizedBox(width: 15,),
            Text(
              '$_counterTwo',
              style: TextStyle(
                fontSize: _counterSize,
                color: Colors.purple
              ),
            ),
            _crearBotonesDown(),
          ],
        ),
      ),
      floatingActionButton: _counters(),
    );
  }

  Widget _crearBotonesUp(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _firstRowUp(),
        SizedBox(height: 10.0),
        _secondRowUp(),
        SizedBox(height: 20.0),
      ],
    );
  }
  Widget _crearBotonesDown(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 20.0),
        _firstRowDown(),
        SizedBox(height: 10.0),
        _secondRowDown(),
        SizedBox(height: 10.0),
        Center(
          child: FloatingActionButton(
            child: Text('%'),
            backgroundColor: Colors.green,
            onPressed: _modulo, 
          ),
        ),
      ],
    );
  }
  Widget _firstRowDown(){  
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Ink(
          child: IconButton(
            onPressed: _oneDown,
            icon: Icon(
              Icons.looks_one,
              size: 60.0,
            ),
            iconSize: _buttonSize,
            ),
        ),
        SizedBox(width: 30.0),
        Ink(
          child: IconButton(
            onPressed: _twoDown,
            icon: Icon(
              Icons.looks_two,
              size: 60.0,
            ),
            iconSize: _buttonSize,
            ),
        ),
        SizedBox(width: 30.0),
        Ink(
          child: IconButton(
            onPressed: _threeDown,
            icon: Icon(
              Icons.looks_3,
              size: 60.0,
            ),
            iconSize: _buttonSize,
            ),
        ),
      ],
    );
  }

  Widget _secondRowDown(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Ink(
          child: IconButton(
            onPressed: _fourDown,
            icon: Icon(
              Icons.looks_4,
              size: 60.0,
            ),
            iconSize: _buttonSize,
            ),
        ),
        SizedBox(width: 30.0),
        Ink(
          child: IconButton(
            onPressed: _fiveDown,
            icon: Icon(
              Icons.looks_5,
              size: 60.0,
            ),
            iconSize: _buttonSize,
            ),
        ),
        SizedBox(width: 30.0),
        Ink(
          child: IconButton(
            onPressed: _sixDown,
            icon: Icon(
              Icons.looks_6,
              size: 60.0,
            ),
            iconSize: _buttonSize,
            ),
        ),
      ],
    );
  }

  void _oneDown(){
    setState(() => _counterTwo = 10);
  }
  void _twoDown(){
    setState(() => _counterTwo = 25);
  }
  void _threeDown(){
    setState(() => _counterTwo = 100);
  }
  void _fourDown(){
    setState(() => _counterTwo = 150);
  }
  void _fiveDown(){
    setState(() => _counterTwo = 250);
  }
  void _sixDown(){
    setState(() => _counterTwo = 1000);
  }

  Widget _firstRowUp(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Ink(
          child: IconButton(
            onPressed: _oneUp,
            icon: Icon(
              Icons.looks_one,
              size: 60.0,
            ),
            iconSize: _buttonSize,
            ),
        ),
        SizedBox(width: 30.0),
        Ink(
          child: IconButton(
            onPressed: _twoUp,
            icon: Icon(
              Icons.looks_two,
              size: 60.0,
            ),
            iconSize: _buttonSize,
            ),
        ),
        SizedBox(width: 30.0),
        Ink(
          child: IconButton(
            onPressed: _threeUp,
            icon: Icon(
              Icons.looks_3,
              size: 60.0,
            ),
            iconSize: _buttonSize,
            ),
        ),
      ],
    );
  }

  Widget _secondRowUp(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Ink(
          child: IconButton(
            onPressed: _fourUp,
            icon: Icon(
              Icons.looks_4,
              size: 60.0,
            ),
            iconSize: _buttonSize,
            ),
        ),
        SizedBox(width: 30.0),
        Ink(
          child: IconButton(
            onPressed: _fiveUp,
            icon: Icon(
              Icons.looks_5,
              size: 60.0,
            ),
            iconSize: _buttonSize,
            ),
        ),
        SizedBox(width: 30.0),
        Ink(
          child: IconButton(
            onPressed: _sixUp,
            icon: Icon(
              Icons.looks_6,
              size: 60.0,
            ),
            iconSize: _buttonSize,
            ),
        ),
      ],
    );
  }

  void _oneUp(){
    setState(() => _counterOne = 10);
  }
  void _twoUp(){
    setState(() => _counterOne = 25);
  }
  void _threeUp(){
    setState(() => _counterOne = 100);
  }
  void _fourUp(){
    setState(() => _counterOne = 150);
  }
  void _fiveUp(){
    setState(() => _counterOne = 250);
  }
  void _sixUp(){
    setState(() => _counterOne = 1000);
  }


  Widget _counters(){
    final _countersColorLeft = Colors.red;
    final _countersColorRight = Colors.purple;

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 25),
        FloatingActionButton(
          backgroundColor: _countersColorLeft,
          onPressed: _incrementCounterOne,
          child: Icon(Icons.add),
          ),
        SizedBox(width: 5),
        FloatingActionButton(
          backgroundColor: _countersColorLeft,
          onPressed: _counterResetOne,
          child: Text('0'),
          ),
        SizedBox(width: 5),
        FloatingActionButton(
          backgroundColor: _countersColorLeft,
          onPressed: _decrementCounterOne,
          child: Center(child: Text('-', style: TextStyle(fontSize: 30),)),
          ),
        SizedBox(width: 20,),
        FloatingActionButton(
          backgroundColor: _countersColorRight,
          onPressed: _decrementCounterTwo,
          child: Center(child: Text('-', style: TextStyle(fontSize: 30),)),
        ),
        SizedBox(width: 5),
        FloatingActionButton(
          backgroundColor: _countersColorRight,
          onPressed: _counterResetTwo,
          child: Text('0'),
        ),
        SizedBox(width: 5),
        FloatingActionButton(
          backgroundColor: _countersColorRight,
          onPressed: _incrementCounterTwo,
          child: Icon(Icons.add),
          ),
        SizedBox(width: 1),
      ],
    );

  }
    
}
