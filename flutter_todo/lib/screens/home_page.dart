import 'package:flutter/material.dart';
import 'package:flutter_todo/network/dio_client.dart';
import 'package:flutter_todo/network/dio_endpoints.dart';

import '../models/task_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<TaskModel> _allTasks = [];

  @override
  void initState() {
    _getData();
    super.initState();
  }

  void _getData() async {
    final client = DioClient();
    final result = await client.dio.get(APIEndPoints.getAllTasks());
    if (result.statusCode == 200) {
      setState(() {
       _allTasks = (result.data as List)
            .map((x) => TaskModel.fromJson(x))
            .toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo App", style: theme.textTheme.titleLarge),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: ListView.builder(itemCount: _allTasks.length, itemBuilder: (context, index) {
            final task = _allTasks[index];
            return Text(task.title, style: theme.textTheme.bodyLarge,);
          }),
        ),
      ),
    );
  }
}
