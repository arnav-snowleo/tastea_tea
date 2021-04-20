import 'package:flutter/material.dart';

import 'package:tastea_tea/ui/theme/constants.dart';
import 'package:tastea_tea/ui/widgets/textField.dart';

class InputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const InputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: kLightGreenColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kLightGreenColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
