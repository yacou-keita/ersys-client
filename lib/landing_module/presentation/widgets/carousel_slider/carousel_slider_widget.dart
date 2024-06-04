import 'dart:async';

import 'package:ersys_client/landing_module/presentation/widgets/carousel_slider/slider_indicator_widget.dart';
import 'package:ersys_client/landing_module/presentation/widgets/carousel_slider/slider_info_widget.dart';
import 'package:ersys_client/shared/domain/entities/card_entity.dart';
import 'package:ersys_client/shared/presentation/widgets/image_placeholder_wiget.dart';
import 'package:flutter/material.dart';

final PageController _pageController = PageController(initialPage: 0);

class CarouselSliderWidget extends StatefulWidget {
  late final List<CardEntity> _items;
  late final Timer _timer;

  CarouselSliderWidget({super.key, required final List<CardEntity> items}) {
    _items = items;
  }

  @override
  State<CarouselSliderWidget> createState() => _CarouselSliderWidgetState();
}

class _CarouselSliderWidgetState extends State<CarouselSliderWidget> {
  int _activePage = 0;

  void _startTimer() {
    widget._timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      bool isLastPage = _pageController.page == widget._items.length - 1;
      if (isLastPage) {
        _pageController.animateToPage(0,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut);
        return;
      }
      _pageController.nextPage(
          duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    });
  }

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: PageView.builder(
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  _activePage = value;
                });
              },
              itemCount: widget._items.length,
              itemBuilder: (context, index) {
                return ImagePlacehoderWidget(
                    imagePath: widget._items[index].imageUrl);
              }),
        ),
        SliderInfoWidget(
          index: _activePage,
          items: widget._items,
        ),
        Positioned(
          bottom: 4,
          left: 0,
          right: 0,
          child: SliderIndicatorWidget(
            activePage: _activePage,
            itemLength: widget._items.length,
            onTap: (int index) {
              _pageController.animateToPage(index,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn);
            },
          ),
        )
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    widget._timer.cancel();
  }
}
