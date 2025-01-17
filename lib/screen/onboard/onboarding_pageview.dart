import 'package:flutter/material.dart';
import 'package:memento_app/blocs/onboarding_bloc.dart';
import 'package:memento_app/screen/onboard/page_view_item.dart';
import 'package:provider/provider.dart';

class OnboardingPageView extends StatelessWidget {
  final PageController _pageController;

  OnboardingPageView(this._pageController);

  @override
  Widget build(BuildContext context) {
    var _bloc = Provider.of<OnboardingBloc>(context);
    _bloc.stateSink.add(_pageController.initialPage);
    return Container(
      color: Colors.transparent,
      height: MediaQuery.of(context).size.height * .6,
      child: PageView(
        physics: ClampingScrollPhysics(),
        controller: _pageController,
        onPageChanged: (int page) {
          _bloc.stateSink.add(page);
        },
        children: [
          PageViewItem(
              image: 'images/intro1.png',
              title: 'Queremos ajudar no seu dia a dia',
              text:
                  'Pode definir objectivos diários e a app vai enviar notificações para que não deixe nada por fazer.'),
          PageViewItem(
              image: 'images/intro2.png',
              title: "O teu assistente pessoal de memória",
              text:
                  "Temos exercícios tarefas, para lhe propor que o vão ajudar a melhorar a sua memória."),
          PageViewItem(
              image: 'images/intro3.png',
              title: "Crie o seu perfil para iniciar",
              text: 'Explicação')
        ],
      ),
    );
  }
}
