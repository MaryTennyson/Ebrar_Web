import 'package:ebrarswebsite/common/constants/app_images.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeViewModel {
  Uri githubLink = Uri(scheme: 'https', host: 'github.com', path: 'MaryTennyson');
  Uri linkedInLink = Uri(scheme: 'https', host: 'www.linkedin.com', path: 'in/ebraratabay/');

  List<String> floria = [
    AppImages.instance.floria1,
    AppImages.instance.floria2,
    AppImages.instance.floria3,
    AppImages.instance.floria4,
    AppImages.instance.floria5,
  ];

  List<String> weathernow = [
    AppImages.instance.weathernow1,
    AppImages.instance.weathernow2,
    AppImages.instance.weathernow3,
  ];

  Future<void> launchGithubInBrowser() async {
    if (!await launchUrl(
      githubLink,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $githubLink';
    }
  }

  Future<void> launchLinkedInInBrowser() async {
    if (!await launchUrl(
      webViewConfiguration: WebViewConfiguration(enableJavaScript: true, enableDomStorage: true),
      linkedInLink,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $linkedInLink';
    }
  }
}
