import 'package:flutter/material.dart';

class SelectWid extends StatefulWidget {
  const SelectWid({Key? key}) : super(key: key);

  @override
  _SelectState createState() => _SelectState();
}

class _SelectState extends State<SelectWid> {
  bool _checkboxValue = false;
  String _radioValue = 'Option 1';
  bool _switchValue = false;
  double _sliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CheckboxListTile(
          title: Text('CHECKBOX'),
          value: _checkboxValue,
          onChanged: (value) {
            setState(() {
              _checkboxValue = value!;
            });
          },
        ),
        SizedBox(height: 20),
        Text('RADIO:'),
        RadioListTile(
          title: Text('Option 1'),
          value: 'Option 1',
          groupValue: _radioValue,
          onChanged: (value) {
            setState(() {
              _radioValue = value.toString();
            });
          },
        ),
        RadioListTile(
          title: Text('Option 2'),
          value: 'Option 2',
          groupValue: _radioValue,
          onChanged: (value) {
            setState(() {
              _radioValue = value.toString();
            });
          },
        ),
        SizedBox(height: 20),
        SwitchListTile(
          title: Text('SWITCH'),
          value: _switchValue,
          onChanged: (value) {
            setState(() {
              _switchValue = value;
            });
          },
        ),
        SizedBox(height: 20),
        Text('SLIDER'),
        Slider(
          value: _sliderValue,
          min: 0.0,
          max: 10.0,
          divisions: 100,
          label: _sliderValue.round().toString(),
          onChanged: (value) {
            setState(() {
              _sliderValue = value;
            });
          },
        ),
      ],
    );
  }
}
