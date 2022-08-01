import 'package:flutter/material.dart';
import 'package:calculator_app/components.dart';
import 'package:calculator_app/constants.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const Calculator());
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String input = '';
  String answer = '';
  void equalpress() {
    String finalinput = input;
    finalinput = input.replaceAll('x', '*');
    Parser p = Parser();
    Expression expression = p.parse(finalinput);
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
              Expanded(
                  child: Align(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                        child: Text(input,
                            style: const TextStyle(
                              fontSize: 30,
                              color: white,
                            ))),
                    const SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        answer,
                        style: const TextStyle(fontSize: 40, color: white),
                      ),
                    ),
                  ],
                ),
              )),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          MyButton(
                              text: 'AC',
                              onpress: () {
                                input = '';
                                answer = '';
                                setState(() {});
                              }),
                          MyButton(
                              text: '+/-',
                              onpress: () {
                                input += '+/-';
                                setState(() {});
                              }),
                          MyButton(
                              text: '%',
                              onpress: () {
                                input += '%';
                                setState(() {});
                              }),
                          MyButton(
                            text: '/',
                            onpress: () {
                              input += '/';
                              setState(() {});
                            },
                            color: grey,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          MyButton(
                              text: '7',
                              onpress: () {
                                input += '7';
                                setState(() {});
                              }),
                          MyButton(
                              text: '8',
                              onpress: () {
                                input += '8';
                                setState(() {});
                              }),
                          MyButton(
                              text: '0',
                              onpress: () {
                                input += '0';
                                setState(() {});
                              }),
                          MyButton(
                            text: 'x',
                            onpress: () {
                              input += 'x';
                              setState(() {});
                            },
                            color: grey,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          MyButton(
                              text: '4',
                              onpress: () {
                                input += '4';
                                setState(() {});
                              }),
                          MyButton(
                              text: '5',
                              onpress: () {
                                input += '5';
                                setState(() {});
                              }),
                          MyButton(
                              text: '6',
                              onpress: () {
                                input += '6';
                                setState(() {});
                              }),
                          MyButton(
                            text: '-',
                            onpress: () {
                              input += '-';
                              setState(() {});
                            },
                            color: grey,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          MyButton(
                              text: '1',
                              onpress: () {
                                input += '1';
                                setState(() {});
                              }),
                          MyButton(
                              text: '2',
                              onpress: () {
                                input += '2';
                                setState(() {});
                              }),
                          MyButton(
                              text: '3',
                              onpress: () {
                                input += '3';
                                setState(() {});
                              }),
                          MyButton(
                            text: '+',
                            onpress: () {
                              input += '+';
                              setState(() {});
                            },
                            color: grey,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          MyButton(
                              text: '0',
                              onpress: () {
                                input += '0';
                                setState(() {});
                              }),
                          MyButton(
                              text: '.',
                              onpress: () {
                                input += '.';
                                setState(() {});
                              }),
                          MyButton(
                              text: 'DEL',
                              onpress: () {
                                input = input.substring(0, input.length - 1);
                                setState(() {});
                              }),
                          MyButton(
                            text: '=',
                            onpress: () {
                              equalpress();
                              setState(() {});
                            },
                            color: grey,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
