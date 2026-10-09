import 'package:flutter/material.dart';

class GenderSelection extends StatefulWidget {
  const GenderSelection({super.key});
  @override
  State<GenderSelection> createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  String? sex = 'male'; //TODO jelaskan
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gender Selection Example')),
      body: Center(
        child: RadioGroup<String>(
          groupValue: sex,
          onChanged: (String? val) {
            setState(() {
              sex = val;
            });
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Gender: '),
              SizedBox(width: 8),
              Radio<String>(value: 'male'),
              Text('Male'),
              SizedBox(width: 16),
              Radio<String>(value: 'female'),
              Text('Female'),
            ],
          ),
        ),
      ),
    );
  }
}
