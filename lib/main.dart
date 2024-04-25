import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(ShowGridview());
}

class ShowGridview extends StatelessWidget {
  ShowGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 230,
              child: GridView.custom(
                gridDelegate: SliverQuiltedGridDelegate(
                  crossAxisCount: 4,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  repeatPattern: QuiltedGridRepeatPattern.inverted,
                  pattern: [
                    const QuiltedGridTile(2, 2),
                    const QuiltedGridTile(1, 1),
                    const QuiltedGridTile(1, 1),
                    const QuiltedGridTile(1, 2),
                  ],
                ),
                childrenDelegate: SliverChildBuilderDelegate(
                    (context, index) => gridList[index],
                    childCount: 4),
              ),
            ),
            // Expanded(
            //   child: GridView.custom(
            //     gridDelegate: SliverStairedGridDelegate(
            //       crossAxisSpacing: 48,
            //       mainAxisSpacing: 24,
            //       startCrossAxisDirectionReversed: true,
            //       pattern: [
            //         const StairedGridTile(0.5, 1),
            //         const StairedGridTile(0.5, 3 / 4),
            //         const StairedGridTile(1.0, 10 / 4),
            //       ],
            //     ),
            //     childrenDelegate: SliverChildBuilderDelegate(
            //       childCount: 4,
            //       (context, index) => gridList[index],
            //     ),
            //   ),
            // ),
            Expanded(
              child: GridView.custom(
                gridDelegate: SliverWovenGridDelegate.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  pattern: [
                    WovenGridTile(1),
                    WovenGridTile(
                      5 / 7,
                      crossAxisRatio: 0.9,
                      alignment: AlignmentDirectional.centerEnd,
                    ),
                  ],
                ),
                childrenDelegate: SliverChildBuilderDelegate(
                  (context, index) => gridList[index],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<Widget> gridList = [
  Container(
    height: 100,
    width: 100,
    color: Colors.blue,
    child: const Center(
      child: Text('one'),
    ),
  ),
  Container(
    height: 100,
    width: 100,
    color: Colors.red,
    child: const Center(
      child: Text('two'),
    ),
  ),
  Container(
    height: 100,
    width: 100,
    color: Colors.green,
    child: const Center(
      child: Text('three'),
    ),
  ),
  Container(
    height: 100,
    width: 100,
    color: Colors.yellow,
    child: const Center(
      child: Text('four'),
    ),
  ),
];
