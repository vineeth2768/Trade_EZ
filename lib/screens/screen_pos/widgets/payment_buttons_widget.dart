import 'package:flutter/material.dart';
import 'package:trade_easy/const/size/size.dart';

import 'package:trade_easy/utils/device.dart';

class PaymentButtonsWidget extends StatelessWidget {
  const PaymentButtonsWidget({
    Key? key,
    this.isVertical = false,
  }) : super(key: key);

  final bool isVertical;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final bool isSmall = DeviceUtil.isSmall;

    return Column(
      children: [
        Container(
          height: isVertical
              ? isSmall
                  ? 22
                  : 32
              : screenSize.width / 25,
          width: double.infinity,
          color: Colors.blueGrey,
          child: FractionallySizedBox(
            widthFactor: .95,
            heightFactor: .90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FittedBox(
                  child: Text(
                    'Total Payable',
                    style: kItemsButtontyle,
                  ),
                ),
                kWidth5,
                Flexible(
                  child: FittedBox(
                    child: Text(
                      '0.000',
                      overflow: TextOverflow.ellipsis,
                      style: kItemsButtontyle,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: SizedBox(
                height: isVertical
                    ? isSmall
                        ? 33
                        : 40
                    : screenSize.width / 25,
                child: MaterialButton(
                  onPressed: () {},
                  padding: const EdgeInsets.all(5),
                  color: Colors.yellow[800],
                  child: Center(
                    child: Text(
                      'Credit Payment',
                      style: kItemsButtontyle,
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              child: SizedBox(
                height: isVertical
                    ? isSmall
                        ? 33
                        : 40
                    : screenSize.width / 25,
                child: MaterialButton(
                  onPressed: () {},
                  padding: const EdgeInsets.all(5),
                  color: Colors.green[700],
                  child: Center(
                    child: Text(
                      'Full Payment',
                      style: kItemsButtontyle,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: SizedBox(
                height: isVertical
                    ? isSmall
                        ? 33
                        : 40
                    : screenSize.width / 25,
                child: MaterialButton(
                  onPressed: () {},
                  padding: const EdgeInsets.all(5),
                  color: Colors.red[400],
                  child: Center(
                    child: Text(
                      'Cancel',
                      style: kItemsButtontyle,
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              child: SizedBox(
                height: isVertical
                    ? isSmall
                        ? 33
                        : 40
                    : screenSize.width / 25,
                child: MaterialButton(
                  onPressed: () async {},
                  padding: const EdgeInsets.all(5),
                  color: Colors.lightGreen[700],
                  child: Center(
                    child: Text(
                      'Partial Payment',
                      style: kItemsButtontyle,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
