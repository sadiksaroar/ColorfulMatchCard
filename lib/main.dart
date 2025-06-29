import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: ColorfulMatchCard()));
}

class ColorfulMatchCard extends StatelessWidget {
  const ColorfulMatchCard({super.key});

  Widget ratingBox({
    String? label,
    bool isActive = false,
    IconData? icon,
    Color? color,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: color ?? Colors.grey.shade200,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            offset: const Offset(2, 2),
            blurRadius: 3,
          ),
        ],
      ),
      child: icon != null
          ? Icon(icon, size: 16, color: Colors.white)
          : Text(
        label ?? "",
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget ratingRow(String playerName, List<Widget> ratings) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              width: 140,
              child: Text(
                playerName,
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              )),
          Expanded(
            child: Row(
              children: ratings,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAF6FF),
      body: Center(
        child: Container(
          width: 350,
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(2, 4),
                blurRadius: 8,
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("New Match",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  Icon(Icons.access_time, color: Colors.blue),
                ],
              ),
              const SizedBox(height: 12),
              const Text("CHAMPIONS LEAGUE",
                  style: TextStyle(letterSpacing: 1)),
              const SizedBox(height: 6),
              const Text("AEK    BARCA",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const Text("1 - 2    17/5/2024"),
              const SizedBox(height: 10),
              Container(
                padding:
                const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.lightBlueAccent),
                child: const Text(
                  "TR: 7,2",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(thickness: 1.2, height: 28),
              ratingRow("Anastasios Bakasetas", [
                ratingBox(label: "1", color: Colors.redAccent),
                ratingBox(label: "2", color: Colors.orange),
                ratingBox(label: "3", color: Colors.yellow[700]),
                ratingBox(label: "4", color: Colors.green),
                ratingBox(label: "5", color: Colors.blue),
              ]),
              ratingRow("Vladimír Coufal", [
                ratingBox(label: "8", color: Colors.deepPurple),
                ratingBox(label: "2", color: Colors.teal),
                ratingBox(label: "3", color: Colors.lightGreen),
                ratingBox(label: "4", color: Colors.orangeAccent),
                ratingBox(icon: Icons.sports_soccer, color: Colors.black87),
              ]),
              ratingRow("Konstantinos Galanopoulos", [
                ratingBox(label: "1", color: Colors.red),
                ratingBox(label: "2", color: Colors.deepOrange),
                ratingBox(label: "3", color: Colors.pink),
                ratingBox(label: "4", color: Colors.indigo),
                ratingBox(icon: Icons.assignment, color: Colors.cyan),
              ]),
              ratingRow("Marko Livaja", [
                ratingBox(label: "1", color: Colors.lightGreen),
                ratingBox(label: "2", color: Colors.lime),
                ratingBox(label: "3", color: Colors.blueAccent),
                ratingBox(label: "4", color: Colors.deepOrangeAccent),
                ratingBox(icon: Icons.assignment, color: Colors.green),
              ]),
              const SizedBox(height: 18),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  padding:
                  const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                onPressed: () {},
                child: const Text(
                  "SUBMIT",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
