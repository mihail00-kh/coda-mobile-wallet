import 'package:coda_wallet/global/global.dart';
import 'package:coda_wallet/widget/app_bar/app_bar.dart';
import 'package:coda_wallet/widget/ui/custom_box_shadow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TxnDetailScreen extends StatefulWidget {

  TxnDetailScreen({Key key}) : super(key: key);

  @override
  _TxnDetailScreenState createState() => _TxnDetailScreenState();
}

class _TxnDetailScreenState extends State<TxnDetailScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(375, 812), allowFontScaling: false);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildNoTitleAppBar(context, leading: false),
      body: SafeArea(
        child: Container(
          child: Stack(
            alignment: Alignment.center,
            children: [
              _buildSendFeeBody(),
              _buildActionsButton(context),
            ]
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.bottomCenter,
              image: AssetImage('images/common_bg.png',),
              fit: BoxFit.fitWidth
            ),
          ),
        ),
      )
    );
  }

  _buildActionsButton(BuildContext context) {
    return Positioned(
      bottom: 60.h,
      child: InkWell(
        onTap: null,
        child: Container(
          padding: EdgeInsets.only(top: 14.h, bottom: 14.h, left: 40.w, right: 40.w),
          decoration: getMinaButtonDecoration(topColor: Color(0xfff5f5f5)),
          child: Text('VIEW IN BLOCK EXPLORER',
            textAlign: TextAlign.center, style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500, color: Color(0xff2d2d2d))),
        ),
      )
    );
  }

  _buildSendFeeBody() {
    return Container(
      padding: EdgeInsets.only(left: 50.w, right: 50.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(height: 23.h),
          Center(child:
          Text('Transaction Sent', textAlign: TextAlign.left,
            style: TextStyle(fontSize: 28.sp, fontWeight: FontWeight.normal, color: Color(0xff2d2d2d)))
          ),
          Container(height: 15.h),
          Center(child: Image.asset('images/sent_success.png', width: 52.w, height: 52.w)),
          Container(height: 28.h),
          Container(
            width: double.infinity,
            height: 1.h,
            color: Color(0xff757575)),
          Container(height: 2.h,),
          Container(
            width: double.infinity,
            height: 1.h,
            color: Color(0xff757575)),
          Container(height: 28.h,),
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Text('FROM', textAlign: TextAlign.right, maxLines: 2,
                  style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.bold, color: Color(0xff2d2d2d))),
              ),
              Container(width: 8.w,),
              Expanded(
                flex: 2,
                child: Text('B62qksdP349sXvavFnQj7JYeKRfLbLaTsgjGecj8MBfzXcLkY18atHe',
                  textAlign: TextAlign.left, maxLines: 3,
                  style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.normal, color: Color(0xff616161))),
              )
            ],
          ),
          Container(height: 17.h),
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Text('TO', textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.bold, color: Color(0xff2d2d2d))),
              ),
              Container(width: 8.w,),
              Expanded(
                flex: 2,
                child: Text('B62qksdP349sXvavFnQj7JYeKRfLbLaTsgjGecj8MBfzXcLkY18atHe',
                  textAlign: TextAlign.left, maxLines: 3,
                  style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.normal, color: Color(0xff616161))),
              )
            ],
          ),
          Container(height: 16.h),
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Text('TIMESTAMP', textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.bold, color: Color(0xff2d2d2d)),),
              ),
              Container(width: 8.w,),
              Expanded(
                flex: 2,
                child: Text('31 Dec 2020 23:59:00',
                  textAlign: TextAlign.left, style: TextStyle(fontSize: 13.sp, color: Color(0xff616161)),),
              )
            ],
          ),
          Container(height: 16.h),
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Text('AMOUNT', textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.bold, color: Color(0xff2d2d2d))),
              ),
              Container(width: 8.w,),
              Expanded(
                flex: 2,
                child: Text('12345.00 MINA (\$46.62)', maxLines: 3,
                  textAlign: TextAlign.left, style: TextStyle(fontSize: 13.sp, color: Color(0xff616161))),
              )
            ],
          ),
          Container(height: 8.h,),
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Text('FEE', textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.bold, color: Color(0xff2d2d2d)),),
              ),
              Container(width: 8.w,),
              Expanded(
                flex: 2,
                child: Text('0.1 MINA (\$0.07)', textAlign: TextAlign.left, maxLines: 2,
                  style: TextStyle(fontSize: 13.sp,  color: Color(0xff616161))),
              )
            ],
          ),

          Container(height: 20.h,),
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Text('TOTAL', textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.bold, color: Color(0xff2d2d2d)),),
              ),
              Container(width: 8.w,),
              Expanded(
                flex: 2,
                child: Text('356.11 MINA (\$356.11)', textAlign: TextAlign.left, maxLines: 2,
                    style: TextStyle(fontSize: 13.sp,  color: Color(0xff616161))),
              )
            ],
          ),
          Container(height: 11.h,),
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Text('MEMO', textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.bold, color: Color(0xff2d2d2d)),),
              ),
              Container(width: 8.w,),
              Expanded(
                flex: 2,
                child: Text('Sent from Chris', textAlign: TextAlign.left, maxLines: 2,
                    style: TextStyle(fontSize: 13.sp,  color: Color(0xff616161))),
              )
            ],
          ),
          Container(height: 28.h),
          Container(
            width: double.infinity,
            height: 1.h,
            color: Color(0xff757575)),
          Container(height: 2.h,),
          Container(
            width: double.infinity,
            height: 1.h,
            color: Color(0xff757575)),
        ]
      )
    );
  }
}
