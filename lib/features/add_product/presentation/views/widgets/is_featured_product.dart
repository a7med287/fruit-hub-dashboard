import 'package:flutter/material.dart';
import '../../../../../core/utils/app_text_styles.dart';
import 'custom_check_box.dart';

class IsFeaturedProduct extends StatefulWidget {
  const IsFeaturedProduct({super.key, required this.isFeatured});

  final ValueChanged<bool> isFeatured ;
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
                widget.isFeatured(value);
              });
          },
        ),
        SizedBox(
          width:12
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width - 16 * 2 - 48,
          child:Text("Is Featured ? ",style:  TextStyles.semiBold13,)
        ),
      ],
    );
  }
}

