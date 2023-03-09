import 'package:calculatorapp/Screens/buttons.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userInput = '';
  var answer = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        // padding: const EdgeInsets.all(20),
                        alignment: Alignment.centerRight,
                        child: Text(
                          userInput,
                          style: const TextStyle(
                              fontSize: 30, color: Colors.white),
                        ),
                      ),
                      Container(
                        // padding: const EdgeInsets.all(15),
                        alignment: Alignment.centerRight,
                        child: Text(
                          answer,
                          style: const TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          CustomButton(
                            title: 'AC',
                            onPress: () {
                              setState(
                                () {
                                  userInput = '';
                                  answer = '0';
                                },
                              );
                            },
                          ),
                          CustomButton(
                            title: '+/-',
                            onPress: () {},
                          ),
                          CustomButton(
                            title: '%',
                            onPress: () {
                              setState(
                                () {
                                  userInput += '%';
                                },
                              );
                            },
                          ),
                          CustomButton(
                            title: '/',
                            onPress: () {
                              setState(
                                () {
                                  userInput += '/';
                                },
                              );
                            },
                            color: const Color(0xffffa00a),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          CustomButton(
                            title: '7',
                            onPress: () {
                              setState(
                                () {
                                  userInput += '7';
                                },
                              );
                            },
                          ),
                          CustomButton(
                            title: '8',
                            onPress: () {
                              setState(
                                () {
                                  userInput += '8';
                                },
                              );
                            },
                          ),
                          CustomButton(
                            title: '0',
                            onPress: () {
                              setState(
                                () {
                                  userInput += '0';
                                },
                              );
                            },
                          ),
                          CustomButton(
                            title: 'x',
                            onPress: () {
                              setState(
                                () {
                                  userInput += 'x';
                                },
                              );
                            },
                            color: const Color(0xffffa00a),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          CustomButton(
                            title: '4',
                            onPress: () {
                              setState(
                                () {
                                  userInput += '4';
                                },
                              );
                            },
                          ),
                          CustomButton(
                            title: '5',
                            onPress: () {
                              setState(
                                () {
                                  userInput += '5';
                                },
                              );
                            },
                          ),
                          CustomButton(
                            title: '6',
                            onPress: () {
                              setState(
                                () {
                                  userInput += '6';
                                },
                              );
                            },
                          ),
                          CustomButton(
                            title: '-',
                            onPress: () {
                              setState(
                                () {
                                  userInput += '-';
                                },
                              );
                            },
                            color: const Color(0xffffa00a),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          CustomButton(
                            title: '1',
                            onPress: () {
                              setState(
                                () {
                                  userInput += '1';
                                },
                              );
                            },
                          ),
                          CustomButton(
                            title: '2',
                            onPress: () {
                              setState(() {
                                userInput += '2';
                              });
                            },
                          ),
                          CustomButton(
                            title: '3',
                            onPress: () {
                              setState(
                                () {
                                  userInput += '3';
                                },
                              );
                            },
                          ),
                          CustomButton(
                            title: '+',
                            onPress: () {
                              setState(
                                () {
                                  userInput += '+';
                                },
                              );
                            },
                            color: const Color(0xffffa00a),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          CustomButton(
                            title: '0',
                            onPress: () {
                              setState(
                                () {
                                  userInput += '0';
                                },
                              );
                            },
                          ),
                          CustomButton(
                            title: '.',
                            onPress: () {
                              setState(
                                () {
                                  userInput += '.';
                                },
                              );
                            },
                          ),
                          CustomButton(
                            title: 'DEL',
                            onPress: () {
                              setState(
                                () {
                                  userInput = userInput.substring(
                                      0, userInput.length - 1);
                                },
                              );
                            },
                          ),
                          CustomButton(
                            title: '=',
                            onPress: () {
                              equalPressed();
                              setState(() {});
                            },
                            color: const Color(0xffffa00a),
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

  void equalPressed() {
    String finaluserinput = userInput;
    finaluserinput = userInput.replaceAll('x', '*');

    Parser p = Parser();
    Expression exp = p.parse(finaluserinput);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    answer = eval.toString();
  }
}

// import 'package:calculatorapp/Screens/buttons.dart';
// import 'package:flutter/material.dart';


// class HomeScreen extends StatefulWidget {
//   HomeScreen({super.key});
//   var userinput = '';
//   var answe = '';
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 30),
//           child: Column(
//             children: [
//               Row(
//                 children: [
//                   CustomButton(title: 'Ac', onPress: onPress),
//                   CustomButton(title: '+/-', onPress: onPress),
//                   CustomButton(title: '%', onPress: onPress),
//                   CustomButton(title: '/', onPress: onPress),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
