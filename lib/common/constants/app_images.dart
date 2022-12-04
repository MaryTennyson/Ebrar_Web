class AppImages {
  static AppImages? _instance;
  static AppImages get instance => _instance ??= AppImages._init();
  AppImages._init();

  static const String _appPath = "assets/images/app_images";

  static const String _backgroundPath = "assets/images/background";

  static const String _logoPath = "assets/images/logos";

  final String floria1 = "$_appPath/floria1.jpg";
  final String floria2 = "$_appPath/floria2.jpg";
  final String floria3 = "$_appPath/floria3.jpg";
  final String floria4 = "$_appPath/floria4.jpg";
  final String floria5 = "$_appPath/floria5.jpg";
  final String weathernow1 = "$_appPath/weathernow1.jpg";
  final String weathernow2 = "$_appPath/weathernow2.jpg";
  final String weathernow3 = "$_appPath/weathernow3.jpg";

  final String background = "$_backgroundPath/background.png";

  
  final String github = "$_logoPath/github.png";
  final String linkedin = "$_logoPath/linkedin.png";
  final String mainlogo = "$_logoPath/mainlogo.png";
  final String mainlogo2 = "$_logoPath/mainlogo2.png";
}
