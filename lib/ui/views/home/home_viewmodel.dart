import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends FutureViewModel {
  final controller = ScrollController();

  @override
  Future futureToRun() async {
    initState();
  }

  double offset = 0;

  void initState() {
    controller.addListener(onScroll);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void onScroll() {
    offset = (controller.hasClients) ? controller.offset : 0;
    notifyListeners();
  }
}
