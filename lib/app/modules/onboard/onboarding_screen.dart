import 'package:flutter/material.dart';
import 'package:memento_app/app/modules/onboard/onboarding_animated_dot.dart';
import 'package:memento_app/app/modules/onboard/onboarding_bottom_button.dart';
import 'package:memento_app/app/modules/onboard/onboarding_pageview.dart';
import 'package:memento_app/app/modules/onboard/onboarding_skip.dart';
import 'package:memento_app/blocs/onboarding_bloc.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //TODO remove aqui
    final _onboardingBloc = OnboardingBloc();
    return Scaffold(
      body: Container(
        decoration: _backgroundConfig(),
        child: _bodyContent(_onboardingBloc),
      ),
    );
  }

  //Configuração do plano de fundo
  BoxDecoration _backgroundConfig() => BoxDecoration(
        color: Color(0xfff6f6f7),
      );

  Widget _bodyContent(OnboardingBloc _onboardingBloc) {
    final PageController _pageController = PageController(initialPage: 0);

    return SafeArea(
        bottom: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            OnboardingSkipButton(),
            OnboardingPageView(_pageController),
            OnboardingAnimatedDot(),
            OnboardingBottomButton(_pageController)
          ],
        ));
  }
}