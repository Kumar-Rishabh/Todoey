import 'package:flutter/material.dart';
import 'package:todoey_flutter/components/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/model/task_data.dart';

class TaskList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskData,child){
        return ListView.builder(
          itemBuilder: (context,index){
            final task=taskData.tasks[index];
            return TaskTile(

              taskTitle: task.name,
              isChecked: task.isDone,
              checkboxCallback: (newvalue){
                taskData.updateTask(task);

              },
              longPressCallback: (){
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      }
    );
  }
}




