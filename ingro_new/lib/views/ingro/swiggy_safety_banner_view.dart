import 'package:flutter/material.dart';
import 'package:ingronew/utils/app_colors.dart';
import 'package:ingronew/utils/ui_helper.dart';

class SwiggySafetyBannerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      height: 200.0,
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.arrow_downward,
                color: swiggyOrange,
              ),
              UIHelper.horizontalSpaceExtraSmall(),
              Flexible(
                child: Text(
                  "In-Gro's KEY MEASURES TO ENSURE SAFETY",
                  style: Theme.of(context).textTheme.subtitle2.copyWith(
                        color: swiggyOrange,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ),
              UIHelper.horizontalSpaceExtraSmall(),
              Icon(
                Icons.arrow_downward,
                color: swiggyOrange,
              ),
            ],
          ),
          UIHelper.verticalSpaceMedium(),
          Flexible(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) => Container(
                margin: const EdgeInsets.only(right: 5.0),
                padding: const EdgeInsets.all(5.0),
                width: MediaQuery.of(context).size.width / 0.8,
                decoration: BoxDecoration(
                  color: Colors.orange[100],
                  border: Border.all(color: swiggyOrange, width: 2.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: <Widget>[
                    Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'No-contact Delivery',
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                                UIHelper.verticalSpaceExtraSmall(),
                                Text(
                                  'Have your order dropped of at your door or gate for added safety',
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                              ],
                            ),
                          ),
                          UIHelper.verticalSpaceExtraSmall(),
                          FlatButton(
                            child: Text(
                              'Know More',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  .copyWith(color: darkOrange),
                            ),
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                    UIHelper.horizontalSpaceSmall(),
                    ClipOval(
                      child: Image.asset(
                        'assets/fruites/fru_veg.jpg',
                        height: 90.0,
                        width: 90.0,
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
