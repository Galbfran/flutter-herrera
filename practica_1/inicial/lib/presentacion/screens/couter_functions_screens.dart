import "package:flutter/material.dart";

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCouter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Contador Funciones"),
          actions: [
            IconButton(
              icon: const Icon(Icons.restart_alt),
              onPressed: () => setState(() => clickCouter = 0),
            )
          ],
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCouter',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text(
              clickCouter == 1 ? "Click" : "Clicks",
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w100),
            ),
          ],
        )),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () => setState(() => clickCouter++),
              child: const Icon(Icons.plus_one),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
                icon: Icons.remove,
                onPressed: () => setState(
                    () => clickCouter > 0 ? clickCouter-- : clickCouter)),
          ],
        ));
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  // ignore: prefer_typing_uninitialized_variables
  final onPressed;

  const CustomButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => onPressed(),
      child: Icon(icon),
    );
  }
}
