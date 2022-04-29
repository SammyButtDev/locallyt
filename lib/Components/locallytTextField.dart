import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class LocTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String? title;
  final Function? onTap;
  final Function? onChange;
  final Function? onFieldSubmitted;
  final bool readOnly = false;
  final bool required = true;
  final double bottomPadding;
  final bool obscure;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final bool isForm;
  final bool autoFocus;
  final int? validator;
  final FocusNode focusNode;
  final String? labelText;
  final Widget? suffix;

  const LocTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.focusNode,
    this.labelText,
    this.suffix,
    this.title,
    this.onTap,
    this.onChange,
    this.onFieldSubmitted,
    this.validator,
    this.textInputType = TextInputType.text,
    this.autoFocus = false,
    this.obscure = false,
    this.bottomPadding = 14,
    this.textInputAction = TextInputAction.done,
    this.isForm = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Validations validations = Validations();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if(title != null)...[
          Padding(
            padding:  EdgeInsets.only(top: 5.sp, bottom: 6.sp),
            child: Text(title!),
          ),
        ],
        TextFormField(
          controller: controller,
          keyboardType: textInputType,
          decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),),
            isDense: true,
            hintText: hintText,labelText: labelText,suffix: suffix,hintStyle: TextStyle(fontSize: 14),
          ),
          obscureText: obscure,
          onFieldSubmitted: (val) {
            if (onFieldSubmitted != null) onFieldSubmitted!(val);
          },
          autofocus: autoFocus,
          validator: (value) => validations.validate(validator!, value!),
          autovalidateMode: AutovalidateMode.onUserInteraction,
          textInputAction: textInputAction,
          focusNode: focusNode,
        ),
        SizedBox(height: bottomPadding),
      ],
    );
  }
}


class Validations {
  String? validate(int decide, String value) {
    switch (decide) {
      case 0:
      // Simple
        return validateSimple(value);
      case 1:
      // Email
        return validateEmail(value);
      case 2:
      // Password
        return validatePassword(value);
      case 3:
      // Name
        return validateName(value);
      case 4:
      // Mobile
        return validateMobile(value);
      case 5:
      // Price
        return validatePrice(value);
      default:
        return null;
    }
  }

  String? validateName(String value) {
    if (value.isEmpty) return 'Name is required.';
    final RegExp nameExp = RegExp(r'^[A-za-z ]+$');
    if (!nameExp.hasMatch(value)) {
      return 'Please enter only alphabetical characters.';
    }
    return null;
  }

  String? validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern.toString());
    if (!regex.hasMatch(value)) {
      return 'Enter Valid Email';
    } else {
      return null;
    }
  }

  String? validatePassword(String value) {
    if (value.length < 8) return 'Please choose a strong password.';
    return null;
  }

  String? validateSimple(String value) {
    if (value.isEmpty) return "Field can't be empty";
    return null;
  }

  String? validateMobile(String value) {
    if (value.length < 6) {
      return 'Mobile Number must be correct';
    } else {
      return null;
    }
  }

  String? validatePrice(String value) {
    if (value.isEmpty) {
      return 'Price must be valid';
    } else if (double.parse(value) < 90) {
      return 'Price must be greater than \$90';
    } else {
      return null;
    }
  }
}
