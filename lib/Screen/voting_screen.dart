import 'package:flutter/material.dart';
import 'package:myapp/Provider/voting_provider.dart';
import 'package:myapp/Screen/result_screen.dart';
import 'package:provider/provider.dart';

class VotingScreen extends StatefulWidget {
  const VotingScreen({super.key});

  @override
  State<VotingScreen> createState() => _VotingScreenState();
}

class _VotingScreenState extends State<VotingScreen> {
  @override
  Widget build(BuildContext context) {
    final votingProvider = Provider.of<VotingProvider>(context);
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        centerTitle: true,
        title: Text('Vote for a Party'),
        backgroundColor: Colors.blue[100],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: votingProvider.candidates.length,
              itemBuilder: (context, index) {
                final candidate = votingProvider.candidates[index];
                final isVote =
                    votingProvider.selectedCandidateId == candidate.id;
                return ListTile(
                  title: Text(candidate.name),
                  trailing: ElevatedButton(
                    onPressed: () {
                      votingProvider.vote(candidate.id);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: isVote ? Colors.green : Colors.white,
                    ),
                    child: Text(
                      'Vote',
                      style: TextStyle(
                        color: isVote ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ResultScreen()),
              );
            },
            child: Text("View Result"),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
