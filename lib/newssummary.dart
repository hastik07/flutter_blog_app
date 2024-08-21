import 'package:blog_app/homepage.dart';
import 'package:flutter/material.dart';

class SummaryPage extends StatefulWidget {
  const SummaryPage({super.key});

  @override
  State<SummaryPage> createState() => _SummaryPageState();
}

class _SummaryPageState extends State<SummaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'News Summary',
          style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.yellow.shade800,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'TCS to Hire 10,000 Engineers',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Posted: August 5, 2024',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                    Text(
                      'Author: HR Specialist',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'Michael Brown',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Brown is an American astronomer, known for his work on Trans-Neptunian Objects (TNOs). Mike Brown is known for demoting Pluto to dwarf planet status. Since 2003, Dr. Brown has been a professor at the California Institute of Technology as a professor of planetary astronomy.',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
                SizedBox(height: 20),
                Text(
                  'Summary of Content:',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                    'Michael Brown is the Director of the Defense Innovation Unit (DIU) at the U.S. Department of Defense. DIU, established in 2015, fields leading-edge '
                        'commercial capabilities to the military faster and more cost-effectively than traditional defense acquisition methods. With offices in Silicon Valley, '
                        'Boston, Austin, and at the Pentagon, DIU is embedded in key innovation ecosystems across the country and builds direct relationships with organizations that '
                        'strengthen our national security innovation base.\n\nPreviously, Michael served two years (2016-2018) as a White House Presidential Innovation Fellow at DoD. He is the co-author'
                        ' of a Pentagon study on China’s participation in the U.S. venture ecosystem, a catalyst for the Foreign Investment Risk '
                        'Review Modernization Act (FIRRMA). FIRRMA was signed into law in August 2018 and provided expanded jurisdiction to the Committee on Foreign Investment in the United States (CFIUS).'
                        '\n\nAdditionally, he led the initiative for a new Defense Department-sponsored investment vehicle, National Security Innovation Capital (NSIC) to fund dual-use hardware technology companies.',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SummaryPage1 extends StatefulWidget {
  const SummaryPage1({super.key});

  @override
  State<SummaryPage1> createState() => _SummaryPage1State();
}

class _SummaryPage1State extends State<SummaryPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'News Summary',
          style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.yellow.shade800,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'TCS to Hire 10,000 Engineers',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Posted: August 5, 2024',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                    Text(
                      'Author: HR Specialist',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'Michael Brown',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Brown is an American astronomer, known for his work on Trans-Neptunian Objects (TNOs). Mike Brown is known for demoting Pluto to dwarf planet status. Since 2003, Dr. Brown has been a professor at the California Institute of Technology as a professor of planetary astronomy.',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
                SizedBox(height: 20),
                Text(
                  'Summary of Content:',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Michael Brown is the Director of the Defense Innovation Unit (DIU) at the U.S. Department of Defense. DIU, established in 2015, fields leading-edge '
                      'commercial capabilities to the military faster and more cost-effectively than traditional defense acquisition methods. With offices in Silicon Valley, '
                      'Boston, Austin, and at the Pentagon, DIU is embedded in key innovation ecosystems across the country and builds direct relationships with organizations that '
                      'strengthen our national security innovation base.\n\nPreviously, Michael served two years (2016-2018) as a White House Presidential Innovation Fellow at DoD. He is the co-author'
                      ' of a Pentagon study on China’s participation in the U.S. venture ecosystem, a catalyst for the Foreign Investment Risk '
                      'Review Modernization Act (FIRRMA). FIRRMA was signed into law in August 2018 and provided expanded jurisdiction to the Committee on Foreign Investment in the United States (CFIUS).'
                      '\n\nAdditionally, he led the initiative for a new Defense Department-sponsored investment vehicle, National Security Innovation Capital (NSIC) to fund dual-use hardware technology companies.',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SummaryPage2 extends StatefulWidget {
  const SummaryPage2({super.key});

  @override
  State<SummaryPage2> createState() => _SummaryPage2State();
}

class _SummaryPage2State extends State<SummaryPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'News Summary',
          style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.yellow.shade800,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'TCS to Hire 10,000 Engineers',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Posted: August 5, 2024',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                    Text(
                      'Author: HR Specialist',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'Michael Brown',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Brown is an American astronomer, known for his work on Trans-Neptunian Objects (TNOs). Mike Brown is known for demoting Pluto to dwarf planet status. Since 2003, Dr. Brown has been a professor at the California Institute of Technology as a professor of planetary astronomy.',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
                SizedBox(height: 20),
                Text(
                  'Summary of Content:',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Michael Brown is the Director of the Defense Innovation Unit (DIU) at the U.S. Department of Defense. DIU, established in 2015, fields leading-edge '
                      'commercial capabilities to the military faster and more cost-effectively than traditional defense acquisition methods. With offices in Silicon Valley, '
                      'Boston, Austin, and at the Pentagon, DIU is embedded in key innovation ecosystems across the country and builds direct relationships with organizations that '
                      'strengthen our national security innovation base.\n\nPreviously, Michael served two years (2016-2018) as a White House Presidential Innovation Fellow at DoD. He is the co-author'
                      ' of a Pentagon study on China’s participation in the U.S. venture ecosystem, a catalyst for the Foreign Investment Risk '
                      'Review Modernization Act (FIRRMA). FIRRMA was signed into law in August 2018 and provided expanded jurisdiction to the Committee on Foreign Investment in the United States (CFIUS).'
                      '\n\nAdditionally, he led the initiative for a new Defense Department-sponsored investment vehicle, National Security Innovation Capital (NSIC) to fund dual-use hardware technology companies.',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SummaryPage3 extends StatefulWidget {
  const SummaryPage3({super.key});

  @override
  State<SummaryPage3> createState() => _SummaryPage3State();
}

class _SummaryPage3State extends State<SummaryPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'News Summary',
          style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.yellow.shade800,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'TCS to Hire 10,000 Engineers',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Posted: August 5, 2024',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                    Text(
                      'Author: HR Specialist',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'Michael Brown',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Brown is an American astronomer, known for his work on Trans-Neptunian Objects (TNOs). Mike Brown is known for demoting Pluto to dwarf planet status. Since 2003, Dr. Brown has been a professor at the California Institute of Technology as a professor of planetary astronomy.',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
                SizedBox(height: 20),
                Text(
                  'Summary of Content:',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Michael Brown is the Director of the Defense Innovation Unit (DIU) at the U.S. Department of Defense. DIU, established in 2015, fields leading-edge '
                      'commercial capabilities to the military faster and more cost-effectively than traditional defense acquisition methods. With offices in Silicon Valley, '
                      'Boston, Austin, and at the Pentagon, DIU is embedded in key innovation ecosystems across the country and builds direct relationships with organizations that '
                      'strengthen our national security innovation base.\n\nPreviously, Michael served two years (2016-2018) as a White House Presidential Innovation Fellow at DoD. He is the co-author'
                      ' of a Pentagon study on China’s participation in the U.S. venture ecosystem, a catalyst for the Foreign Investment Risk '
                      'Review Modernization Act (FIRRMA). FIRRMA was signed into law in August 2018 and provided expanded jurisdiction to the Committee on Foreign Investment in the United States (CFIUS).'
                      '\n\nAdditionally, he led the initiative for a new Defense Department-sponsored investment vehicle, National Security Innovation Capital (NSIC) to fund dual-use hardware technology companies.',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
