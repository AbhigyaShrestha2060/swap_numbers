import 'package:flutter/material.dart';

class SwapNumbers extends StatefulWidget {
  const SwapNumbers({super.key});

  @override
  State<SwapNumbers> createState() => _SwapNumbersState();
}

class _SwapNumbersState extends State<SwapNumbers> {
  int? first;
  int? second;
  int third = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Swapping Two Numbers",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            //Entering First Number
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter The First Number",
              ),
              onChanged: (value) {
                first = int.parse(value);
              },
            ),
            const SizedBox(
              height: 8,
            ),

            //Entering Second Number
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter The First Number",
              ),
              onChanged: (value) {
                second = int.parse(value);
              },
            ),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  third = first!;
                  first = second;
                  second = third;
                });
              },
              child: const Text("SWAP"),
            ),
            //Displaying the Swapped numbers
            Text(
              'First Number is $first and Second Number is $second',
              style: const TextStyle(
                fontSize: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
