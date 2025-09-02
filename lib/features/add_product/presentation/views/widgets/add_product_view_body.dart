import 'package:flutter/material.dart';
import 'package:fruit_hub_dashboard/core/widgets/custom_text_field.dart';
import 'package:fruit_hub_dashboard/features/add_product/presentation/views/widgets/is_featured_product.dart';

import 'image_filed.dart';

class AddProductViewBody extends StatefulWidget {
  const AddProductViewBody({super.key});

  @override
  State<AddProductViewBody> createState() => _AddProductViewBodyState();
}

class _AddProductViewBodyState extends State<AddProductViewBody> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              CustomTextFormField(
                hintText: "Product Name",
                textInputType: TextInputType.name,
              ),
              SizedBox(height: 16),
              CustomTextFormField(
                hintText: "Product Price",
                textInputType: TextInputType.number,
              ),
              SizedBox(height: 16),
              CustomTextFormField(
                hintText: "Product Code",
                textInputType: TextInputType.number,
              ),
              SizedBox(height: 16),
              CustomTextFormField(
                hintText: "Product Description",
                maxLines: 5,
                textInputType: TextInputType.text,
              ),
              SizedBox(height: 16),
              IsFeaturedProduct(isTermsAccepted: (value) {

              },),
              SizedBox(height: 16),
              ImageField(onFileChanged: (image) {  },)
            ],
          ),
        ),
      ),
    );
  }
}
