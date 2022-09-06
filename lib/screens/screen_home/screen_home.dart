import 'package:flutter/material.dart';
import 'package:trade_easy/const/colors/colors.dart';
import 'package:trade_easy/const/size/size.dart';
import 'package:trade_easy/screens/screen_home/widgets/product_side_widget.dart';
import 'package:trade_easy/screens/screen_home/widgets/sale_side_widget.dart';
import 'package:trade_easy/utils/device.dart';

class PosScreen extends StatelessWidget {
  const PosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await OrientationMode.toLandscape();
    });
    // Size _screenSize = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: kBackgroundGrey,
        body: SafeArea(
          child: Align(
            alignment: Alignment.center,
            child: FractionallySizedBox(
              heightFactor: .99,
              widthFactor: .98,
              alignment: Alignment.topCenter,
              child: OrientationMode.deviceMode == OrientationMode.normalMode
                  ? Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        //========================================                  ========================================
                        //======================================== Sale Side Widget ========================================
                        //========================================                  ========================================
                        SaleSideWidget(),

                        //==================== Constant Width ====================
                        kWidth20,

                        //========================================                     ========================================
                        //======================================== Product Side Widget ========================================
                        //========================================                     ========================================
                        ProductSideWidget()
                      ],
                    )
                  : Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        //========================================                     ========================================
                        //======================================== Product Side Widget ========================================
                        //========================================                     ========================================
                        ProductSideWidget(isVertical: true),

                        //==================== Divider ====================
                        Divider(thickness: 1, height: 10),

                        // //========================================                  ========================================
                        // //======================================== Sale Side Widget ========================================
                        // //========================================                  ========================================
                        SaleSideWidget(isVertical: true),
                      ],
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
