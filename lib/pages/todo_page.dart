import 'package:flutter/material.dart';
import 'package:notesphere/utils/text_styles.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo Page", style: AppTextStyles.subTitle,),
      ),
    );
  }
}