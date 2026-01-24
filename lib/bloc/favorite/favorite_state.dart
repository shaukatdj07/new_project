
import 'package:bloc_app/bloc/model/favorite_items_model.dart';
import 'package:equatable/equatable.dart';

enum ListStatus {Loading, Complete, Error}

class FavoriteState extends Equatable{

  final List<FavoriteItemsModel> favoriteItemsList;
  final ListStatus listStatus;

  const FavoriteState({this.favoriteItemsList = const [],
    this.listStatus = ListStatus.Loading
  });

  FavoriteState copyWith({List<FavoriteItemsModel>? favoriteItemsList,ListStatus? listStatus}){
    return FavoriteState(favoriteItemsList: favoriteItemsList ?? this.favoriteItemsList,
      listStatus: listStatus ?? this.listStatus,
    );
  }

  @override
  List<Object> get props => [favoriteItemsList, listStatus];
}

