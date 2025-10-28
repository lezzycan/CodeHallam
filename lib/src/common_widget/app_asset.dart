class AppAsset {
  AppAsset._();
  static const String _baseImage = "assets/";
  static const String _baseSvg = "assets/";

  static String _getImagePath(String pathName) {
    pathName = "$pathName.png";
    return _baseImage + pathName;
  }

  static String _getSvgPath(String pathName) {
    pathName = "$pathName.svg";
    return _baseSvg + pathName;
  }

  /* ----------------- PNGs ------------------ */
  
  static String bg4 = _getImagePath("images/BG4");

  /* ----------------- SVGs ------------------ */

  
  static String google = _getSvgPath('svg/google');
  static String facebook = _getSvgPath('svg/facebook');
}
