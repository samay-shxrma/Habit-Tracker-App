import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myapp/Model/model.dart';

class VotingProvider extends ChangeNotifier {
  List<Candidate> _candidates = [
    Candidate(id: "1", name: "BJP"),
    Candidate(id: "2", name: "Congress"),
    Candidate(id: "3", name: "Samajvadi Party"),
    Candidate(id: "4", name: "TMC"),
  ];
  String? selectedCandidateId;
  List<Candidate> get candidates => _candidates;

  void vote(String candidateId) {
    _candidates =
        _candidates.map((candidate) {
          if (candidate.id == candidateId) {
            candidate.votes++;
            return candidate;
          } else {
            return candidate;
          }
        }).toList();

    selectedCandidateId = candidateId;
    notifyListeners();

    Timer(const Duration(seconds: 1), () {
      selectedCandidateId = null;
      notifyListeners();
    });
  }

  bool get isTie {
    if (candidates.isEmpty) {
      return false;
    }
    final maxVotes = candidates.map((c) => c.votes).reduce((a, b) => a > b ? a : b);
    return candidates.where((c) => c.votes == maxVotes).length > 1;
  }

  List<Candidate> get winners {
    if (candidates.isEmpty) {
      return [];
    }
    final maxVotes = candidates.map((c) => c.votes).reduce((a, b) => a > b ? a : b);
    return candidates.where((c) => c.votes == maxVotes).toList();
  }
}
