class Dimensions {

  static double screenHeight = 711;
  static double screenWidth = 411;

  static double height275 = screenHeight/2.585;
  static double height150 = screenHeight/4.71;
  static double height60 = height150/2.5;
  static double height50 = height150/3;
  static double height40 = screenHeight/17.675;
  static double height30 = height150/5;
  static double height15 = height30/2;
  static double height12 = screenHeight/58.91;
  static double height10 = height150/15;
  static double height7 = height15/2;  //7.5 i need
  static double height5 = height10/2;

  static double width150 = screenWidth/2.74;
  static double width40 = screenWidth/10.27;
  static double width30 = width150/5;
  static double width15 = width30/2;
  static double width12 = screenWidth/34.25;
  static double width10 = width30/3;
  static double width7 = width15/2;  //7.5 i need

  static double marginAll8 = screenHeight/88.375;
  static double marginAll4 = marginAll8/2;

  static double borderRadius64 = screenHeight/11.046;

  static void showMyAppDimensions(){
    print("The value of screen height of my app is: " + screenHeight.toString());
    print("The value of screen width of my app is: " + screenWidth.toString());
  }



}