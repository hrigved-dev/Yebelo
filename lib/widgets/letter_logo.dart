import 'package:app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LetterLogo extends StatelessWidget {
  const LetterLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text("i", style: kistyle,),
          const Text("Kart", style: kwordstyle,),
      ],
    );
  }
}