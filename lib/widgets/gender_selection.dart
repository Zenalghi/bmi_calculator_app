import 'package:flutter/material.dart';

class PilihGender extends StatefulWidget {
  final Function(bool) onGenderSelected;

  const PilihGender({Key? key, required this.onGenderSelected})
      : super(key: key);

  @override
  _PilihGenderState createState() => _PilihGenderState();
}

class _PilihGenderState extends State<PilihGender> {
  bool isMale = true;

  void selectGender(bool gender) {
    setState(() {
      isMale = gender;
    });
    widget.onGenderSelected(gender);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GenderCard(
          icon: Icons.male_outlined,
          label: 'Male',
          isSelected: isMale,
          onTap: () => selectGender(true),
        ),
        const SizedBox(width: 30),
        GenderCard(
          icon: Icons.female_outlined,
          label: 'Female',
          isSelected: !isMale,
          onTap: () => selectGender(false),
        ),
      ],
    );
  }
}

class GenderCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const GenderCard({
    Key? key,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 150,
        height: 170,
        decoration: BoxDecoration(
          color: isSelected
              ? const Color.fromARGB(255, 8, 38, 58)
              : Colors.blueGrey.shade900,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: isSelected ? Colors.white : Colors.white30,
              size: 80,
            ),
            const SizedBox(height: 10),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.white30,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
