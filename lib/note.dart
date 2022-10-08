class Note{
  double? Topposition;
  String? image;

  void GenerateNote(int number){
    this.Topposition = 72+number*5;
    if (this.Topposition! > 102){
      this.image = "assets/images/ustnota.png";
    }
    else{
      this.image = "assets/images/altnota.png";
    }
  }
}