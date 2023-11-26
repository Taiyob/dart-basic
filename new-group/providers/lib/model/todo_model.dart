class todoModel {
  String title;
  bool iscomplte;

  todoModel({
    required this.title, required this.iscomplte});

  void iscompltetroggle(){
   if(iscomplte==true){
     iscomplte = false;
   }else if(iscomplte ==false){
     iscomplte= true;
   }
  }
}