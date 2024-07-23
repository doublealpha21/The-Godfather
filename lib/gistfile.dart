import 'package:flutter/material.dart';
class CounterInfo {
  CounterInfo({
    required this.name,
    required this.value,
  });

  final String name;
  final int value;
}

Future<String?> showDialog() {

  Navigator.of(context).pop(text);

  return Future.value("Games");
}

Future<void> showDialogSimulator() async {
  final value = await showDialog();

  if (value == null) return;

  addCounter(value);
}

List<CounterInfo> counterInfoList = [];

void addCounter(String text) {
  counterInfoList.add(CounterInfo(name: text, value: 0));
  setState(() {});
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: ListView(
      children: counterInfoList
          .map((e) => CounterInfoContainer(counterInfo: e))
          .toList(),
    ),
  );
}

class CounterInfoContainer {
  final CounterInfo counterInfo;

  CounterInfoContainer({required this.counterInfo});
}