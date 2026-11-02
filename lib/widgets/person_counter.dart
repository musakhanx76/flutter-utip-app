import 'package:flutter/material.dart';

class PersonCounter extends StatelessWidget {
  const PersonCounter({
    super.key,
    required this.theme,
    required this._personcounter, required this.onDecrement, required this.onIncrement,
  });

  final ThemeData theme;
  final int _personcounter;
  final VoidCallback onDecrement;
  final VoidCallback onIncrement;

  @override
  Widget build(BuildContext context) {
    return Row(
      children:[
        IconButton(
          color: theme.colorScheme.primary,
          onPressed: onDecrement, icon: const Icon(Icons.remove)),
        Text('$_personcounter',
        style: theme.textTheme.titleMedium),
        IconButton(
          color: theme.colorScheme.primary,
          onPressed: onIncrement, icon: const Icon(Icons.add)),
      ]
    );
  }
}
