import 'package:flutter/material.dart';

class NewLeafBottomSheet extends StatefulWidget {
  const NewLeafBottomSheet({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<NewLeafBottomSheet> createState() => _NewLeafBottomSheetState();
}

class _NewLeafBottomSheetState extends State<NewLeafBottomSheet> {
  bool light = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: '일상에 새로운 씨앗을 심으세요'),
            ),
            SwitchListTile(
              title: const Text("자주 하는 활동으로 등록하기"),
              value: light,
              onChanged: (bool value) => {
                setState(() => {light = value})
              },
            )
          ],
        ),
      ),
    );
  }
}
