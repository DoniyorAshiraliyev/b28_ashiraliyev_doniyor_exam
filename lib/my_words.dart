class MyWords {
  late List<String> _list;

  List<String> get list => _list;
  MyWords();

MyWords.factory(List<String> list){
    // return MyWords(this.list);
  }
  void addNewWord(String word) {
    if (word.length >= 2) {
      _list.add(word);
    }
  }

  String longestCommonPrefix(List<String> list) {
    String str = "";
    int a;
    int count = 0;
    list.isEmpty ? a = 0 : a = list[0].length;



    for (int j = list.length - 1; j > 0; j--) {
      for (int i = 0; i < a; i++) {
       if(j!=0){
         if (list[j][i] == list[j - 1][i]) {
           count++;
         }
       }

      }
      if (count < a) {
        a = count;
        count = 0;
      }
    }

    return list[0].substring(0,a);
  }

  @override
  String toString() {
    return 'MyWords{_list: $_list}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MyWords &&
          runtimeType == other.runtimeType &&
          _list == other._list;

  @override
  int get hashCode => _list.hashCode;

  @override
  noSuchMethod(Invocation invocation) {

    print(invocation);
    return super.noSuchMethod(invocation);
  }
}

void main() {
  List<String> list = [
    "flower",
    "flo",
    // "f"
  ];
  final my = MyWords();
  print(my.longestCommonPrefix(list));
}
