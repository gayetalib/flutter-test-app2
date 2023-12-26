class RecetteModel {
  String title;
  String user;
  String imageUrl;
  String description;
  final bool _isFavorited;
  final int _favoriteCount;

  RecetteModel(this.title, this.user, this.imageUrl, this.description,
      this._isFavorited, this._favoriteCount);

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'user': user,
      'imageUrl': imageUrl,
      'description': description,
      'isFavorite': _isFavorited,
      'favoriteCount': _favoriteCount
    };
  }
}
