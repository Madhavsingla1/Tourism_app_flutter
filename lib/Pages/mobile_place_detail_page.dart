import 'package:flutter/material.dart';

class MobilePlaceDetailPage extends StatelessWidget {
  const MobilePlaceDetailPage({
    Key? key,
    required this.placeimage,
    required this.placename,
    required this.placeadd,
  }) : super(key: key);

  final placeimage; //Place image we are seeing/Navigating
  final placename;
  final placeadd;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 400,
            flexibleSpace: FlexibleSpaceBar(
              background: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset(placeimage),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_border),
              )
            ],
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              placename,
                              style: const TextStyle(
                                // fontFamily: 'Dancing Script',
                                fontWeight: FontWeight.w400,
                                fontSize: 40,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.place),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    minimumSize: Size.zero,
                                    padding: EdgeInsets.zero,
                                    tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                  ).copyWith(
                                      foregroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.pink)),
                                  onPressed: () {},
                                  child: Text(
                                    placeadd,
                                    style: const TextStyle(
                                      // fontFamily: 'Dancing Script',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.star_border,
                        size: 30,
                      ),
                      const Text(
                        "?",
                        style: TextStyle(fontSize: 30),
                      )
                    ],
                  ),
                ),
                Text(
                  "Descrption",
                  style: TextStyle(fontSize: 30),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
