import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            floating: true,
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
                const Divider(
                  thickness: 3,
                ),
                const Center(
                  child: Text(
                    "Descrption",
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(8, 4, 8, 8),
                  child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Elementum nibh tellus molestie nunc non blandit massa enim. Vel fringilla est ullamcorper eget nulla facilisi etiam. Id aliquet risus feugiat in. Etiam erat velit scelerisque in dictum. Felis imperdiet proin fermentum leo vel orci. Enim nec dui nunc mattis enim ut tellus. Orci phasellus egestas tellus rutrum tellus pellentesque eu. Tortor at risus viverra adipiscing at in. Eget nullam non nisi est sit amet facilisis. Mauris commodo quis imperdiet massa tincidunt nunc pulvinar sapien."),
                ),
                const Divider(
                  thickness: 3,
                ),
                const Center(
                  child: Text(
                    "Review",
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ),
                CarouselSlider.builder(
                  options: CarouselOptions(
                    aspectRatio: 2.0,
                    enlargeCenterPage: false,
                    viewportFraction: 1,
                  ),
                  itemCount: 10,
                  itemBuilder: (context, index, realIndex) {
                    return Container(
                      width: MediaQuery.of(context).size.width - 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.pink,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ),
                          BoxShadow(
                            // second box shadow to get the background color white and not the pinkAccent
                            // which we would have gotten if used only first boxshadow
                            color: Colors.white,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(4, 4, 4, 0),
                            child: Row(
                              children: [
                                const Icon(
                                  FontAwesomeIcons.solidCircleUser,
                                  color: Colors.black,
                                  size: 30,
                                ),
                                const Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 8),
                                    child: Text(
                                      "User Name",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[600],
                                ),
                                Text("Rating?")
                              ],
                            ),
                          ),
                          const Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Elementum nibh tellus molestie nunc non blandit massa enim. Vel fringilla est ullamcorper eget nulla facilisi etiam. Id aliquet risus feugiat in. Etiam erat velit scelerisque in dictum. Felis imperdiet proin fermentum leo vel orci. Enim nec dui nunc mattis enim ut tellus. Orci phasellus egestas tellus rutrum tellus pellentesque eu. Tortor at risus viverra adipiscing at in. Eget nullam non nisi est sit amet facilisis. Mauris commodo quis imperdiet massa tincidunt nunc pulvinar sapien.",
                              maxLines: 8,
                              overflow: TextOverflow.clip,
                            ),
                          ),
                          Text("${index + 1}/10")
                        ],
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
