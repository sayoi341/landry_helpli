import 'package:hooks_riverpod/hooks_riverpod.dart';

enum RobotState { home, map, profile}
final robotstateProvider = StateProvider<bool>((ref) => true);