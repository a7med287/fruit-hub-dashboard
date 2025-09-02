import 'package:flutter/material.dart';
import '../../../../../core/utils/app_text_styles.dart';
import 'custom_check_box.dart';

class IsFeaturedProduct extends StatefulWidget {
  const IsFeaturedProduct({super.key, required this.isTermsAccepted});

  final ValueChanged<bool> isTermsAccepted ;
  @override
  State<IsFeaturedProduct> createState() => _IsFeaturedProductState();
}

class _IsFeaturedProductState extends State<IsFeaturedProduct> {
   bool isAcceptedTerms = false ;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          isChecked: isAcceptedTerms,
          onChecked: (bool value) {
              setState(() {
                isAcceptedTerms = value ;
                widget.isTermsAccepted(value);
              });
          },
        ),
        SizedBox(width: 16,),
        SizedBox(
          width: MediaQuery.sizeOf(context).width - 16 * 2 - 48,
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "Is Featured ? ",
                  style: TextStyles.semiBold13,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

