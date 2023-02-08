import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class CustomTextField extends StatefulWidget {
  String? hint;
  bool obscureText;
  TextInputType? keyboardType;
  int? maxLength;
  bool enableShowAndHideIcon;

  CustomTextField({
    super.key,
    this.hint,
    this.obscureText = false,
    this.keyboardType,
    this.maxLength,
    this.enableShowAndHideIcon = false,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: SizedBox(
          height: 50.0,
          child: Center(
            child: TextField(
              obscureText: widget.obscureText,
              keyboardType: widget.keyboardType,
              inputFormatters: [
                LengthLimitingTextInputFormatter(widget.maxLength),
              ],
              style: const TextStyle(fontSize: 16.0),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: widget.hint,
                suffixIcon: widget.enableShowAndHideIcon
                    ? IconButton(
                        icon: widget.obscureText
                            ? const Icon(Icons.visibility,color: Colors.amber,)
                            : const Icon(Icons.visibility_off,color: Colors.amber,),
                        onPressed: () {
                          widget.obscureText =
                              widget.obscureText == true ? false : true;
                          setState(() {});
                        },
                      )
                    : null,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
