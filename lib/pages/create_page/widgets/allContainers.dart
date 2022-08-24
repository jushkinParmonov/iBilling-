import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../profile_page/widgets/information_text.dart';

//Save contract button
Widget saveButton() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 16),
    width: double.maxFinite,
    height: 48,
    decoration: BoxDecoration(
      color: const Color(0xff008F7F),
      borderRadius: BorderRadius.circular(8),
    ),
    child: Center(
      child: Text(
        'save_contract'.tr(),
        style: const TextStyle(
            fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500),
      ),
    ),
  );
}

//Status input container
class Jusha extends StatefulWidget {
  const Jusha({Key? key}) : super(key: key);

  @override
  State<Jusha> createState() => _JushaState();
}

class _JushaState extends State<Jusha> {
  late String statusInput;
  bool isVisible = false;
  StatusInput _statusInput = StatusInput.physical;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'status'.tr(),
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xffF1F1F1),
            ),
          ),
          const SizedBox(height: 6),
          Column(
            children: [
              GestureDetector(
                onTap: () => setState(() => isVisible = !isVisible),
                child: Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color(0xffF1F1F1).withOpacity(0.4)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        _statusInput.name.tr(),
                        style: const TextStyle(color: Colors.white),
                      ),
                      SvgPicture.asset('assets/icons/arrow_down.svg',
                          color: const Color(0xffF1F1F1).withOpacity(0.4)),
                    ],
                  ),
                ),
              ),
              AnimatedCrossFade(
                firstChild: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff2A2A2D),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      unselectedWidgetColor: Colors.white10,
                      disabledColor: const Color(0xff008F7F),
                    ),
                    child: Column(
                      children: <Widget>[
                        ListTile(
                            onTap: () {
                              setState(() {
                                _statusInput = StatusInput.physical;
                              });
                            },
                            title: languageText(StatusInput.physical.name.tr()),
                            trailing: Radio<StatusInput>(
                              value: StatusInput.physical,
                              groupValue: _statusInput,
                              onChanged: (StatusInput? value) =>
                                  setState(() => _statusInput = value!),
                            )),
                        ListTile(
                          onTap: () {
                            setState(() {
                              _statusInput = StatusInput.legal;
                            });
                          },
                          title: languageText(StatusInput.legal.name.tr()),
                          trailing: Radio<StatusInput>(
                            value: StatusInput.legal,
                            groupValue: _statusInput,
                            onChanged: (StatusInput? value) =>
                                setState(() => _statusInput = value!),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                secondChild: const SizedBox(),
                crossFadeState: isVisible
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: const Duration(milliseconds: 1),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

enum StatusInput { physical, legal }


//Fisher's full name and address of organization
Widget reusableContainer(TextEditingController controller, String name) {
  return Padding(
    padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name.tr(),
          style:  TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: const Color(0xffF1F1F1).withOpacity(0.4),
          ),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xffF1F1F1).withOpacity(0.4)),
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextField(
            style: const TextStyle(color: Colors.white),
            decoration: const InputDecoration(
              border: InputBorder.none,
              filled: true,
            ),
            controller: controller,
          ),
        ),
      ],
    ),
  );
}



//INN container
Widget inn(TextEditingController controller) {
  return Padding(
    padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'itn'.tr(),
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xffF1F1F1),
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 48,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: const Color(0xffF1F1F1).withOpacity(0.4)),
          ),
          child: TextField(
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              suffixIcon: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/question.svg',
                  color: const Color(0xffF1F1F1).withOpacity(0.4),
                ),
              ),
              filled: true,
            ),
            controller: controller,
          ),
        ),
      ],
    ),
  );
}



//Status of contract container
class ContractStatus extends StatefulWidget {
  const ContractStatus({Key? key}) : super(key: key);

  @override
  _ContractStatusState createState() => _ContractStatusState();
}

class _ContractStatusState extends State<ContractStatus> {
  bool isVisible = false;
  StatusContract _statusContract = StatusContract.status_paid;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'status_of_the_contract'.tr(),
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: const Color(0xffF1F1F1).withOpacity(0.4),
            ),
          ),
          const SizedBox(height: 6),
          Column(
            children: [
              GestureDetector(
                onTap: () => setState(() => isVisible = !isVisible),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color(0xffF1F1F1).withOpacity(0.4)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        _statusContract.name.tr(),
                        style: const TextStyle(color: Colors.white),
                      ),
                      SvgPicture.asset('assets/icons/arrow_down.svg',
                          color: const Color(0xffF1F1F1).withOpacity(0.4)),
                    ],
                  ),
                ),
              ),
              AnimatedCrossFade(
                firstChild: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff2A2A2D),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      unselectedWidgetColor: Colors.white10,
                      disabledColor: const Color(0xff008F7F),
                    ),
                    child: Column(
                      children: <Widget>[
                        ListTile(
                            onTap: () {
                              setState(() {
                                _statusContract = StatusContract.status_paid;
                              });
                            },
                            title: languageText(
                                StatusContract.status_paid.name.tr()),
                            trailing: Radio<StatusContract>(
                              value: StatusContract.status_paid,
                              groupValue: _statusContract,
                              onChanged: (StatusContract? value) =>
                                  setState(() => _statusContract = value!),
                            )),
                        ListTile(
                          onTap: () {
                            setState(() {
                              _statusContract =
                                  StatusContract.status_in_process;
                            });
                          },
                          title: languageText(
                              StatusContract.status_in_process.name.tr()),
                          trailing: Radio<StatusContract>(
                            value: StatusContract.status_in_process,
                            groupValue: _statusContract,
                            onChanged: (StatusContract? value) =>
                                setState(() => _statusContract = value!),
                          ),
                        ),
                        ListTile(
                          onTap: () {
                            setState(() {
                              _statusContract =
                                  StatusContract.status_in_rejected_payme;
                            });
                          },
                          title: languageText(StatusContract
                              .status_in_rejected_payme.name
                              .tr()),
                          trailing: Radio<StatusContract>(
                            value: StatusContract.status_in_rejected_payme,
                            groupValue: _statusContract,
                            onChanged: (StatusContract? value) =>
                                setState(() => _statusContract = value!),
                          ),
                        ),
                        ListTile(
                          onTap: () {
                            setState(() {
                              _statusContract =
                                  StatusContract.status_in_rejected_iq;
                            });
                          },
                          title: languageText(
                              StatusContract.status_in_rejected_iq.name.tr()),
                          trailing: Radio<StatusContract>(
                            value: StatusContract.status_in_rejected_iq,
                            groupValue: _statusContract,
                            onChanged: (StatusContract? value) =>
                                setState(() => _statusContract = value!),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                secondChild: const SizedBox(),
                crossFadeState: isVisible
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: const Duration(milliseconds: 1),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

enum StatusContract {
  status_paid,
  status_in_process,
  status_in_rejected_payme,
  status_in_rejected_iq
}
