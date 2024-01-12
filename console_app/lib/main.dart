import 'dart:math';

import 'package:flutter/material.dart';

import 'Etudiant.dart';

void main() {
    // appelle premiere fonction
  print("====Affichage de la premiere fonction:");
  print(etatPersonne(50, "M"));

  // appelle deuxieme fonction
  print("====Affichage de la deuxieme fonction:");
  print(afficheBonjour(5));

  // appelle troisieme fonction
  List<double> solutions = eqtSeconDegre(1, -3, 2);
  print("Affichage troisieme fonction:");
  print(solutions);

  // appelle quatrieme fonction
  print("====Affichage de la quatrieme fonction:");
  print(moyenne(3, 4.2, 9.8, 44, 3));

  // appelle cinquieme fonction
  print("====Affichage de la cinquieme fonction:");
  print(factoriel(5));


//*****************************ORIENTE OBJET******************************************** */
  Etudiant etu = new Etudiant();
  etu.SetId(1);
  etu.SetNom("Masika");
  etu.SetPostnom("Makasi");
  etu.SetPrenom("Laurence");
  etu.SetSexe("F");
  etu.SetAge(21);
  etu.SetDatenaissance("13/octobre/2003");
  etu.SetPoids(56);
  etu.SetTaille(14);

  print("====================POO========================");

  print(etu.getId());
  print(etu.getNom());
  print(etu.getPostnom());
  print(etu.getPrenom());
  print(etu.getSexe());
  print(etu.getAge());
  print(etu.getDatenaissance());
  print(etu.getPoids());
  print(etu.getTaille());
}


String etatPersonne(int age, String genre) {
  String resultat = "";

  if (genre == "F" && age >= 18 && age < 100) {
    resultat = "Vous etes une majeure !";
  } else if (genre == "M" && age >= 18 && age < 100) {
    resultat = "Vous etes un majeur !";
  } else if (genre == "F" && age < 18 && age > 0) {
    resultat = "Vous etes une mineure !";
  } else if (genre == "M" && age < 18 && age > 0) {
    resultat = "Vous etes un mineur !";
  } else {
    resultat = "Veillez verifier les informations entrer";
  }
  return resultat;
}

//=========================================================
//Fonction qui affiche Bonjour le monde selon le nombre voulu
String afficheBonjour(int nombre) {
  String message = "";
  for (int i = 0; i < nombre; i++) {
    message += "hello wold\n";
  }
  return message;
}

//=========================================================
//Fonction qui resoud l'equation du second degre

List<double> eqtSeconDegre(double a, double b, double c) {
  double delta = ((b * b) - (4 * a * c));

  if (delta > 0) {
    double x1 = ((-b + sqrt(delta)) / (2 * a));
    double x2 = ((-b - sqrt(delta)) / (2 * a));
    return [delta, x1, x2];
  } else if (delta == 0) {
    double x = ((-b) / (2 * a));
    return [delta, x];
  } else {
    return [delta];
  }
}

//=========================================================
//Fonction qui renvoie la moyenne de 5 nombres
double moyenne(double a, double b, double c, double d, double e) {
  double result = (a + b + c + d + e) / 5;
  return result;
}

//=========================================================
//Fonction qui retourne le factoriel d'un nombre
double factoriel(double nombre) {
  if (nombre == 0 || nombre == 1) {
    return 1;
  } else if (nombre > 1) {
    double fact = 1;
    for (int i = 2; i <= nombre; i++) {
      fact *= i;
    }
    return fact;
  } else {
    return 0;
  }

}