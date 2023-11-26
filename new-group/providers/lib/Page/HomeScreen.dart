import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:msh_checkbox/msh_checkbox.dart';
import 'package:provider/provider.dart';
import 'package:providers/model/provider/toduprovider.dart';
import 'package:providers/model/todo_model.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<tudoprovider>(context);
    TextEditingController textcontroller = TextEditingController();
    Future<void> showDiloge() async {
      return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Add Data'),
            content: TextField(
              controller: textcontroller,
              decoration: const InputDecoration(
                  hintText: "Type here", border: OutlineInputBorder()),
            ),
            actions: [
              Center(
                child: ElevatedButton(
                    onPressed: () {
                      if(textcontroller.text.isEmpty){
                        return;
                      }
                      provider.addtodulist(new todoModel(
                          title: textcontroller.text, iscomplte: false));
                      Navigator.pop(context);
                    },
                    child: Text("Add Todo")),
              )
            ],
          );
        },
      );
    }

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff4d00fc),
        child: Icon(Icons.add_circle),
        onPressed: () {
          showDiloge();
        },
      ),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(35),
                      bottomLeft: Radius.circular(35)),
                  color: Color(0xff4d00fc)),
              child: Center(
                  child: Text(
                "To do List",
                style: TextStyle(color: Colors.white, fontSize: 25),
              )),
            ),
          ),
          Expanded(
            flex: 4,
            child: ListView.builder(
              itemCount: provider.todulist.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    trailing: IconButton(onPressed: () {
                      provider.removetodu(provider.todulist[index]);
                    }, icon: Icon(Icons.delete)),
                    leading: MSHCheckbox(
                      value: provider.todulist[index].iscomplte,
                      onChanged: (selected) {
                        provider.todostususchange(provider.todulist[index]);
                      },
                    ),
                    title: Text(provider.todulist[index].title),
                  ),
                );
              },
            ),
          ),
        ],
      )),
    );
  }
}
