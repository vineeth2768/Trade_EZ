// ignore_for_file: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member, must_be_immutable

import 'package:flutter/material.dart';

import 'package:flutter_typeahead/flutter_typeahead.dart';

import 'package:trade_easy/const/colors/colors.dart';
import 'package:trade_easy/const/size/size.dart';

import 'package:trade_easy/screens/screen_pos/widgets/sale_side_widget.dart';
import 'package:trade_easy/utils/device.dart';
import 'package:trade_easy/widgets/custom_material_button.dart';

class ProductSideWidget extends StatefulWidget {
  const ProductSideWidget({
    Key? key,
    this.isVertical = false,
  }) : super(key: key);

  final bool isVertical;

  //========== FutureBuilder ModelClass by Integer ==========
  static int? builderModel;

  @override
  State<ProductSideWidget> createState() => _ProductSideWidgetState();
}

class _ProductSideWidgetState extends State<ProductSideWidget> {
  // static GlobalKey<_ProductSideWidgetState> productSideWidget = GlobalKey();

  //========== Lists ==========
  List categories = [], subCategories = [], brands = [];

  //========== TextEditing Controllers ==========
  final _productController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    // _builderModel = null;
    return SizedBox(
      width: widget.isVertical ? double.infinity : screenSize.width / 1.9,
      height: widget.isVertical
          ? isThermal
              ? screenSize.height / 2.60
              : screenSize.height / 2.25
          : double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          //==================== Search & Filter ====================
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //========== Get All Products Search Field ==========
                  Flexible(
                    flex: 9,
                    child: TypeAheadField(
                      minCharsForSuggestions: 0,
                      debounceDuration: const Duration(milliseconds: 500),
                      hideSuggestionsOnKeyboardHide: true,
                      textFieldConfiguration: TextFieldConfiguration(
                          controller: _productController,
                          style: kText_10_12,
                          decoration: InputDecoration(
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
                                onTap: () async {},
                              ),
                            ),
                            contentPadding: EdgeInsets.all(isThermal ? 8 : 10),
                            hintText: 'Search product by name',
                            hintStyle: kText_10_12,
                            border: const OutlineInputBorder(),
                          )),
                      noItemsFoundBuilder: (context) => const SizedBox(
                          height: 50,
                          child: Center(child: Text('No Product Found!'))),
                      suggestionsCallback: (pattern) async {
                        return [];
                      },
                      itemBuilder: (context, suggestion) {
                        return ListTile(
                          title: Text(
                            'Sandwich',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: kText_10_12,
                          ),
                        );
                      },
                      onSuggestionSelected: (selectedItem) async {},
                    ),
                  ),
                  kWidth5,
                  //========== Barcode Scanner Button ==========
                  Flexible(
                    flex: 1,
                    child: FittedBox(
                      alignment: Alignment.center,
                      child: IconButton(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.center,
                        constraints: const BoxConstraints(
                          minHeight: 20,
                          maxHeight: 20,
                        ),
                        onPressed: () async => {},
                        icon: Icon(
                          Icons.list,
                          color: Colors.blue,
                          size: isThermal ? 22 : 25,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              kHeight3,
              //========== Get All Customers Search Field ==========
              if (widget.isVertical)
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      flex: 8,
                      child: TypeAheadField(
                        minCharsForSuggestions: 0,
                        debounceDuration: const Duration(milliseconds: 500),
                        hideSuggestionsOnKeyboardHide: true,
                        textFieldConfiguration: TextFieldConfiguration(
                            controller: SaleSideWidget.customerController,
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
                                  onTap: () {},
                                ),
                              ),
                              contentPadding:
                                  EdgeInsets.all(isThermal ? 8 : 10),

                              hintText: 'Customer',
                              hintStyle: kText_10_12,
                              border: const OutlineInputBorder(),
                            )),
                        noItemsFoundBuilder: (context) => const SizedBox(
                            height: 50,
                            child: Center(child: Text('No Customer Found!'))),
                        suggestionsCallback: (pattern) async {
                          return [];
                        },
                        itemBuilder: (context, suggestion) {
                          return ListTile(
                            title: Text(
                              'vineeth',
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
                              size: isThermal ? 22 : 25,
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
                            size: isThermal ? 22 : 25,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
            ],
          ),

          //==================== Quick Filter Buttons ====================
          Padding(
            padding: widget.isVertical
                ? const EdgeInsets.only(top: 4.0, bottom: 2.0)
                : const EdgeInsets.only(bottom: 5),
            child: SizedBox(
              height: isThermal ? 22 : 30,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 4,
                    child: CustomMaterialBtton(
                      color: Colors.blue,
                      onPressed: () async {},
                      padding: const EdgeInsets.all(0),
                      fontSize: 10,
                      buttonText: 'Categories',
                    ),
                  ),
                  kWidth5,
                  Expanded(
                    flex: 5,
                    child: CustomMaterialBtton(
                        onPressed: () async {},
                        padding: const EdgeInsets.all(0),
                        fontSize: 10,
                        color: Colors.orange,
                        buttonText: 'Sub Categories'),
                  ),
                  kWidth5,
                  Expanded(
                    flex: 3,
                    child: CustomMaterialBtton(
                      onPressed: () async {},
                      padding: const EdgeInsets.all(0),
                      color: Colors.indigo,
                      fontSize: 10,
                      buttonText: 'Brands',
                    ),
                  ),
                  kWidth5,
                  Expanded(
                    flex: 2,
                    child: MaterialButton(
                      onPressed: () async {},
                      color: Colors.blue,
                      child: const FittedBox(
                        fit: BoxFit.fitHeight,
                        child: Icon(
                          Icons.rotate_left,
                          color: kWhiteColor,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),

          //==================== Product Listing Grid ====================
          Expanded(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: widget.isVertical ? 4 : 5,
                      childAspectRatio: (1 / .75),
                    ),
                    itemCount: 40,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () async {},
                        child: Card(
                          elevation: 10,
                          child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 5.0),
                              child: ProductSideWidget.builderModel == null
                                  ? Column(
                                      children: [
                                        Expanded(
                                          flex: 4,
                                          child: Text(
                                            'item',
                                            textAlign: TextAlign.center,
                                            softWrap: true,
                                            style: kItemsTextStyle,
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 2,
                                          ),
                                        ),
                                        const Spacer(),
                                        Expanded(
                                          flex: 2,
                                          child: Text(
                                            'Qty : 5',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize:
                                                  DeviceUtil.isTablet ? 10 : 8,
                                              color: 1 <= 0
                                                  ? kTextErrorColor
                                                  : kTextColor,
                                            ),
                                            maxLines: 1,
                                          ),
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: Text(
                                            '150',
                                            style: kItemsTextStyle,
                                            maxLines: 1,
                                          ),
                                        )
                                      ],
                                    )
                                  : Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          ProductSideWidget.builderModel == 0
                                              ? 'category'
                                              : ProductSideWidget
                                                          .builderModel ==
                                                      1
                                                  ? 'subCategory'
                                                  : ProductSideWidget
                                                              .builderModel ==
                                                          2
                                                      ? 'brand'
                                                      : '',
                                          textAlign: TextAlign.center,
                                          softWrap: true,
                                          style: kItemsTextStyle,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: ProductSideWidget
                                                      .builderModel ==
                                                  0
                                              ? 2
                                              : ProductSideWidget
                                                          .builderModel ==
                                                      1
                                                  ? 2
                                                  : ProductSideWidget
                                                              .builderModel ==
                                                          2
                                                      ? 2
                                                      : 1,
                                        ),
                                      ],
                                    )),
                        ),
                      );
                    },
                  ),

                  // : const Center(
                  //     child: Text('No Item Found!'),
                  //   );
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: CircleAvatar(
                      backgroundColor: baseColor,
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.filter_list, size: 20)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
