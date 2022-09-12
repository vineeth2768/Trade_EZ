import 'package:flutter/material.dart';
import 'package:trade_easy/const/colors/colors.dart';

import 'package:trade_easy/const/size/size.dart';

class PriceSectionWidget extends StatelessWidget {
  const PriceSectionWidget({
    Key? key,
    this.isVertical = false,
  }) : super(key: key);

  final bool isVertical;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Container(
      height: isVertical ? screenSize.height / 20 : screenSize.width / 20,
      color: kWhiteColor,
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: FractionallySizedBox(
          heightFactor: .8,
          widthFactor: .95,
          child: Flex(
            direction: Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FittedBox(
                              child: Text(
                                'Items',
                                style: kItemsPriceStyle,
                              ),
                            ),
                            kWidth5,
                            Flexible(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  FittedBox(
                                    child: Text(
                                      '0',
                                      overflow: TextOverflow.ellipsis,
                                      style: kItemsPriceStyleBold,
                                    ),
                                  ),
                                  Flexible(
                                    child: FittedBox(
                                      child: Text(
                                        '(0)',
                                        softWrap: false,
                                        overflow: TextOverflow.ellipsis,
                                        style: kItemsPriceStyleBold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      kWidth20,
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FittedBox(
                              child: Text(
                                'Total',
                                style: kItemsPriceStyle,
                              ),
                            ),
                            kWidth5,
                            Flexible(
                              child: FittedBox(
                                child: Text(
                                  '0.00',
                                  overflow: TextOverflow.ellipsis,
                                  style: kItemsPriceStyleBold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FittedBox(
                              child: Text(
                                'Discount',
                                style: kItemsPriceStyle,
                              ),
                            ),
                            kWidth5,
                            Flexible(
                              child: FittedBox(
                                child: Text(
                                  '(0)0.00',
                                  overflow: TextOverflow.ellipsis,
                                  style: kItemsPriceStyleBold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      kWidth20,
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FittedBox(
                              child: Text(
                                'VAT',
                                style: kItemsPriceStyle,
                              ),
                            ),
                            kWidth5,
                            Flexible(
                              child: FittedBox(
                                child: Text(
                                  '0.00',
                                  overflow: TextOverflow.ellipsis,
                                  style: kItemsPriceStyleBold,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
