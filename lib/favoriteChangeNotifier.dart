import 'package:flutter/material.dart';

class FavoriteChangeNotifier with ChangeNotifier {
  bool _isFavorited;
  int _favoriteCount;

  FavoriteChangeNotifier(this._isFavorited, this._favoriteCount);

  bool get isFavorited => _isFavorited;
  int get favoriteCount => _favoriteCount + (_isFavorited ? 1 : 0);

  set isFavorited(bool isFavorited) {
    _isFavorited = isFavorited;
    notifyListeners();
  }

  set favoriteCount(int favoriteCount) {
    _favoriteCount = favoriteCount;
    notifyListeners();
  }
}
