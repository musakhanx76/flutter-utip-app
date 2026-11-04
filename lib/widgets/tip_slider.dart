import 'package:flutter/material.dart';

class tipSlider extends StatelessWidget {
  const tipSlider({
    super.key,
    required this._tipPercentage, required this.onChanged,
  });

  final double _tipPercentage;
  final ValueChanged<double> onChanged;

  @override
  Widget build(BuildContext context) {
    return Slider(value: _tipPercentage, 
    onChanged : onChanged,

      min : 0,
      max : 0.5,
      label : '${(_tipPercentage * 100).round()}%',
      divisions: 5,
    );
  }
}

