import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Utils/colors.dart';

class CustomDropDownButton extends StatefulWidget {
  const CustomDropDownButton({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  bool value = false;
  List<Map<String, dynamic>> selectedItems = [];
  List<Map> jonson = [
    {"id": "1", "title": "All channel", "value": true, "checkBox": false},
    {
      "id": "2",
      "title": "Stores",
      "color": CustomColors.kOrange,
      "value": true,
      "checkBox": true
    },
    {
      "id": "3",
      "title": "Delivery",
      "color": CustomColors.kPurple,
      "value": true,
      "checkBox": false
    },
    {
      "id": "4",
      "title": "Customer",
      "color": CustomColors.kBlueAccent,
      "value": true,
      "checkBox": false
    },
    {"id": "5", "title": "_____________", "value": false, "checkBox": false},
    {"id": "6", "title": "Transaction", "value": false, "checkBox": false},
    {
      "id": "7",
      "title": "Pending",
      "color": CustomColors.kBlueAccent,
      "value": true,
      "checkBox": true
    },
    {
      "id": "8",
      "title": "Completed",
      "color": CustomColors.kGreen,
      "value": true,
      "checkBox": false
    },
    {
      "id": "9",
      "title": "Cancelled",
      "color": CustomColors.kbrownIconColor,
      "value": true,
      "checkBox": false,
    },
  ];

  String selectedValue = '1';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(7.r)),
      child: DropdownButtonHideUnderline(
        child: DropdownButton2(
          isExpanded: true,
          hint: Text(
            'Filter',
            style: TextStyle(
              fontSize: 14,
              color: CustomColors.kbrownIconColor,
            ),
          ),
          items: jonson.map((Map map) {
            return DropdownMenuItem<String>(
              value: map["id"].toString(),
              //disable default onTap to avoid closing menu when selecting an item
              enabled: false,
              child: StatefulBuilder(
                builder: (context, menuSetState) {
                  //  final _isSelected = jonson.contains(map);
                  return SizedBox(
                    height: double.infinity,
                    child: Column(
                      children: [
                        ListTile(
                          leading: Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.r),
                              color: map["color"],
                            ),
                          ),
                          title: Text(
                            map["title"],
                            style: const TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          trailing: map["value"] == false
                              ? const SizedBox()
                              : map["value"] == false
                                  ? const SizedBox()
                                  : Checkbox(
                                      checkColor: CustomColors.kBackgroundColor,
                                      activeColor: map["checkBox"] == true
                                          ? CustomColors.kbrownIconColor
                                          : CustomColors.kBackgroundColor,
                                      value: map["checkBox"],
                                      onChanged: (val) {
                                        setState(() {
                                          map["checkBox"] = val as bool;
                                        });
                                      }),
                        ),
                      ],
                    ),
                  );
                },
              ),
            );
          }).toList(),
          //Use last selected item as the current value so if we've limited menu height, it scroll to last item.
          value: selectedValue,
          onChanged: (value) {},
          buttonHeight: 20.w,
          buttonWidth: 70.w,
          itemHeight: 75.h,
          itemPadding: EdgeInsets.zero,
          selectedItemBuilder: (context) {
            return selectedItems.map(
              (item) {
                return Container(
                  alignment: AlignmentDirectional.center,
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    selectedItems.join(', '),
                    style: const TextStyle(
                      fontSize: 14,
                      overflow: TextOverflow.ellipsis,
                    ),
                    maxLines: 1,
                  ),
                );
              },
            ).toList();
          },
        ),
      ),
    );
  }
}
