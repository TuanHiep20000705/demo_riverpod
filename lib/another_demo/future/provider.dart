import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/another_demo/future/network.dart';

final photoFutureProvider = FutureProvider((ref) => fetchPhoto());