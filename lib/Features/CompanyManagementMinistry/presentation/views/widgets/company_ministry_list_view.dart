import 'package:depi_hapd/Features/CompanyManagementMinistry/presentation/views/widgets/company_ministry_list_view_item.dart';
import 'package:flutter/material.dart';

class CompanyMinistryListView extends StatefulWidget {
  const CompanyMinistryListView({super.key});

  @override
  State<CompanyMinistryListView> createState() =>
      _CompanyMinistryListViewState();
}

class _CompanyMinistryListViewState extends State<CompanyMinistryListView> {
  List<Map<String, String>> companies = [
    {'name': 'AST', 'details': 'ssssssssssss'},
    {'name': 'AUC', 'details': 'cdcdddddddddddddd'},
    {'name': 'MEA', 'details': 'aaaaaaaaaaaaaaaaaaaaaaaaaa'},
  ];

  void deleteCompany(int index) {
    setState(() {
      companies.removeAt(index); // Removing an item from the mutable list
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: companies.length,
      itemBuilder: (context, index) {
        final company = companies[index]; // جزء الحذف
        return Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: CompanyMinistryListViewItem(
            companyName: company['name'] ?? '',
            companyDetails: company['details'] ?? '',
            onDelete: () {
              deleteCompany(index);
            },
          ),
        );
      },
    );
  }
}
