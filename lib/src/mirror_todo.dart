import 'package:flutter/material.dart';

import 'ui/page/todo_page.dart';

class MirrorTodo extends StatelessWidget {
  const MirrorTodo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mirror Todo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        fontFamily: 'MPLUS1',
      ),
      home: const TodoPage(),
    );
  }
}
