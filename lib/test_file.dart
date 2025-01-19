import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rich_food/shared/styles/colors.dart';

class HideWidgetOnScroll extends StatefulWidget {
  const HideWidgetOnScroll({super.key});

  @override
  State<HideWidgetOnScroll> createState() => _HideWidgetOnScrollState();
}

class _HideWidgetOnScrollState extends State<HideWidgetOnScroll> {
  final ScrollController _scrollController = ScrollController();
  bool _isVisible = true;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        setState(() {
          _isVisible = true;
        });
      } else if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        setState(() {
          _isVisible = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hide Widget on Scroll'),
      ),
      body: Stack(
        children: [
          // Your scrollable content here
          ListView.builder(
            controller: _scrollController,
            itemCount: 100,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Item $index'),
              );
            },
          ),

          // The widget that you want to hide/show
          AnimatedOpacity(
            opacity: _isVisible ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 200),
            child: Container(
              height: 50,
              color: blueTheme,
              child: const Center(
                child: Text('This widget is hidden when scrolling down'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
