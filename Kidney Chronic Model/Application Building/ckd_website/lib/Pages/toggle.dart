import 'package:ckd_website/theme.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class ToggleSwicthWeb extends StatelessWidget {
  const ToggleSwicthWeb({
    Key? key,
    required this.txt,
  }) : super(key: key);
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 10),
      child: Container(
        height: 50,
        width: 320,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              txt,
              style: TextStyle(
                fontSize: 16,
                color: KSecondaryColor,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(width: 10),
            ToggleSwitch(
              minWidth: 50,
              minHeight: 30,
              initialLabelIndex: 0,
              totalSwitches: 2,
              activeBgColor: [KFourthColor],
              activeFgColor: Colors.white,
              inactiveBgColor: KFourthColor.withOpacity(0.1),
              labels: [
                'Yes',
                'No',
              ],
              onToggle: (index) {
                print('switched to: $index');
              },
            ),
          ],
        ),
      ),
    );
  }
}
