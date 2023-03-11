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

// TODO: 자주하는 활동으로 등록하면 어떤 기능이 필요한지 생각해서 추가
// 필요없으면 Checkbox widget 으로 변경
// title도 안받아도 될 듯. 앞에서 분기 칠거니까

class _NewLeafBottomSheetState extends State<NewLeafBottomSheet> {
  bool light = false;
  final controller = TextEditingController();

  // bottomSheet 을

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

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
            const Text(
              // widget.title,
              "일상에 새로운 씨앗을 심으세요",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: controller,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1.5,
                    color: Colors.brown.shade400,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1.5,
                    color: Colors.brown.shade400,
                  ),
                ),
                hintText: '필라테스하기 같은게 될 수 있겠죠?',
              ),
            ),
            SwitchListTile(
              title: const Text("자주 하는 활동으로 등록"),
              value: light,
              onChanged: (bool value) => {
                setState(() => {light = value})
              },
              activeColor: Colors.green.shade300,
            ),
            ElevatedButton(
              onPressed: () {
                // TODO: API 연결할 때 유효성 검사도 추가하기
                print(controller.text);
                Navigator.pop(context);
              },
              //  minimumSize: const Size.fromHeight(50), // NEW
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
                backgroundColor: Colors.brown.shade400,
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              child: const Text('이 활동으로 씨앗 심기'),
            )
          ],
        ),
      ),
    );
  }
}
