class RecetteModel {
  String title;
  String user;
  String imageUrl;
  String description;
  final bool _isFavorited;
  final int _favoriteCount;

  RecetteModel(this.title, this.user, this.imageUrl, this.description,
      this._isFavorited, this._favoriteCount);
}
