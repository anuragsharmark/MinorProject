import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  static const String id = "/calculator";
  Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String userinput = '';
  String result = '0';
  bool IsCal = false;
  bool IsClick = false;

  double getNumber(double input) =>
      double.parse('$input'.substring(0, '$input'.indexOf('.') + 3));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(252, 238, 237, 1),
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          foregroundColor: Colors.black,
          backgroundColor: Color.fromRGBO(247, 164, 158, 1),
          centerTitle: true,
          title: Text(
            'Calculator',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 46,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 2, color: Colors.grey),
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.centerRight,
              height: 100,
              width: double.infinity,
              child: Text(
                userinput,
                style: TextStyle(
                  color: Color.fromRGBO(148, 141, 113, 1),
                  fontSize: IsCal ? 40 : 60,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.centerRight,
              height: 100,
              width: double.infinity,
              child: Text(
                result,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: IsCal ? 60 : 40,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MyButtonWidget(
                      value: 'C',
                      ButtonColor: Colors.red,
                      BorderColor: Colors.red,
                      TextColor: Colors.white,
                    ),
                    MyButtonWidget(
                      value: '⌫',
                      TextColor: Colors.red,
                      BorderColor: Colors.red,
                      FontSize: 32,
                    ),
                    MyButtonWidget(
                      value: '÷',
                      TextColor: Colors.blue,
                      BorderColor: Colors.blue,
                    ),
                    MyButtonWidget(
                      value: '%',
                      FontSize: 32,
                      TextColor: Colors.blue,
                      BorderColor: Colors.blue,
                    )
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MyButtonWidget(
                      value: '7',
                      BorderColor: Color.fromRGBO(148, 141, 113, 1),
                    ),
                    MyButtonWidget(
                      value: '8',
                      BorderColor: Color.fromRGBO(148, 141, 113, 1),
                    ),
                    MyButtonWidget(
                      value: '9',
                      BorderColor: Color.fromRGBO(148, 141, 113, 1),
                    ),
                    MyButtonWidget(
                      value: 'X',
                      FontSize: 32,
                      TextColor: Colors.blue,
                      BorderColor: Colors.blue,
                    )
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MyButtonWidget(
                      value: '4',
                      BorderColor: Color.fromRGBO(148, 141, 113, 1),
                    ),
                    MyButtonWidget(
                      value: '5',
                      BorderColor: Color.fromRGBO(148, 141, 113, 1),
                    ),
                    MyButtonWidget(
                      value: '6',
                      BorderColor: Color.fromRGBO(148, 141, 113, 1),
                    ),
                    MyButtonWidget(
                      value: '-',
                      TextColor: Colors.blue,
                      BorderColor: Colors.blue,
                    )
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MyButtonWidget(
                      value: '1',
                      BorderColor: Color.fromRGBO(148, 141, 113, 1),
                    ),
                    MyButtonWidget(
                      value: '2',
                      BorderColor: Color.fromRGBO(148, 141, 113, 1),
                    ),
                    MyButtonWidget(
                      value: '3',
                      BorderColor: Color.fromRGBO(148, 141, 113, 1),
                    ),
                    MyButtonWidget(
                      value: '+',
                      BorderColor: Colors.blue,
                      TextColor: Colors.blue,
                    )
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                SingleChildScrollView(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MyButtonWidget(
                        value: '0',
                        BorderColor: Color.fromRGBO(148, 141, 113, 1),
                        ButtonColor: Color.fromRGBO(148, 141, 113, 1),
                        BtnWidth: 180,
                      ),
                      MyButtonWidget(
                        value: '.',
                        BorderColor: Color.fromRGBO(148, 141, 113, 1),
                      ),
                      MyButtonWidget(
                        value: '=',
                        BorderColor: Color.fromRGBO(148, 141, 113, 1),
                        FontSize: 52,
                        ButtonColor: Color.fromRGBO(148, 141, 113, 1),
                      )
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

  Widget MyButtonWidget(
      {value,
      Color TextColor = Colors.black,
      double FontSize = 40,
      Color BorderColor = const Color.fromARGB(255, 231, 221, 191),
      Color ButtonColor = Colors.transparent,
      double BtnHeight = 80,
      double BtnWidth = 80}) {
    return InkWell(
      onTap: () {
        setState(() {
          ControlButton(value);
        });
      },
      borderRadius: BorderRadius.circular(50),
      splashColor: Colors.black54,
      child: Container(
        height: BtnHeight,
        width: BtnWidth,
        decoration: BoxDecoration(
            border: Border.all(color: BorderColor, width: 2),
            borderRadius: BorderRadius.circular(50),
            color: ButtonColor),
        child: Center(
          child: Text(
            value,
            style: TextStyle(color: TextColor, fontSize: FontSize),
          ),
        ),
      ),
    );
  }

  ControlButton(String value) {
    if (userinput.isEmpty &&
        (value == '+' ||
            value == '-' ||
            value == 'X' ||
            value == '÷' ||
            value == '%')) {
      return;
    } else if (value == '+' ||
        value == '-' ||
        value == 'X' ||
        value == '÷' ||
        value == '%' ||
        value == '.') {
      IsClick = true;
    }
    if (IsClick) {
      if ((value == '+' ||
              value == '-' ||
              value == 'X' ||
              value == '÷' ||
              value == '%') &&
          (userinput.contains('+') ||
              userinput.contains('-') ||
              userinput.contains('*') ||
              userinput.contains('÷') ||
              userinput.contains('%'))) {
        return;
      } else if (value == '.' && userinput[(userinput.length - 1)] == '.') {
        return;
      }
    }

    if (value == 'C') {
      IsClick = false;
      IsCal = false;
      userinput = '';
      result = '0';
      return;
    }
    if (value == '⌫' && userinput.isEmpty) {
      return;
    } else if (value == '⌫' && userinput.isNotEmpty) {
      userinput = userinput.substring(0, userinput.length - 1);
      IsCal = false;
      IsClick = false;
      return;
    } else if (value == '=') {
      if (userinput.isEmpty) {
        return;
      }
      if (userinput.endsWith('+') ||
          userinput.endsWith('-') ||
          userinput.endsWith('÷') ||
          userinput.endsWith('*') ||
          userinput.endsWith('%')) {
        result = 'Error';
        return;
      }
      IsCal = true;
      var inputVal = userinput;
      inputVal = inputVal.replaceAll('X', '*');
      inputVal = inputVal.replaceAll('÷', '/');
      Parser p = Parser();
      Expression expression = p.parse(inputVal);
      ContextModel cm = ContextModel();
      var finalResult = expression.evaluate(EvaluationType.REAL, cm);
      result = finalResult.toString();
      if (result.contains('.')) {
        double val = double.parse(result);
        result = getNumber(val).toString();
        userinput = result;
        return;
      }
      if (result.endsWith('.0')) {
        result = result.substring(0, result.length - 2);
      }
      userinput = result;
      return;
    } else {
      if (value == 'X') {
        IsCal = false;
        userinput += '*';
        return;
      } else {
        IsCal = false;
        userinput = userinput + value;
      }
    }
  }
}
