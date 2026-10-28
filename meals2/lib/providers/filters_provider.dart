import 'package:flutter_riverpod/legacy.dart';

enum Filter {
  glutenFree,
  lactoseFree,
  vegetarian,
  vegan,
}

class FiltersNotifier extends StateNotifier<Map<Filter, bool>> {
  FiltersNotifier() : super ({
    Filter.glutenFree: false,
    Filter.lactoseFree: false,
    Filter.vegan: false,
    Filter.vegetarian: false,
  });
  void setFilter(Filter filter, bool isActive){
    state = {...state, filter: isActive};
  }
}

final FiltersProvider = StateNotifierProvider((ref) {
return FiltersNotifier();
});