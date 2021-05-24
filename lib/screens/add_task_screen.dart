import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/model/task_data.dart';


class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newitem;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding:
        EdgeInsets.only(top: 10.0, left: 30.0, right: 30.0, bottom: 10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (item){
                newitem=item;

              },
            ),
            SizedBox(
              height: 20.0,
            ),
            TextButton(
                onPressed: () {
                  Provider.of<TaskData>(context,listen: false).addTask(newitem);
                  Navigator.pop(context);
                },
                style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.lightBlueAccent),
                child: Text(
                  'Add',
                )),
          ],
        ),
      ),
    );
  }
}



