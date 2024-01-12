class Etudiant {
  int id=0;
  String nom='';
  String postnom='';
  String prenom='';
  String sexe='';
  int age=0;
  double poids=0;
  double taille=0;
  String datenaissance='';


  void SetId(int id){
    this.id= id;
  }
  int getId(){
    return this.id;
  }

    void SetNom(String nom){
    this.nom=nom;
  }
  String getNom(){
    return this.nom;
  }
    void SetPostnom(String postnom){
    this.nom=nom;
  }
  String getPostnom(){
    return this.postnom;
  }
    void SetPrenom(String prenom){
    this.prenom=prenom;
  }
  String getPrenom(){
    return this.prenom;
  }
    void SetSexe(String sexe){
    this.sexe=sexe;
  }
  String getSexe(){
    return this.sexe;
  }
  void SetAge(int age){
    this.age= age;
  }
  int getAge(){
    return this.age;
  }
  void SetPoids(double poids){
    this.poids= poids;
  }
  double getPoids(){
    return this.poids;
  }
    void SetTaille(double taille){
    this.taille= taille;
  }
  double getTaille(){
    return this.taille;
  }
    String getDatenaissance(){
    return this.datenaissance;
  }
    void SetDatenaissance(String datenaissance){
    this.datenaissance=datenaissance;
  }
}