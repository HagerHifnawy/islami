part of 'app_cubit.dart';

@immutable
abstract class AppStates {}

class AppInitialState extends AppStates {}
class AppChangeBottomNavState extends AppStates {}
class AppCountMasbahaState extends AppStates {
  int counter;
  AppCountMasbahaState(this.counter);
}
