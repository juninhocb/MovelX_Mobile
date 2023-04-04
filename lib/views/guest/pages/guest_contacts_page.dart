import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../helpers/constants/app_colors.dart';
import '../../../helpers/constants/app_constants.dart';

class GuestContactsPage extends StatefulWidget {
  const GuestContactsPage({Key? key}) : super(key: key);

  @override
  State<GuestContactsPage> createState() => _GuestContactsPageState();
}

class _GuestContactsPageState extends State<GuestContactsPage> {
  final List<String> _logoPaths = [
    AppConstants.logoImage3,
    AppConstants.logoImage4,
    AppConstants.logoImage3,
    AppConstants.logoImage1,
    AppConstants.logoImage5
  ];

  final List<String> _subjects = [
    "Orçamento para o projeto X",
    "Quanto custa o móvel tal",
    "Tempo estimado entrega de cozinha",
    "Orçamento para o projto Y",
    "Gostei da marcenaria, qual o contato"
  ];

  final List<String> _dataSends = [
    "11/02/2023",
    "10/02/2023",
    "24/01/2023",
    "12/01/2023",
    "14/12/2022"
  ];

  final List<bool> _status = [false, false, true, true, true];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.textColor,
      body: Column(
        children: [
          _buildTopFixedMenu(),
          Expanded(child: _buildBody()),
        ],
      ),
    );
  }

  Widget _buildTopFixedMenu() {
    return Container(
      padding: EdgeInsets.only(top: 12, right: 12, left: 12),
      height: 65,
      color: AppColors.mainColor,
      child: Container(
        padding: EdgeInsets.only(top: 10),
        width: double.maxFinite,
        child: Text(
          "Contatos",
          style: TextStyle(color: AppColors.detailColor, fontSize: 25),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              height: 100,
              color: index % 2 == 0
                  ? AppColors.secondaryDetailColor
                  : AppColors.detailColor,
              child: Row(
                children: [
                  Container(
                    child: Image.asset(_logoPaths[index]),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Assunto: ${_subjects[index]}",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: AppColors.mainColor),
                          maxLines: 2,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Enviado dia: ${_dataSends[index]}",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: AppColors.mainColor),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _status[index]
                                ? Icon(
                                    Icons.check,
                                    color: Colors.green,
                                  )
                                : Icon(
                                    Icons.close,
                                    color: Colors.red,
                                  ),
                            const SizedBox(
                              height: 10,
                            ),
                            _status[index]
                                ? Column(
                                    children: [
                                      Text(
                                        "Respondido - verifque seu email",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.mainColor),
                                      ),
                                    ],
                                  )
                                : Text(
                                    "Não respondido - aguarde",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.mainColor),
                                  ),
                          ],
                        )
                      ],
                    ),
                  )),
                ],
              ),
            );
          }),
    );
  }
}
