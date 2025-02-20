import 'package:another_flushbar/flushbar.dart';
import 'package:application/core/color_values.dart';
import 'package:application/data/bloc/result/result_bloc.dart';
import 'package:application/data/models/Result/result_model.dart';
import 'package:application/features/widget/custom_text_field.dart';
import 'package:application/features/widget/textTitle.dart';
import 'package:application/routes/router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class ShowModal extends StatefulWidget {
  const ShowModal({super.key, required this.machineId});
  final int machineId;

  @override
  State<ShowModal> createState() => _ShowModalState();
}

class _ShowModalState extends State<ShowModal> {
  late TextEditingController _descriptionController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String selectedStatus = "";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
        child: Form(
          key: _formKey,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Konfirmasi',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(fontWeight: FontWeight.bold)),
                    Material(
                      color: Colors.white,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        icon: const Icon(Icons.cancel_outlined),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    textTitle("Status: "),
                    Expanded(
                      child: Row(
                        children: [
                          _buildRadioButton("OK"),
                          const SizedBox(width: 10),
                          _buildRadioButton("NG"),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                CustomTextField(
                  controller: _descriptionController,
                  hintText: "isi jika diperlukan",
                  labelText: "Remark",
                  textInputType: TextInputType.text,
                  LabelTextStyle: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                BlocConsumer<ResultBloc, ResultState>(
                    builder: (context, state) {
                  final isLoading =
                      state.maybeWhen(orElse: () => false, loading: () => true);
                  return ElevatedButton(
                    onPressed: selectedStatus.isEmpty
                        ? null
                        : () {
                            if (_formKey.currentState!.validate()) {
                              final des =
                                  _descriptionController.text.trim().isEmpty
                                      ? " "
                                      : _descriptionController.text;
                              context.read<ResultBloc>().add(
                                  ResultEvent.addResult(
                                      widget.machineId, selectedStatus, des));
                            }
                          },
                    style: Theme.of(context).elevatedButtonTheme.style,
                    child: isLoading
                        ? const CircularProgressIndicator(color: Colors.white)
                        : const Text("Submit",
                            style: TextStyle(color: Colors.white)),
                  );
                }, listener: (context, state) {
                  state.maybeWhen(
                    added: () {
                      Flushbar(
                        title: 'Berhasil',
                        message: 'Data berhasil disimpan',
                        duration: const Duration(seconds: 2),
                        backgroundColor: ColorValues.primary500,
                      ).show(context).then((_) {
                        AutoRouter.of(context).push(const HomeRoute());
                      });
                    },
                    error: (error) => Flushbar(
                      title: 'Terjadi Kesalahan',
                      message: "Terjadi kesalahan saat menyimpan data",
                      duration: const Duration(seconds: 3),
                      backgroundColor: ColorValues.danger500,
                    ).show(context),
                    orElse: () => {},
                  );
                })
              ]),
        ),
      ),
    );
  }

  Widget _buildRadioButton(String value) {
    return Row(
      children: [
        Radio<String>(
          value: value,
          groupValue: selectedStatus,
          onChanged: (newValue) {
            if (!mounted) return;
            setState(() {
              selectedStatus = newValue ?? "OK";
            });
          },
        ),
        Text(value),
      ],
    );
  }
}
