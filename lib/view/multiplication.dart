import 'package:flutter/material.dart';


class Multiplication extends StatefulWidget {
  @override
  _MultiplicationState createState() => _MultiplicationState();
}

class _MultiplicationState extends State<Multiplication> {
  final TextEditingController _controller = TextEditingController();
  int _number = 1;
  List<Widget> _tableRows = [];

  void _generateTable() {
    final int? inputNumber = int.tryParse(_controller.text);
    if (inputNumber != null && inputNumber > 0) {
      setState(() {
        _number = inputNumber;
        _tableRows = _generateMultiplicationTable(inputNumber);
      });
    }
  }

  List<Widget> _generateMultiplicationTable(int number) {
    List<Widget> rows = [];
    for (int i = 1; i <= 10; i++) {
      rows.add(
        Text(
          '$number x $i = ${number * i}',
          style: TextStyle(fontSize: 18),
        ),
      );
    }
    return rows;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Multiplication Table '),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter a number',
                border: OutlineInputBorder(),
              ),
              onSubmitted: (_) => _generateTable(),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _generateTable,
              child: Text('Generate Table'),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: _tableRows,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
