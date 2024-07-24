import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BasicGridView extends StatelessWidget {
  const BasicGridView({super.key});

  @override
  Widget build(BuildContext context) {
    const List<IconData> items = [
    FontAwesomeIcons.store,
    FontAwesomeIcons.shoppingCart,
    FontAwesomeIcons.cashRegister,
    FontAwesomeIcons.receipt,
    FontAwesomeIcons.tag,
    FontAwesomeIcons.gift,
    FontAwesomeIcons.creditCard,
    FontAwesomeIcons.boxOpen,
    FontAwesomeIcons.shippingFast,
    FontAwesomeIcons.moneyBillWave,
    FontAwesomeIcons.wallet,
    FontAwesomeIcons.barcode,
    FontAwesomeIcons.shoppingBag,
    FontAwesomeIcons.storeAlt,
    FontAwesomeIcons.moneyCheckAlt,
    FontAwesomeIcons.cartPlus,
    FontAwesomeIcons.dolly,
    FontAwesomeIcons.truckLoading,
    FontAwesomeIcons.truckMoving,
    FontAwesomeIcons.handshake,
  ];
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 1.0,
      ),
      itemCount: items.length, // ใช้จำนวนของรายการ
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.pink.shade200,
              ),
              borderRadius: BorderRadius.circular(15),
              color: Colors.pink.shade50),
          child: Center(
            child: Icon(
              items[index],
              color: Colors.pink.shade300,
            ),
          ),
        );
      },
    );
  }
}
