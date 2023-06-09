// ignore_for_file: prefer_const_constructors,, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({Key? key}) : super(key: key);

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "To-do".text.make(),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
        ],
        bottom: TabBar(
          controller: _controller,
          tabs: const [
            //Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: ("Assigned")),
            Tab(text: ("Missing")),
            Tab(text: ("Done")),
          ],
        ),
      ),
      body: TabBarView(controller: _controller, children: const [
        AssignedTODo(),
        MissingToDo(),
        DoneToDo(),
      ]),
      drawer: Drawer(),
    );
  }
}

class AssignedTODo extends StatelessWidget {
  const AssignedTODo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: "Assigned task will appear here.".text.bold.make(),
    );
  }
}

class MissingToDo extends StatelessWidget {
  const MissingToDo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: "Missing task will appear here.".text.bold.make(),
    );
  }
}

class DoneToDo extends StatelessWidget {
  const DoneToDo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: "Done task will appear here.".text.bold.make(),
    );
  }
}
