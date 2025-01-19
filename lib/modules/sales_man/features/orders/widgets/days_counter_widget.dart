import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:rich_food/shared/styles/colors.dart';
import 'package:rich_food/utils/extensions/responsive.dart';

class DaysCounterWidget extends StatefulWidget {
  final int initialValue;
  final NumberFormat formatter = NumberFormat("00");
  final TextEditingController controller;

  DaysCounterWidget({
    super.key,
    this.initialValue = 0,
    required this.controller,
  });

  @override
  State<DaysCounterWidget> createState() => _DaysCounterWidgetState();
}

class _DaysCounterWidgetState extends State<DaysCounterWidget> {
  late int _counter;

  @override
  void initState() {
    super.initState();
    _counter = widget.initialValue;
    widget.controller.text = widget.formatter.format(_counter);
  }

  void _increment() {
    if (_counter < 99) {
      setState(() {
        _counter++;
        widget.controller.text = widget.formatter.format(_counter);
      });
    }
  }

  void _decrement() {
    if (_counter > 0) {
      setState(() {
        _counter--;
        widget.controller.text = widget.formatter.format(_counter);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: Icon(
            Icons.remove,
            size: 14.r,
          ),
          onPressed: _decrement,
        ),
        SizedBox(
          width: 20.w,
          child: TextField(
            onTap: () {
              widget.controller.selection = TextSelection(
                baseOffset: 0,
                extentOffset: widget.controller.text.length,
              );
            },
            controller: widget.controller,
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(4), // Limit input to 3 digits
            ],
            onSubmitted: (value) {
              if (value.isNotEmpty) {
                int newValue = int.parse(value);
                setState(() {
                  _counter = newValue.clamp(0, 999);
                  widget.controller.text = widget.formatter.format(_counter);
                  widget.controller.selection = TextSelection.collapsed(
                    offset: widget.controller.text.length,
                  );
                  // widget.onChanged?.call(_counter);
                });
              }
            },
            style: TextStyle(fontSize: 12, color: grey),
            decoration: const InputDecoration(
              border: InputBorder.none,
              isDense: true,
              contentPadding: EdgeInsets.zero,
            ),
          ),
        ),
        IconButton(
          icon: Icon(Icons.add, size: 14.r),
          onPressed: _increment,
        ),
      ],
    );
  }
}
