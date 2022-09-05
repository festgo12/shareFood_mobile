import 'package:flutter/material.dart';
//import 'package:vemdot_core/src/styles/styles.dart';

typedef StringCallback<T> = String? Function(String?);
class BoxTextField extends StatefulWidget {
  final bool? readOnly;
  final StringCallback? validator;
  final String? label;
  final bool? obscureText;
  final VoidCallback? onTap;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final AutovalidateMode? autovalidateMode;
  final String? hint;
  final Widget? prefix;
  const BoxTextField({
    this.validator, this.label, this.obscureText, this.onTap, this.controller, this.readOnly, this.textInputAction = TextInputAction.done, this.textInputType, this.autovalidateMode, this.prefix, this.hint,
  });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<BoxTextField> {
  late bool hide;
  @override
  void initState() {
    super.initState();
    hide = widget.obscureText ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: widget.autovalidateMode,
      keyboardType: widget.textInputType,
      textInputAction: widget.textInputAction,
      readOnly: widget.readOnly ?? false,
      controller: widget.controller,
      onTap: widget.onTap,
      obscureText: hide,
      validator: widget.validator,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 25, vertical: 14),
        isDense: true,
        prefixIcon: widget.prefix,
        hintText: widget.hint,
        suffixIcon: (widget.obscureText ?? false) ? IconButton(
          onPressed: (){
            setState(() => hide = !hide);
          },
          icon: !hide ? const Icon(Icons.visibility_outlined) :
          const Icon(Icons.visibility_off_outlined),
        ) : null,
        filled: false,
        label: widget.label == null ? null :
        Text(widget.label!, style: const TextStyle(color: Color(0xff717171))),
        border:  OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        enabledBorder:  OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black26
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        focusedBorder:  OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
  }
}
