import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubereatsapp/models/category_model.dart';
import 'package:ubereatsapp/services/category_service.dart';

final searchProvider =
    StateNotifierProvider<SearchNotifier, AsyncValue<List<CategoryModel>>>(
        (ref) => SearchNotifier());

class SearchNotifier extends StateNotifier<AsyncValue<List<CategoryModel>>> {
  SearchNotifier() : super(const AsyncLoading()) {
    loadCategory();
  }

  loadCategory() async {
    state = const AsyncLoading();
    final categoryList = await CategoryService().fetchCategory();
    final categories =
        categoryList.map((e) => CategoryModel.fromMap(e)).toList();
    state = AsyncValue.data(categories);
  }
}
