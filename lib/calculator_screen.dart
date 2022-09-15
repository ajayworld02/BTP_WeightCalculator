import 'dart:math';

import 'package:bmi_calculator/bmi_result_screen.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  double height = 175;
  double weight = 75;
  double cuweight = 75;
  double week = 25;
  bool isSingle = true;
  String message = '';
  double result = 1;
  double result1 = 1;
  double high = 1;
  double low = 1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0b0f1f),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xff0b0f1f),
          title: const Text('WEIGHT GAIN CALCULATOR'),
          centerTitle: true),
      body: Column(
        children: [
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isSingle = true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: isSingle
                                ? const Color(0xffd500f9)
                                : const Color(0xff1b1a2e),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.perm_identity,
                                size: 70,
                                color: Colors.white,
                              ),
                              Text(
                                'SINGLE',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isSingle = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: !isSingle
                                ? const Color(0xffd500f9)
                                : const Color(0xff1b1a2e),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.people_outline,
                                size: 70,
                                color: Colors.white,
                              ),
                              Text(
                                'TWINS',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff1b1a2e),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'HEIGHT',
                              style: TextStyle(
                                fontSize: 22,
                                color: Color(0xff6f6f7f),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  '${height.round()}',
                                  style: const TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900),
                                ),
                                const Text(
                                  ' cm',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xff6f6f7f),
                                  ),
                                ),
                              ],
                            ),
                            Slider(
                              value: height,
                              max: 220.0,
                              min: 70.0,
                              thumbColor: const Color(0xffd500f9),
                              activeColor: const Color(0xff494755),
                              inactiveColor: const Color(0xff494755),
                              onChanged: (value) {
                                setState(() {
                                  height = value;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff1b1a2e),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'WEEK',
                              style: TextStyle(
                                fontSize: 22,
                                color: Color(0xff6f6f7f),
                              ),
                            ),
                            Text(
                              '${week.toInt()}',
                              style: const TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton.small(
                                  heroTag: 'week+',
                                  backgroundColor: const Color(0xff434554),
                                  child: const Icon(
                                    Icons.remove,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      week--;
                                    });
                                  },
                                ),
                                const SizedBox(width: 20),
                                FloatingActionButton.small(
                                  heroTag: 'week-',
                                  backgroundColor: const Color(0xff434554),
                                  child: const Icon(
                                    Icons.add,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      week++;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff1b1a2e),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'WEIGHT BEFORE PREGNANCY (KG)',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xff676675),
                              ),
                            ),
                            Text(
                              '${weight.toInt()}',
                              style: const TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  heroTag: 'weight-',
                                  backgroundColor: const Color(0xff434554),
                                  child: const Icon(
                                    Icons.remove,
                                    size: 20,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                ),
                                const SizedBox(width: 20),
                                FloatingActionButton(
                                  heroTag: 'weight+',
                                  backgroundColor: const Color(0xff434554),
                                  child: const Icon(
                                    Icons.add,
                                    size: 20,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff1b1a2e),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'CURRENT WEIGHT (KG)',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xff676675),
                              ),
                            ),
                            Text(
                              '${cuweight.toInt()}',
                              style: const TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  heroTag: 'cuweight+',
                                  backgroundColor: const Color(0xff434554),
                                  child: const Icon(
                                    Icons.remove,
                                    size: 20,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      cuweight--;
                                    });
                                  },
                                ),
                                const SizedBox(width: 20),
                                FloatingActionButton(
                                  heroTag: 'cuweight-',
                                  backgroundColor: const Color(0xff434554),
                                  child: const Icon(
                                    Icons.add,
                                    size: 20,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      cuweight++;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            color: const Color(0xffd500f9),
            height: 50,
            width: double.infinity,
            child: MaterialButton(
              onPressed: () {
                var result = weight / pow(height / 100, 2);
                result1 = double.parse((result).toStringAsFixed(2));
                if (result < 18.5) {
                  message = 'Type: Underweight';
                  high = 18;
                  low = 12.5;
                } else if (result < 24.9) {
                  message = 'Type: Normal';
                  high = 16;
                  low = 11.5;
                } else if (result < 11.5) {
                  message = 'Type: Overweight';
                  high = 11.5;
                  low = 7;
                } else {
                  message = 'Type: Obese';
                  high = 9;
                  low = 5;
                }

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultScreen(
                      height: height,
                      weight: weight,
                      cuweight: cuweight,
                      isSingle: isSingle,
                      message: message,
                      result: result,
                      result1: result1,
                      high: high,
                      low: low,
                    ),
                  ),
                );
              },
              child: const Text(
                'CALCULATE',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
