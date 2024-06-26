class ArticleModel {
  final String? image;
  final String mainTitle;
  final String? subTitle;
  ArticleModel(
      {required this.image, required this.mainTitle, required this.subTitle});
  factory ArticleModel.fromJson(json) {
    return ArticleModel(
        image: json["urlToImage"],
        mainTitle: json["title"],
        subTitle: json["description"]);
  }
}
