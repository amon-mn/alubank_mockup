import 'package:alubank/components/box_card.dart';
import 'package:alubank/components/color_dot.dart';
import 'package:flutter/material.dart';

import '../../themes/theme_colors.dart';
import '../content_division.dart';

class AccountPoints extends StatelessWidget {
  const AccountPoints({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: _AccountPoints(),
    );
  }
}

class _AccountPoints extends StatelessWidget {
  const _AccountPoints({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Text('Pontos da conta',
              style: Theme.of(context).textTheme.titleMedium),
        ),
        BoxCard(
          boxContent: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Text('Pontos totais:'),
              ),
              Text('4500.00', style: Theme.of(context).textTheme.bodyLarge),
              const Padding(
                padding: EdgeInsets.only(top: 8, bottom: 8),
                child: ContentDivision(),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text('Objetivos:', style: Theme.of(context).textTheme.titleMedium,),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8, right: 8, bottom: 8),
                    child: ColorDot(color: ThemeColors.accountPoints['freeDelivery']),
                  ),
                  const Text('Entrega grátis: 1500.00 pts'),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8, right: 8, bottom: 8),
                    child: ColorDot(color: ThemeColors.accountPoints['oneMStreaming']),
                  ),
                  const Text('1 mês de streaming: 2000.00 pts'),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
