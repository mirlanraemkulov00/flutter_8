import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Screen4(),
    );
  }
}

class Screen4 extends StatefulWidget {
  const Screen4({super.key});

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  var num1, num2, sum;

  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  
  void add() {
    num1 = int.parse(controller1.text);
    num2 = int.parse(controller2.text);

    setState(() {
      sum = num1 + num2;
    });
  }

  void sub() {
    num1 = int.parse(controller1.text);
    num2 = int.parse(controller2.text);

    setState(
      () {
        sum = num1 - num2;
      },
    );
  }

  void mul() {
    num1 = int.parse(controller1.text);
    num2 = int.parse(controller2.text);

    setState(() {
      sum =  num1 / num2;
    });
  }

  void div() {
    num1 = int.parse(controller1.text);
    num2 = int.parse(controller2.text);

    setState(() {
      sum =  num1 * num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Calculator App'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            
            TextField(
              decoration: InputDecoration(hintText: 'Введите число 1'),
              controller: controller1,
              keyboardType: TextInputType.number,
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Введите число 1'),
              controller: controller2,
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: add,
              child: Text('+'),
            ),
            ElevatedButton(
              onPressed: sub,
              child: Text('-'),
            ),
            ElevatedButton(
              onPressed: mul,
              child: Text('/'),
            ),
            ElevatedButton(
              onPressed: div,
              child: Text('*'),
            ),
            Text(
              ''' Ответ = ${sum == null ? 0 : sum} ''',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }

  
}
