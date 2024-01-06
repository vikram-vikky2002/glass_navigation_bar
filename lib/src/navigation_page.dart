// ignore_for_file: must_be_immutable

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:glass_navigation_bar/src/components/nav_buttons.dart';

class RootPage extends StatefulWidget {
  RootPage({super.key, required this.buttons});
  List<dynamic> buttons;

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _selectedindex = 0;
  List<Widget> pages = [];

  void _navigatebottombar(int index) {
    setState(() {
      _selectedindex = index;
      _pageController.animateToPage(index,
          duration: const Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < widget.buttons.length; i++) {
      pages.add((widget.buttons[i]['page']));
    }
  }

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: _pageController,
              children: pages,
              onPageChanged: (int page) {
                setState(() {
                  _selectedindex = page;
                });
              },
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                        child: Container(
                          height: 90,
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(126, 213, 210, 203),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              for (int i = 0; i < widget.buttons.length; i++)
                                InkWell(
                                  onTap: () => _navigatebottombar(i),
                                  child: NaviButtons(
                                    selectedindex: _selectedindex,
                                    icon: widget.buttons[i]['icon'],
                                    text: widget.buttons[i]['text'],
                                    index: i,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
