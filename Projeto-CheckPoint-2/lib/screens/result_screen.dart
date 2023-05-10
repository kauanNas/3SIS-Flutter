import 'package:flutter/material.dart';
import 'package:githubrepo/components/all.dart';
import 'package:githubrepo/constants/typography.dart';

import '../mocks/repositories_mock.dart';
import '../models/repository.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({super.key});

  final Repository repository = kRepositoriesMock.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        text: 'Repositório',
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 20),
              child: CustomAvatar(
                avatarUrl: repository.owner?.avatar,
                radius: 100,
              ),
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 30),
                  child: const CustomText(
                      text: 'Repositório: ', style: TypographyType.label),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 0),
                  child: CustomText(
                      text: '${repository.name}', style: TypographyType.title),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 30),
                  child: const CustomText(
                      text: 'Usuário: ', style: TypographyType.label),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 0),
                  child: CustomText(
                      text: '${repository.owner?.login}',
                      style: TypographyType.title),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 30),
                  child: const CustomText(
                      text: 'Descrição: ', style: TypographyType.label),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 0),
                  child: CustomText(
                      text: '${repository.description}',
                      style: TypographyType.title),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
