import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    required this.networkImage,
    super.key,
  });

  final String networkImage;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return gridViewListItem();
      },
    );
  }

  Widget gridViewListItem() {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(networkImage),
        ),
      ),
    );
  }
}
