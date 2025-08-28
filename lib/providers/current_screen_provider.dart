import 'package:flutter_riverpod/flutter_riverpod.dart';

class CurrentScreenProvider extends StateNotifier<int> {
  CurrentScreenProvider() : super(0);

  void changeScreen(int screenNumber) {
    state = screenNumber;
  }
}

var currentScreenProvider = StateNotifierProvider<CurrentScreenProvider, int>((
  ref,
) {
  return CurrentScreenProvider();
});
