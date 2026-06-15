// Put your code here
List<Map<String, dynamic>> LetterScores = [
    {"score": 1, "letters": ["A","E","I","O","U","L","N","R","S","T"]},
    {"score": 2, "letters": ["D","G"]},
    {"score": 3, "letters": ["B","C","M","P"]},
    {"score": 4, "letters": ["F","H","V","W","Y"]},
    {"score": 5, "letters": ["K"]},
    {"score": 8, "letters": ["J","X"]},
    {"score": 10, "letters": ["Q","Z"]},
  ];

int score(String str) {
    List letterArr = str.split("");
    int score = 0;
    letterArr.forEach((letter){
      Map<String, dynamic>? letterScoreMap = LetterScores.firstWhere((letterScore) => letterScore["letters"].contains(letter.toUpperCase()), orElse: () => {"score": 0, "letters": []} );
      score += letterScoreMap["score"] as int;
    });

    return score; 
}
