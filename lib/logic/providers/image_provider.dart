class ImageController {
  static String returnImagePath(String iconId) {
    String path = 'assets/$iconId@2x.png';
    return path;
  }
}
