// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:depi_hapd/constant.dart';
import 'package:depi_hapd/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CompanyMinistryListViewItem extends StatefulWidget {
  CompanyMinistryListViewItem({
    required this.companyName,
    required this.companyDetails,
    required this.onDelete,
  });

  final String companyName;
  final String companyDetails;
  final VoidCallback onDelete;

  @override
  _CompanyMinistryListViewItemState createState() =>
      _CompanyMinistryListViewItemState();
}

class _CompanyMinistryListViewItemState
    extends State<CompanyMinistryListViewItem> {
  String selectedValue = '';
  bool isExpanded = false;

  @override
  void initState() {
    super.initState();
    selectedValue = widget.companyName;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: Card(
        color: kGrey.shade200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 190,
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 13),
                    decoration: BoxDecoration(
                      color: kGreenAccentColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          selectedValue,
                          style: Styles.textStyle20.copyWith(color: kWhite),
                        ),
                        Icon(
                          isExpanded
                              ? Icons.arrow_drop_up
                              : Icons.arrow_drop_down,
                          color: kWhite,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.delete_outline_rounded,
                        size: 36, color: kGrey),
                    onPressed: widget.onDelete,
                  ),
                ],
              ),
              if (isExpanded) ...[
                SizedBox(height: 10),
                Text(
                  'Company Details:',
                  style: Styles.text18StyleW600,
                ),
                SizedBox(height: 6),
                Text(
                  widget.companyDetails,
                  style: Styles.text15Stylew400,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
