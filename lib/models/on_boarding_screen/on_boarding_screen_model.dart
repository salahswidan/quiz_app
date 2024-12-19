// ignore_for_file: public_member_api_docs, sort_constructors_first
class OnBoardingScreenModel {
  String? _onBoardingImage;
  String? _onBoardingTitle;
  String? _onBoardingDesc;
  OnBoardingScreenModel(
     String onBoardingImage,
     String onBoardingTitle,
     String onBoardingDesc,
  ){
    _onBoardingImage = onBoardingImage;
    _onBoardingTitle = onBoardingTitle;
    _onBoardingDesc = onBoardingDesc;
  }
  String get onBoardingImage => _onBoardingImage!;
  set onBoardingImage(String value) {
    _onBoardingImage = value;
  }

  String get onBoardingTitle => _onBoardingTitle!;
  set onBoardingTitle(String value) {
    _onBoardingTitle = value;
  }

  String get onBoardingDesc => _onBoardingDesc!;
  set onBoardingDesc(String value) {
    _onBoardingDesc = value;
  }
}
