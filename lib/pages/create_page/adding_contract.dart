import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/appBar/appBar.dart';
import 'package:untitled5/pages/create_page/widgets/allContainers.dart';

class AddingContract extends StatefulWidget {
  const AddingContract({Key? key}) : super(key: key);

  @override
  State<AddingContract> createState() => _AddingContractState();
}

class _AddingContractState extends State<AddingContract> {

  late TextEditingController nameController;
  late TextEditingController addressController;
  late TextEditingController innController;

  @override
  void initState() {
    nameController = TextEditingController();
    addressController = TextEditingController();
    innController = TextEditingController();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('new_contract'.tr(), false, const Color(0xff141416)),
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          const Jusha(),
          reusableContainer(nameController, "fisher_name"),
          reusableContainer(addressController, "address"),
          inn(innController),
          const ContractStatus(),
          saveButton(),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
