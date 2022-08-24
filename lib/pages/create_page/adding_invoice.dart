import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/appBar/appBar.dart';
import 'package:untitled5/pages/create_page/widgets/allContainers.dart';


class AddingInvoice extends StatefulWidget {
  const AddingInvoice({Key? key}) : super(key: key);

  @override
  State<AddingInvoice> createState() => _AddingInvoiceState();
}

class _AddingInvoiceState extends State<AddingInvoice> {

  late TextEditingController _serviceController;
  late TextEditingController _sumController;

  @override
  void initState() {

    _serviceController = TextEditingController();
    _sumController = TextEditingController();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar('new_invoice'.tr(), false, const Color(0xff141416)),
      body: Column(
        children: [
          const SizedBox(height: 20),
          reusableContainer(_serviceController, "service_name"),
          reusableContainer(_sumController, "sum_of_invoice"),
          const ContractStatus(),
          saveButton(),
        ],
      ),
    );
  }
}
