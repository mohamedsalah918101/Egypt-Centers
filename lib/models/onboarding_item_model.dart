class OnBoardingItemsModel {
  final String svgVectorName;
  final String textTitle;
  final int pageNum;
  final double paddingAll;
  // final double? height, width ;

  OnBoardingItemsModel({
    required this.svgVectorName,
    required this.textTitle,
    required this.pageNum,
    this.paddingAll=0,
    // this.height,
    // this.width,
    // required this.image,
    // required this.textBody,
  });
}
