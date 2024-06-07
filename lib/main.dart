import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Screen1(),
    );
  }
}

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color(0xff131921),
        leading: const Icon(Icons.arrow_back),
        centerTitle: true,
        title: Column(
          children: [
            Text(
              'Москва в кино',
              style: TextStyle(fontSize: 10),
              selectionColor: Color(0xffFFFFFF),
            ),
            Text(
              'Москва Марины Цветаевой',
              style: TextStyle(fontSize: 10),
              selectionColor: Color(0xffFFFFFF99),
            ),
          ],
        ),
        actions: const [
          Icon(Icons.clear),
          SizedBox(width: 20),
        ],
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Container(
                width: 175,
                height: 4,
                color: const Color(0xff64BDFF),
              ),
            ],
          ),
          Row(
            children:  [
              Icon(Icons.question_mark),
              SizedBox(width: 8),
              Text('1/10'),
            ],
          ),
          Expanded(
            child: Image.asset(
              'assets/images/image.png',
            ),
          ),
          Expanded(
            child: const Text(
              'С момента выхода на экраны советских кинотеатров фильма «Служебный роман» прошло уже более 40 лет. Картина моментально завоевала сердца публики и стала одной из самых любимых отечественных комедий.',
              style: TextStyle(fontSize: 14),
            ),
          ),
          Expanded(
            child: const Text(
              'В Москве на улице Пятницкой находится павильон метро, размещенный на месте снесенной церкви. Напишите название церкви. Подсказкой станет стена-граффити дома, стоящего прямо у выхода метро «Новокузнецкая».',
              style: TextStyle(fontSize: 14),
            ),
          ),
          Icon(Icons.circle_sharp,  ),
          Expanded(child: Text('Наш директор',),),
          Icon(Icons.circle_outlined),
          Expanded(child: Text('Наша мымра'),),
          Icon(Icons.circle_outlined),
          Expanded(child: Text('Мужчина в юбке', ),),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.center,
                  height: 80,
                  color: Colors.red,
                  child: const Text('Ответить'),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('Далее'),
                        SizedBox(width: 10),
                        Icon(Icons.arrow_forward_sharp),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
