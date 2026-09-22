import 'package:flutter/material.dart';
import 'package:notesphere/utils/colors.dart';
import 'package:notesphere/utils/constants.dart';
import 'package:notesphere/utils/text_styles.dart';

class ProgressCard extends StatefulWidget {
  final int completedTasks;
  final int totalTasks;

  const ProgressCard({
    super.key,
    required this.completedTasks,
    required this.totalTasks,
  });

  @override
  State<ProgressCard> createState() => _ProgressCardState();
}

class _ProgressCardState extends State<ProgressCard> {
  @override
  Widget build(BuildContext context) {


double completionPersontage = widget.totalTasks != 0 ? (widget.completedTasks / widget.totalTasks) * 100 : 0;


    return Container(
      padding: EdgeInsets.all(AppConstants.kdefaltPadding),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Today's Progress", style: AppTextStyles.subTitle),
              const SizedBox(height: 8),

              SizedBox(
                width: MediaQuery.of(context).size.width * 0.65,
                child: Text(
                  "You have completed ${widget.completedTasks} out of ${widget.totalTasks} tasks, \nKeep up he prograss",
                  style: AppTextStyles.descriptionSmall.copyWith(
                    color: AppColors.WhiteColor.withOpacity(0.5),
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.19,
                height: MediaQuery.of(context).size.width * 0.19,
                decoration: BoxDecoration(
                  gradient: AppColors().primaryGradient,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              Positioned.fill(
                child: Center(
                  child: Text("${completionPersontage}%", style: AppTextStyles.subTitle.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
