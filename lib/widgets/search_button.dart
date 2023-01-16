import 'package:app/constants.dart';
import 'package:app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: kshadowList,
        borderRadius: BorderRadius.all(
          Radius.circular(kdoubleradius),
        ),
      ),
      child: const CustomTextField(),
    );
  }
}