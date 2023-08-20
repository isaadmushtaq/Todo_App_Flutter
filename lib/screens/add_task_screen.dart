import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(30),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            )),

          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent),
                    padding: MaterialStateProperty.all(const EdgeInsets.all(18))),
                onPressed: null,
                child: const Text('Add',
                  style: TextStyle(color: Colors.white,fontSize: 18),
                ),

              )
            ],
          ),
      ),
    );
  }
}
