import 'package:escola/controler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SegundaTela extends StatelessWidget {
  SegundaTela({Key? key}) : super(key: key);

  final c = Controler();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text(' Inicio')),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: c.callGetTaskes,
                  child: const Text('Chamar Lista')),
              GetBuilder<Controler>(
                  init: c,
                  builder: (ctl) {
                    return Expanded(
                      child: ListView.builder(
                          itemCount: c.taskList.length,
                          itemBuilder: (context, index) {
                            final task = c.taskList[index];
                            return ListTile(
                              leading: IconButton(
                                  onPressed: () {
                                    c.deleteTask(index);
                                  },
                                  icon: const Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                  )),
                              title: Text("${task.title}"),
                              subtitle: Text("${task.description}"),
                              trailing: Checkbox(
                                  value: task.isComplete,
                                  onChanged: (val) {
                                    c.adiccionar(index);
                                  }),
                            );
                          }),
                    );
                  }),
            ],
          ),
        ));
  }
}
