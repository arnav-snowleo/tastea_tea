import 'package:flutter/material.dart';

import 'package:tastea_tea/ui/theme/constants.dart';
import 'package:tastea_tea/ui/widgets/textField.dart';

class PasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const PasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: kLightGreenColor,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: kLightGreenColor,
          ),
//          suffixIcon: Icon(
//            Icons.visibility,
//            color: kLightGreenColor,
//          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
