import 'package:ebrarswebsite/common/constants/app_images.dart';
import 'package:ebrarswebsite/common/screens/home/home_view_model.dart';
import 'package:ebrarswebsite/common/widgets/custom_image_slider.dart';
import 'package:ebrarswebsite/common/widgets/custom_text_animation.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late final HomeViewModel _viewModel;

  @override
  void initState() {
    _viewModel = HomeViewModel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Flexible(
            child: sideBarView(),
            flex: 1,
          ),
          Flexible(
            child: bodyBuildView(),
            flex: 9,
          ),
        ],
      ),
    );
  }

  SafeArea sideBarView() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 50),
        height: MediaQuery.of(context).size.height,
        color: Theme.of(context).bottomAppBarColor,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                AppImages.instance.mainlogo,
                width: 80,
              ),
              const SizedBox(
                height: 80,
              ),
              ElevatedButton(
                onPressed: (() => _viewModel.launchGithubInBrowser()),
                child: Image.asset(
                  AppImages.instance.github,
                  width: 30,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: (() => _viewModel.launchLinkedInInBrowser()),
                child: Image.asset(
                  AppImages.instance.linkedin,
                  width: 30,
                ),
              ),
             
              
            ],
          ),
        ),
      ),
    );
  }

  SafeArea bodyBuildView() {
    return SafeArea(
      child: Stack(children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(AppImages.instance.background), fit: BoxFit.fill),
          ),
        ),
        SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 80, horizontal: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextAnimation(
                text: "Merhaba benim ad??m Ebrar!",
                color: Theme.of(context).secondaryHeaderColor,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
              Text(
                "Bu web sitesini Flutter ile yazd??m. :grinning_face:",
                style: TextStyle(color: Theme.of(context).hintColor, fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 80,
              ),
              Text(
                "Biraz kendimden bahsedeyim...",
                style: TextStyle(color: Theme.of(context).secondaryHeaderColor, fontSize: 25, fontWeight: FontWeight.bold),
              ),
              CustomTextAnimation(
                text:
                    "Y??ld??z Teknik ??niversitesi Matematik M??hendisli??i 3. s??n??f ????rencisiyim. Yakla????k 1 senedir Flutter ile mobil uygulama geli??tiriyorum. Daha ??nce Arduino, C ,HTML ve Kotlin ile de yaz??l??m geli??tirdim. Ama hi??biri beni Flutter ile mobil uygulama geli??tirmek kadar etkilemedi.",
                color: Theme.of(context).primaryColor,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(
                height: 80,
              ),
              Text(
                "Daha ??nce yazd??????m uygulamalar burada:",
                style: TextStyle(color: Theme.of(context).secondaryHeaderColor, fontSize: 25, fontWeight: FontWeight.bold),
              ),
              CustomTextAnimation(
                text: "Floria??? da Firebase de ekliydi ama ilk 30 g??n kullanabildim :D",
                color: Theme.of(context).primaryColor,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomImageSlider(
                    photos: _viewModel.floria,
                  ),
                  CustomImageSlider(
                    photos: _viewModel.weathernow,
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              CustomTextAnimation(
                text: "Benim Hakk??mda Daha ??ok Bilgi ????in LinkedIn ve Github Adresime Bakabilirsin. Ho????akal...",
                color: Theme.of(context).secondaryHeaderColor,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        )
      ]),
    );
  }
}
