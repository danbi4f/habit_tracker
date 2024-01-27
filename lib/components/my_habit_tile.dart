import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class MyHabitTile extends StatelessWidget {
  const MyHabitTile({
    super.key,
    required this.text,
    required this.isCompleted,
    required this.onChange,
    required this.editHabit,
    required this.deleteHabit,
  });

  final bool isCompleted;
  final String text;
  final void Function(bool?)? onChange;
  final void Function(BuildContext?)? editHabit;
  final void Function(BuildContext?)? deleteHabit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const StretchMotion(),
          children: [
            // edit options
            SlidableAction(
              onPressed: editHabit,
              backgroundColor: Colors.grey.shade800,
              icon: Icons.settings,
              borderRadius: BorderRadius.circular(8),
            ),

            // delete options
            SlidableAction(
              onPressed: deleteHabit,
              backgroundColor: Colors.red,
              icon: Icons.delete,
              borderRadius: BorderRadius.circular(8),
            ),
          ],
        ),
        child: GestureDetector(
          onTap: () {
            if (onChange != null) {
              // toggle completion status
              onChange!(!isCompleted);
            }
          },

          // habit title
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: isCompleted
                  ? Colors.green
                  : Theme.of(context).colorScheme.secondary,
            ),
            child: ListTile(
              // text
              title: Text(
                text,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(),
              ),

              // chceckbox
              leading: Checkbox(
                value: isCompleted,
                onChanged: onChange,
                //activeColor: Colors.green,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
