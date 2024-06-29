import 'package:flutter/material.dart';
import 'package:incubator/list_provider.dart';
import 'package:incubator/second.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ListProvider>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Text(value.numbers.last.toString()),
            Expanded(
              child: ListView.builder(
                itemCount: value.numbers.length,
                itemBuilder: (context, index) {
                  return Text(value.numbers[index].toString());
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => const Second(),
                  ),
                );
              },
              child: const Text("Second"),
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
