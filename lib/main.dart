import "package:flutter/material.dart";

void main() {
  runApp(const Nameanything());
}

class Nameanything extends StatelessWidget {
  const Nameanything({super.key});
  // potential tool call
  void doSomething(String name) {
    print('Hello $name');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              doSomething('Dawood');
            },
            icon: const Icon(Icons.admin_panel_settings),
          ),
          title: const Center(child: Text("My first App")),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 40),
              ClipOval(
                child: Image.asset(
                  'assets/images/stailvell.png',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                "Li ZiMing",
                style: TextStyle(
                  color: Color.fromARGB(255, 6, 6, 97),
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.blue,
                ),
              ),
              // Cointainer
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 19,
                  vertical: 3,
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                  // borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.school, size: 18, color: Colors.white),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Student",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(14),
                      decoration: const BoxDecoration(
                        color: Colors.yellowAccent,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/stailvell.png', width: 30),
                          const SizedBox(height: 10),
                          const Text("random Text"),
                          const SizedBox(height: 10),
                          const Text("Another random Text"),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: Colors.yellowAccent,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/stailvell.png', width: 30),
                          const SizedBox(height: 10),
                          const Text("random Text"),
                          const SizedBox(height: 10),
                          const Text("Another random Text"),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: const BoxDecoration(
                        color: Colors.yellowAccent,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/stailvell.png', width: 30),
                          const SizedBox(height: 10),
                          const Text("random Text"),
                          const SizedBox(height: 10),
                          const Text("Another random Text"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
