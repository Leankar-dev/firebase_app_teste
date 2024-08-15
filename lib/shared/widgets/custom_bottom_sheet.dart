import 'package:firebase_app_teste/shared/constants/firebase_app_colors.dart';
import 'package:firebase_app_teste/shared/constants/firebase_app_text_styles.dart';
import 'package:firebase_app_teste/shared/widgets/primary_buttom.dart';
import 'package:flutter/material.dart';

Future<void> customModalBottomSheet(BuildContext context) {
  return showModalBottomSheet<void>(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(38.0),
        topRight: Radius.circular(38.0),
      ),
    ),
    builder: (BuildContext context) {
      return Container(
        decoration: const BoxDecoration(
          color: FirebaseAppColors.whiteColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(38.0),
            topRight: Radius.circular(38.0),
          ),
        ),
        height: 200,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Ops. Algo deu errado.',
                style: FirebaseAppTextStyles.mediumText20
                    .copyWith(color: FirebaseAppColors.primaryColor),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: PrimaryButtom(
                  text: 'Tentar novamente',
                  onPressed: () => Navigator.pop(context),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
