// ignore_for_file: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member

import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:trade_easy/const/colors/colors.dart';
import 'package:trade_easy/const/size/size.dart';
import 'package:trade_easy/screens/screen_home/widgets/payment_buttons_widget.dart';
import 'package:trade_easy/screens/screen_home/widgets/price_section_widget.dart';
import 'package:trade_easy/screens/screen_home/widgets/sale_table_header_widget.dart';
import 'package:trade_easy/utils/device.dart';

class SaleSideWidget extends StatelessWidget {
  const SaleSideWidget({
    Key? key,
    this.isVertical = false,
  }) : super(key: key);

  final bool isVertical;

  //==================== TextEditing Controllers ====================
  static final TextEditingController customerController =
      TextEditingController();

  //==================== Global Keys ====================
  // static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final Size screenSize = DeviceUtil.screenSize(context);
    final bool isSmall = DeviceUtil.isSmall;
    return Expanded(
      child: SizedBox(
        width: isVertical ? double.infinity : screenSize.width / 2.5,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (!isVertical)
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //==================== Get All Customers Search Field ====================
                  Flexible(
                    flex: 8,
                    child: TypeAheadField(
                      minCharsForSuggestions: 0,
                      debounceDuration: const Duration(milliseconds: 500),
                      hideSuggestionsOnKeyboardHide: true,
                      textFieldConfiguration: TextFieldConfiguration(
                          controller: customerController,
                          style: kText_10_12,
                          decoration: InputDecoration(
                            // constraints: const BoxConstraints(maxHeight: 35),
                            fillColor: Colors.white,
                            filled: true,
                            isDense: true,
                            suffixIconConstraints: const BoxConstraints(
                              minWidth: 10,
                              minHeight: 10,
                            ),
                            suffixIcon: Padding(
                              padding: kClearTextIconPadding,
                              child: InkWell(
                                child: const Icon(Icons.clear, size: 15),
                                onTap: () {
                                  customerController.clear();
                                },
                              ),
                            ),
                            contentPadding: EdgeInsets.all(isSmall ? 8 : 10),

                            hintText: 'Customer',
                            hintStyle: kText_10_12,
                            border: const OutlineInputBorder(),
                          )),
                      noItemsFoundBuilder: (context) => const SizedBox(
                          height: 50,
                          child: Center(
                              child:
                                  Text('No Customer Found!', style: kText12))),
                      suggestionsCallback: (pattern) async {
                        return [];
                      },
                      itemBuilder: (context, suggestion) {
                        return ListTile(
                          title: Text(
                            '',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: DeviceUtil.isTablet ? 12 : 10),
                          ),
                        );
                      },
                      onSuggestionSelected: (suggestion) {},
                    ),
                  ),
                  kWidth5,

                  //========== View Customer Button ==========
                  Flexible(
                    flex: 1,
                    child: FittedBox(
                      child: IconButton(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.center,
                          constraints: const BoxConstraints(
                            minHeight: 20,
                            maxHeight: 20,
                          ),
                          onPressed: () {},
                          icon: Icon(
                            Icons.visibility,
                            color: Colors.blue,
                            size: isSmall ? 22 : 25,
                          )),
                    ),
                  ),

                  //========== Add Customer Button ==========
                  Flexible(
                    flex: 1,
                    child: FittedBox(
                      child: IconButton(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.center,
                        constraints: const BoxConstraints(
                          minHeight: 20,
                          maxHeight: 20,
                        ),
                        onPressed: () async {},
                        icon: Icon(
                          Icons.person_add,
                          color: Colors.blue,
                          size: isSmall ? 22 : 25,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            if (!isVertical) kHeight3,
            //==================== Table Header ====================
            const SalesTableHeaderWidget(),

            //==================== Product Items Table ====================
            Expanded(
              child: SingleChildScrollView(
                child: Table(
                  columnWidths: const {
                    0: FractionColumnWidth(0.30),
                    1: FractionColumnWidth(0.23),
                    2: FractionColumnWidth(0.12),
                    3: FractionColumnWidth(0.23),
                    4: FractionColumnWidth(0.12),
                  },
                  border: TableBorder.all(color: Colors.grey, width: 0.5),
                  children: List<TableRow>.generate(
                    10,
                    (index) {
                      return TableRow(children: [
                        //==================== Item Name ====================
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          color: Colors.white,
                          height: isSmall ? 25 : 30,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '$index',
                            softWrap: true,
                            style: kItemsTextStyle,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ),

                        //==================== Unit Price ====================
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          color: Colors.white,
                          height: isSmall ? 25 : 30,
                          alignment: Alignment.topCenter,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            inputFormatters: digitsOnly,
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              isDense: true,
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 10),
                            ),
                            style: kItemsTextStyle,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return '*';
                              }
                              return null;
                            },
                            onChanged: (value) {},
                          ),
                        ),
                        //==================== Quantity ====================
                        Container(
                          color: Colors.white,
                          height: isSmall ? 25 : 30,
                          alignment: Alignment.topCenter,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            inputFormatters: digitsOnly,
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              isDense: true,
                              errorStyle: TextStyle(fontSize: 0.1),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.zero,
                                borderSide: BorderSide(
                                    color: kTextErrorColor, width: 0.8),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.zero,
                                borderSide: BorderSide(
                                    color: kTextErrorColor, width: 0.8),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 5.0),
                            ),
                            style: kItemsTextStyle,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  value == '.') {
                                return '*';
                              }
                              return null;
                            },
                            onChanged: (value) {},
                          ),
                        ),
                        //==================== Sub Total ====================
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          color: Colors.white,
                          height: isSmall ? 25 : 30,
                          alignment: Alignment.center,
                          child: Text(
                            '00',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: kItemsTextStyle,
                          ),
                        ),
                        //==================== Delete Icon ====================
                        Container(
                            color: Colors.white,
                            height: isSmall ? 25 : 30,
                            alignment: Alignment.center,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.close,
                                size: isSmall ? 12 : 16,
                                color: kTextColor,
                              ),
                            ))
                      ]);
                    },
                  ),
                ),
              ),
            ),
            kHeight5,

            //==================== Price Sections ====================
            PriceSectionWidget(isVertical: isVertical),

            //==================== Payment Buttons Widget ====================
            PaymentButtonsWidget(isVertical: isVertical)
          ],
        ),
      ),
    );
  }
}
