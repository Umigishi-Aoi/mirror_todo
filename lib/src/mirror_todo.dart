import 'package:flutter/material.dart';

import 'constants/constants.dart';
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
      home: Builder(
        builder: (context) {
          return Scaffold(
            backgroundColor: Theme.of(context).colorScheme.primary,
            body: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth >= kDisplayWidthThreshold) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SizedBox(
                        width: kDisplayWidthThreshold,
                        child: TodoPage(),
                      ),
                    ],
                  );
                }
                return const TodoPage();
              },
            ),
          );
        },
      ),
    );
  }
}
