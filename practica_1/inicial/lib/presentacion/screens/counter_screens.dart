import "package:flutter/material.dart";

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCouter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contador"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$clickCouter',
            style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
          ),
          Text(
            clickCouter == 1 ? "Click" : "Clicks",
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w100),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => clickCouter++),
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
