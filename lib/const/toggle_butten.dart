import 'package:flutter/material.dart';

class ToggleButtonsApp extends StatelessWidget {
  const ToggleButtonsApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const Scaffold(
        body: ToggleButtonsExample(),
      ),
    );
  }
}

enum ShirtSize { extraSmall, small, medium, large, extraLarge }

const List<(ShirtSize, String)> shirtSizeOptions = <(ShirtSize, String)>[
  (ShirtSize.extraSmall, 'XS'),
  (ShirtSize.small, 'S'),
  (ShirtSize.medium, 'M'),
  (ShirtSize.large, 'L'),
  (ShirtSize.extraLarge, 'XL'),
];

class ToggleButtonsExample extends StatefulWidget {
  const ToggleButtonsExample({super.key});

  @override
  State<ToggleButtonsExample> createState() => _ToggleButtonsExampleState();
}

class _ToggleButtonsExampleState extends State<ToggleButtonsExample> {
  Set<ShirtSize> _segmentedButtonSelection = <ShirtSize>{ShirtSize.medium};

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          const Text('Size'),
          const SizedBox(height: 10),
          SegmentedButton<ShirtSize>(
            // ToggleButtons above allows multiple or no selection.
            // Set `multiSelectionEnabled` and `emptySelectionAllowed` to true
            // to match the behavior of ToggleButtons.
            multiSelectionEnabled: false,
            emptySelectionAllowed: false,
            // Hide the selected icon to match the behavior of ToggleButtons.
            showSelectedIcon: true,
            // SegmentedButton uses a Set<T> to track its selection state.
            selected: _segmentedButtonSelection,
            // This callback updates the set of selected segment values.
            onSelectionChanged: (Set<ShirtSize> newSelection) {
              setState(() {
                _segmentedButtonSelection = newSelection;
              });
            },
            // SegmentedButton uses a List<ButtonSegment<T>> to build its children
            // instead of a List<Widget> like ToggleButtons.
            segments: shirtSizeOptions
                .map<ButtonSegment<ShirtSize>>(((ShirtSize, String) shirt) {
              return ButtonSegment<ShirtSize>(
                  value: shirt.$1, label: Text(shirt.$2));
            }).toList(),
          ),
        ],
      ),
    );
  }
}
