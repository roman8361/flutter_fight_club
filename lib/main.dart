import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final String _one = "1";

  BodyPart? defendingBodyPart;
  BodyPart? attackingBodyPart;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(213, 222, 240, 1),
      body: Column(
        children: [
          SizedBox(height: 40),
          Row(
            children: [
              SizedBox(width: 16),
              Expanded(child: Center(child: Text("You".toUpperCase()))),
              SizedBox(width: 12),
              Expanded(child: Center(child: Text("Enemy".toUpperCase()))),
              SizedBox(width: 16)
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            children: [
              SizedBox(width: 16),
              Expanded(child: Center(child: Text(_one.toUpperCase()))),
              SizedBox(width: 12),
              Expanded(child: Center(child: Text(_one.toUpperCase()))),
              SizedBox(width: 16)
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            children: [
              SizedBox(width: 16),
              Expanded(child: Center(child: Text(_one.toUpperCase()))),
              SizedBox(width: 12),
              Expanded(child: Center(child: Text(_one.toUpperCase()))),
              SizedBox(width: 16)
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            children: [
              SizedBox(width: 16),
              Expanded(child: Center(child: Text(_one.toUpperCase()))),
              SizedBox(width: 12),
              Expanded(child: Center(child: Text(_one.toUpperCase()))),
              SizedBox(width: 16)
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            children: [
              SizedBox(width: 16),
              Expanded(child: Center(child: Text(_one.toUpperCase()))),
              SizedBox(width: 12),
              Expanded(child: Center(child: Text(_one.toUpperCase()))),
              SizedBox(width: 16)
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            children: [
              SizedBox(width: 16),
              Expanded(child: Center(child: Text(_one.toUpperCase()))),
              SizedBox(width: 12),
              Expanded(child: Center(child: Text(_one.toUpperCase()))),
              SizedBox(width: 16)
            ],
          ),
          Expanded(child: SizedBox()),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  children: [
                    Text("Defend".toUpperCase()),
                    SizedBox(height: 13),
                    BodyPartButton(
                      bodyPart: BodyPart.head,
                      selected: defendingBodyPart == BodyPart.head,
                      bodyPartSetter: _selectDefendingBodyPart,
                    ),
                    SizedBox(height: 14),
                    BodyPartButton(
                      bodyPart: BodyPart.torso,
                      selected: defendingBodyPart == BodyPart.torso,
                      bodyPartSetter: _selectDefendingBodyPart,
                    ),
                    SizedBox(height: 14),
                    BodyPartButton(
                      bodyPart: BodyPart.legs,
                      selected: defendingBodyPart == BodyPart.legs,
                      bodyPartSetter: _selectDefendingBodyPart,
                    ),
                  ],
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  children: [
                    Text("Attack".toUpperCase()),
                    SizedBox(height: 13),
                    BodyPartButton(
                      bodyPart: BodyPart.head,
                      selected: attackingBodyPart == BodyPart.head,
                      bodyPartSetter: _selectAttackingBodyPart,
                    ),
                    SizedBox(height: 14),
                    BodyPartButton(
                      bodyPart: BodyPart.torso,
                      selected: attackingBodyPart == BodyPart.torso,
                      bodyPartSetter: _selectAttackingBodyPart,
                    ),
                    SizedBox(height: 14),
                    BodyPartButton(
                      bodyPart: BodyPart.legs,
                      selected: attackingBodyPart == BodyPart.legs,
                      bodyPartSetter: _selectAttackingBodyPart,
                    ),
                  ],
                ),
              ),
              SizedBox(width: 16)
            ],
          ),
          SizedBox(height: 14),
          Row(
            children: [
              SizedBox(width: 16),
              Expanded(
                  child: SizedBox(
                height: 40,
                child: ColoredBox(
                  color: Color.fromRGBO(0, 0, 0, 0.87),
                  child: Center(
                    child: Text(
                      "Go".toUpperCase(),
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  ),
                ),
              )),
              SizedBox(width: 16)
            ],
          ),
          SizedBox(height: 40)
        ],
      ),
    );
  }

  void _selectDefendingBodyPart(final BodyPart value) {
    setState(() {
      defendingBodyPart = value;
    });
  }

  void _selectAttackingBodyPart(final BodyPart value) {
    setState(() {
      attackingBodyPart = value;
    });
  }
}

class BodyPart {
  final String name;

  const BodyPart._(this.name);

  static const head = BodyPart._("Head");
  static const torso = BodyPart._("Torso");
  static const legs = BodyPart._("Legs");

  @override
  String toString() {
    return 'BodyPart{name: $name}';
  }
}

class BodyPartButton extends StatelessWidget {
  final BodyPart bodyPart;
  final bool selected;
  final ValueSetter<BodyPart> bodyPartSetter;

  const BodyPartButton({
    Key? key,
    required this.bodyPart,
    required this.selected,
    required this.bodyPartSetter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => bodyPartSetter(bodyPart),
      child: SizedBox(
        height: 40,
        child: ColoredBox(
          color: selected
              ? const Color.fromRGBO(28, 121, 206, 1)
              : Color.fromRGBO(0, 0, 0, 0.38),
          child: Center(
            child: Text(bodyPart.name.toUpperCase()),
          ),
        ),
      ),
    );
  }
}
