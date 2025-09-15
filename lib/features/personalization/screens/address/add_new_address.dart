import 'package:azyro_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AzyroAppBar(title: Text('Add New Address'), showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(SizeConstants.defaultSpace),
        child: Form(child: Column(
          children: [
            TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.user), labelText: 'Name'),),
            const SizedBox(height: SizeConstants.spaceBtwInputFields,),
            TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.mobile), labelText: 'Phone Number'),),
            const SizedBox(height: SizeConstants.spaceBtwInputFields,),
            Row(
              children: [
                Expanded(child: TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.building_31), labelText: 'Street'),)),
                const SizedBox(width: SizeConstants.spaceBtwInputFields,),
                Expanded(child: TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.code), labelText: 'Postal Code'),)),
                const SizedBox(width: SizeConstants.spaceBtwInputFields,),
              ],
            ),
            const SizedBox(height: SizeConstants.spaceBtwInputFields,),
            Row(
              children: [
                Expanded(child: TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.building), labelText: 'City'),)),
                const SizedBox(width: SizeConstants.spaceBtwInputFields,),
                Expanded(child: TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.activity), labelText: 'State'),)),
                const SizedBox(width: SizeConstants.spaceBtwInputFields,),
              ],
            ),
            const SizedBox(height: SizeConstants.spaceBtwInputFields,),
            TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.global), labelText: 'Country'),),
            const SizedBox(height: SizeConstants.defaultSpace,),
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: Text('Save')),)
          ],
        )),),
      ),
    );
  }
}