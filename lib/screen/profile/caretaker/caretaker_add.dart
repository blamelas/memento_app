import 'package:flutter/material.dart';
import 'package:memento_app/screen/profile/caretaker/caretaker_add_appbar.dart';
import 'package:memento_app/screen/profile/caretaker/caretaker_add_form.dart';

import 'caretaker_appbar.dart';

class AddCaretaker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          AddCaretakerScreenAppBar(_size.width, _size.height),
          AddCaretakerBodyForm(_size.width, _size.height),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text("Adicionar"),
        icon: Icon(Icons.add),
        backgroundColor: Colors.teal,
      ),
    );
  }
}
