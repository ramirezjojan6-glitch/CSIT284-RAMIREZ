import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals2/data/dummy_data.dart';

final mealsProvider = Provider((ref) => dummyMeals);
