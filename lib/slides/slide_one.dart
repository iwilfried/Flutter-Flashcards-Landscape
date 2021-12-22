import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../state_managment/current_card_state_manager.dart';

class SlideOne extends ConsumerStatefulWidget {
  final String firstSide;
  final String secondSide;
  final int pages;
  final Function nextPage;
  final Function previousPage;
  const SlideOne({
    Key? key,
    required this.firstSide,
    required this.secondSide,
    required this.pages,
    required this.nextPage,
    required this.previousPage,
  }) : super(key: key);

  @override
  ConsumerState<SlideOne> createState() => _SlideOneState();
}

class _SlideOneState extends ConsumerState<SlideOne> {
  late FlipCardController _controller;

  @override
  void initState() {
    super.initState();
    _controller = FlipCardController();
  }

  @override
  Widget build(BuildContext context) {
    final int page = ref.watch(currentPageStateManagerProvider);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Theme.of(context).backgroundColor.withOpacity(0.9),
                        BlendMode.darken),
                    image: const AssetImage("assets/images/backLandscape.png"),
                    fit: BoxFit.cover)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Expanded(child: SizedBox()),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: const BorderRadius.all(Radius.circular(5))),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Text('$page/${widget.pages} Cards',
                      style: const TextStyle(color: Colors.teal)),
                ),
                const Expanded(child: SizedBox()),
                Container(
                  width: width * .7,
                  height: height * .55,
                  margin: const EdgeInsets.only(
                      left: 32.0, right: 32.0, top: 0.0, bottom: 0.0),
                  color: Colors.transparent,
                  child: FlipCard(
                    controller: _controller,
                    direction: FlipDirection.VERTICAL,
                    speed: 1000,
                    onFlipDone: (status) {
                      //print(status);
                    },
                    front: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8.0)),
                      ),
                      child: Center(
                          child: Text(widget.firstSide,
                              style: const TextStyle(color: Colors.black))),
                    ),
                    back: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8.0)),
                      ),
                      child: Center(
                          child: Text(widget.secondSide,
                              style: const TextStyle(color: Colors.black))),
                    ),
                  ),
                ),
                const Expanded(child: SizedBox()),
                Container(
                  width: width * .3,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: const BorderRadius.all(Radius.circular(5))),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        icon: const Icon(
                          Icons.keyboard_arrow_left_sharp,
                          color: Colors.teal,
                        ),
                        iconSize: 30,
                        onPressed: () {
                          widget.previousPage();
                        },
                      ),
                      IconButton(
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        icon: const Icon(
                          Icons.refresh,
                          color: Colors.teal,
                        ),
                        iconSize: 25,
                        onPressed: () {
                          _controller.toggleCard();
                        },
                      ),
                      IconButton(
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        icon: const Icon(
                          Icons.keyboard_arrow_right_sharp,
                          color: Colors.teal,
                        ),
                        iconSize: 30,
                        onPressed: () {
                          widget.nextPage();
                        },
                      ),
                    ],
                  ),
                ),
                const Expanded(child: SizedBox()),
              ],
            )));
  }
}
