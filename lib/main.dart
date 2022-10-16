import 'package:flutter/material.dart';
import 'package:musickit/notepicker.dart';

import 'note.dart';

void main() {
  runApp(const MyApp());
}

Note note = Note();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Kit',
      theme: ThemeData(
      ),
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            note.GenerateNote(NotePicker());
          },
          backgroundColor: Colors.black,
        ),
        body: Stack(
          children: [
            Image.asset("assets/images/dizek.jpg"),
            Positioned(
              top: note.Topposition,
              child: SizedBox(width: 40,
                child: Image.asset("assets/images/ustnota.png"),
              ),
            ),
          ]
        ),
        backgroundColor: Colors.grey[900],
        drawer: Drawer(
          backgroundColor: Colors.grey[900],
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const SizedBox(
                height: 120,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Text('Menu',style: TextStyle(color: Colors.white,))
                ),
              ),
              ListTile(
                title: const Text('Note Practice',style: TextStyle(color: Colors.white,)),
                onTap: () {
                },
              ),
              ListTile(
                title: const Text('About',style: TextStyle(color: Colors.white,)),
                onTap: () {
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text("App"),
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}

class NotePickerButton extends StatefulWidget{
  const NotePickerButton({Key? key}) : super(key: key);

  @override
  _NotePickerButtonState createState() => _NotePickerButtonState();
}

class _NotePickerButtonState extends State<NotePickerButton> {
  @override
  Widget build(BuildContext context) {
    setState(() {

    });
    return Positioned(
      top: note.Topposition,
      child: SizedBox(width: 40,
        child: Image.asset(note.image!),
      ),
    );
  }
}
