

import 'package:bloc_app/bloc/model/favorite_items_model.dart';

class FavoriteRepository {

  Future<List<FavoriteItemsModel>> fetchItems() async{
   await Future.delayed(Duration(seconds: 3));
  return List.of(_generateList(15));
  }

  List<FavoriteItemsModel> _generateList(int length){
    return List.generate(length, (index) => FavoriteItemsModel(id: index.toString(), value: 'Item $index'),);
  }

}