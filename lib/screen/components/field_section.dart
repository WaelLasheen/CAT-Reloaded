import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/util/colors/mycolors.dart';
import 'package:flutter_application_1/screen/components/custom_icon_bottom.dart';

class FieldSection extends StatefulWidget {
  final String label;
  final String hint;
  final IconData icon;
  final bool isPassword;
  final bool hide;
  const FieldSection({
    super.key,
    required this.label,
    required this.hint,
    required this.icon,
    this.isPassword = false,
    this.hide = false,
  });

  @override
  State<FieldSection> createState() => _FieldSectionState();
}

class _FieldSectionState extends State<FieldSection> {
  late bool _hide;
  @override
  void initState() {
    super.initState();
    _hide = widget.hide;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: MyColors.black,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              borderSide: BorderSide(color: MyColors.gray),
            ),
            hintText: widget.hint,
            hintStyle: const TextStyle(
              color: MyColors.gray,
            ),
            prefixIcon: Icon(
              widget.icon,
              color: MyColors.gray,
            ),
            suffixIcon: widget.isPassword
                ? CustomIconBottom(
                    icon: _hide ? Icons.visibility_off : Icons.visibility,
                    onPressed: () {
                      setState(() {
                        _hide = !_hide;
                        print(_hide);
                      });
                    })
                : null,
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              borderSide: BorderSide(color: MyColors.gray),
            ),
            disabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              borderSide: BorderSide(color: MyColors.gray),
            ),
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              borderSide: BorderSide(color: MyColors.gray),
            ),
          ),
          obscureText: widget.isPassword && _hide,
        ),
        const SizedBox(height: 18),
      ],
    );
  }
}
