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
                text: "Merhaba benim adım Ebrar!",
                color: Theme.of(context).secondaryHeaderColor,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
              Text(
                "Bu web sitesini Flutter ile yazdım. :grinning_face:",
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
                    "Yıldız Teknik Üniversitesi Matematik Mühendisliği 3. sınıf öğrencisiyim. Yaklaşık 1 senedir Flutter ile mobil uygulama geliştiriyorum. Daha önce Arduino, C ,HTML ve Kotlin ile de yazılım geliştirdim. Ama hiçbiri beni Flutter ile mobil uygulama geliştirmek kadar etkilemedi.",
                color: Theme.of(context).primaryColor,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(
                height: 80,
              ),
              Text(
                "Daha önce yazdığım uygulamalar burada:",
                style: TextStyle(color: Theme.of(context).secondaryHeaderColor, fontSize: 25, fontWeight: FontWeight.bold),
              ),
              CustomTextAnimation(
                text: "Floria’ da Firebase de ekliydi ama ilk 30 gün kullanabildim :D",
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
                text: "Benim Hakkımda Daha Çok Bilgi İçin LinkedIn ve Github Adresime Bakabilirsin. Hoşçakal...",
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
