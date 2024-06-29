import 'package:flutter/material.dart';
import 'package:incubator/list_provider.dart';
import 'package:provider/provider.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ListProvider>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: const Text("Second"),
        ),
        body: Column(
          children: [
            Text(
              value.numbers.last.toString(),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: value.numbers.length,
                  itemBuilder: (context, index) {
                    return Text(
                      value.numbers[index].toString(),
                    );
                  }),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            value.add();
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
