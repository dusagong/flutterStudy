/*
stf, stl위젯의 차이와 stf에 필수로 들어가야하는게 무엇인지!
stf에서 변수 이용하는것과 받아올때 stateful class 에서 받고 state쪽에서 이용하는법. 
dispose, init, 등등 override하는부분
*/


import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: (ScaffoldWidget())));
}

class ScaffoldWidget extends StatelessWidget {
  const ScaffoldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Body());
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [ExampleStateless(), ExampleStatefull(index: 3)],
    );
  }
}

class ExampleStateless extends StatelessWidget {
  const ExampleStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.red,
      ),
    );
  }
}

class ExampleStatefull extends StatefulWidget {
  final int index;
  const ExampleStatefull({required this.index ,super.key});

  @override
  State<ExampleStatefull> createState() => _ExampleStatefullState();
}

//모든 변수는 State안에 넣는다.
class _ExampleStatefullState extends State<ExampleStatefull> {
  // late int index;
  // int? index;
  late int _index;

  @override
  void initState() {
    super.initState();
    // index = 5;
    _index = widget.index;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            if (_index == 5) {
              _index = 0;
              return;
            }
            _index++;
          });

          print(_index);
        },
        child: Container(
          color: Colors.blue.withOpacity(_index / 5),
          child: Center(
            child: Text('$_index'),
          ),
        ),
      ),
    );
  }
}
