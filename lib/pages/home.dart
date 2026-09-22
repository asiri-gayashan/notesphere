import 'package:flutter/material.dart';
import 'package:notesphere/utils/constants.dart';
import 'package:notesphere/utils/text_styles.dart';
import 'package:notesphere/widgets/notes_todo_cards.dart';
import 'package:notesphere/widgets/progress_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NoteSphere', style: AppTextStyles.appTitle),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            SizedBox(height: AppConstants.kdefaltPadding),
            ProgressCard(completedTasks: 5, totalTasks: 10),
            SizedBox(height: AppConstants.kdefaltPadding),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NotesToDoCards(title: "Notes", description: "3 Notes", icon: Icons.bookmark),
                NotesToDoCards(title: "To-Do List", description: "3 Tasks", icon: Icons.today_outlined),
              ],
            ),
            SizedBox(height: AppConstants.kdefaltPadding),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Todays Tasks", style: AppTextStyles.subTitle,),
                Text("See All", style: AppTextStyles.appbtn,),
              ],
            )


          ],
        ),
      ),
    );
  }
}
