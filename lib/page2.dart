import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:intl/intl.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart'
    as dtPicker;

class Page2 extends StatefulWidget {
  const Page2({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController Controller = TextEditingController();
  late DateTime _selectedDate;

  void _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate:
          DateTime.now(), // Set the initial date to display in the picker
      firstDate: DateTime(1970, 1, 1), // Set the range of selectable dates
      lastDate: DateTime(2023, 12, 31),
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _dateController.text = _selectedDate
            .toString(); // Update the text field with the selected date
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("Page 2"),
        automaticallyImplyLeading: false, // to remove auto return button
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to Page 2!',
              style: TextStyle(fontSize: 20),
            ),
            const Text(
              'Select your date of birth:',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              width: 200.0,
              child: TextField(
                  controller:
                      _dateController, //editing controller of this TextField
                  decoration: const InputDecoration(
                      icon: Icon(Icons.calendar_today), //icon of text field
                      labelText: "Enter Date" //label text of field
                      ),
                  readOnly: true, // when true user cannot edit text
                  style: const TextStyle(fontSize: 20),
                  onTap: () async {
                    //when click we have to show the datepicker
                    _selectDate(context);
                  }),
            ),
            // TextButton(
            //     onPressed: () {
            //       dtPicker.DatePicker.showDatePicker(
            //         context,
            //         showTitleActions: true,
            //         minTime: DateTime(2000, 1, 1),
            //         maxTime: DateTime(2022, 12, 31),
            //         theme: const dtPicker.DatePickerTheme(
            //             headerColor: Color.fromARGB(255, 173, 132, 168),
            //             backgroundColor: Color.fromARGB(255, 255, 255, 255),
            //             itemStyle: TextStyle(
            //                 color: Colors.white,
            //                 fontWeight: FontWeight.bold,
            //                 fontSize: 18),
            //             doneStyle: TextStyle(
            //                 color: Color.fromARGB(255, 107, 43, 93),
            //                 fontSize: 16)),
            //         onChanged: (date) {
            //           print('change $date');
            //         },
            //         onConfirm: (date) {
            //           print('confirm $date');
            //           Controller.text = DateFormat('yyyy-MM-dd').format(date);
            //         },
            //         currentTime: DateTime.now(),
            //       );
            //     },
            //     child: const Text(
            //       'Show date time picker',
            //       style: TextStyle(color: Colors.blue),
            //     )),
            // TextField(
            //   controller: Controller, //editing controller of this TextField
            //   decoration: const InputDecoration(
            //       icon: Icon(Icons.calendar_today), //icon of text field
            //       labelText: "selected date is ___" //label text of field
            //       ),
            //   readOnly: true, // when true user cannot edit text
            //   style: const TextStyle(fontSize: 15),
            // ),
          ],
        ),
      ),
    );
  }
}
