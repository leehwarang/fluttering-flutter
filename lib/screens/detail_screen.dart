import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String title, thumb, id;
  const DetailScreen({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // leading: const BackButton(),
        automaticallyImplyLeading: true,
        elevation: 2,
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.green,
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          const SizedBox(height: 50),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Hero(
              tag: id,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      offset: const Offset(10, 10),
                      color: Colors.black.withOpacity(0.5),
                    )
                  ],
                ),
                clipBehavior: Clip.hardEdge,
                width: 250,
                child: Image.network(thumb),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
