import 'package:depi_hapd/constant.dart';
import 'package:depi_hapd/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomDropdownButton extends StatefulWidget {
  const CustomDropdownButton({
    super.key,
    required this.borderColor,
    required this.fillColor,
    required this.textStyle,
    required this.dropDownList,
  });

  final Color borderColor;
  final Color fillColor;
  final TextStyle textStyle;
  final List<String> dropDownList;

  @override
  _CustomDropdownButtonState createState() => _CustomDropdownButtonState();
}

class _CustomDropdownButtonState extends State<CustomDropdownButton> {
  String? dropdownValue;
  // final List<String> dropDownList = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      decoration: BoxDecoration(
        color: widget.fillColor,
        border: Border.all(color: widget.borderColor, width: 2),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: DropdownButton<String>(
        hint: Text(
          'Filter',
          style: Styles.text18StyleW600.copyWith(color: kGreenAccentColor),
        ),
        value: dropdownValue,
        icon: const Icon(Icons.arrow_drop_down, color: Colors.teal),
        elevation: 16,
        underline: Container(),
        style: widget.textStyle,
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        items:
            widget.dropDownList.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
