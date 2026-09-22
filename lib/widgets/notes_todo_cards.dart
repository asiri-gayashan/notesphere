import 'package:flutter/material.dart';
import 'package:notesphere/utils/colors.dart';
import 'package:notesphere/utils/text_styles.dart';

class NotesToDoCards extends StatefulWidget {
  final String title;
  final String description;
  final IconData icon;

  const NotesToDoCards({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
  });

  @override
  State<NotesToDoCards> createState() => _NotesToDoCardsState();
}

class _NotesToDoCardsState extends State<NotesToDoCards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Column(
          children: [
            Icon(widget.icon, size: 40),
            const SizedBox(height: 10),
            Text(widget.title, style: AppTextStyles.description),
            const SizedBox(height: 2),
            Text(
              widget.description,
              style: AppTextStyles.descriptionSmall.copyWith(
                color: AppColors.WhiteColor.withOpacity(0.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
