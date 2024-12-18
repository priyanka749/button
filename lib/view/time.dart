import 'package:flutter/material.dart';

class TimeDatePickerPage extends StatefulWidget {
  const TimeDatePickerPage({super.key});

  @override
  TimeDatePickerPageState createState() => TimeDatePickerPageState();
}

class TimeDatePickerPageState extends State<TimeDatePickerPage> {
  TimeOfDay time = const TimeOfDay(hour: 12, minute: 0);
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Time and Date Picker'),
        backgroundColor: const Color.fromARGB(255, 205, 221, 203),
        centerTitle: true,
        elevation: 5,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Color.fromARGB(255, 253, 255, 255)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // Time Display
                Text(
                  'Time: ${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: Colors.teal.shade800,
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () async {
                    TimeOfDay? newTime = await showTimePicker(
                      context: context,
                      initialTime: time,
                    );
                    if (newTime != null) {
                      setState(() {
                        time = newTime;
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal.shade800, // Button color
                    foregroundColor: Colors.white, // Text color
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Change Time',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                const SizedBox(height: 40),
                // Date Display
                Text(
                  'Date: ${date.day.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}/${date.year}',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: Colors.teal.shade800,
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () async {
                    DateTime? newDate = await showDatePicker(
                      context: context,
                      initialDate: date,
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2050),
                    );
                    if (newDate != null) {
                      setState(() {
                        date = newDate;
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal.shade800, // Button color
                    foregroundColor: Colors.white, // Text color
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Change Date',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
