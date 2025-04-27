class Voiture:
    def __init__(self, marque: str, modele: int,prix: float, kilometrage: int):

        self.marque = marque
        self.modele = modele
        self.prix = prix
        self.kilometrage = kilometrage
    
    def afficher_info(self):
        print(f"Marque: {self.marque}, Modèle: {self.modele}, Prix: {self.prix}, Kilométrage: {self.kilometrage}")

class VoitureElectrique(Voiture):
    def __init__(self, marque: str, modele: str, prix: float, kilometrage: int, autonomie: int):
        super().__init__(marque, modele, prix, kilometrage)
        self.autonomie = autonomie
    
    def afficher_info(self):
        super().afficher_info()
        print(f"Autonomie: {self.autonomie}")

class Concession:

    def __init__(self, nom: str, inventaire: list):
        self.nom = nom
        self.inventaire = inventaire
    
    def ajouter_voiture(self, voiture: Voiture):
        self.inventaire.append(voiture)
    
    def afficher_inventaire(self):
        print(f"Voitures disponibles chez {self.nom}:")
        for voiture in self.inventaire:
            voiture.afficher_info()

    def vendre_voiture(self, voiture: Voiture):
        if voiture in self.inventaire:
            self.inventaire.remove(voiture)
            print(f"La voiture {voiture.marque} {voiture.modele} à été vendue.")
        else:
            print("Voiture non trouvée dans l'inventaire.")

    def valeur_concession(self):
        valeurTotale = 0
        valeurMoyenne = 0
        for voiture in self.inventaire:
            valeurTotale += voiture.prix
        valeurMoyenne = valeurTotale / len(self.inventaire)

        print(f"La valeur totale des voiture de la concession {self.nom} est de : {valeurTotale} et la valeur moyenne est de : {valeurMoyenne}")
    
    def __str__(self):
        print(f"La concession {self.nom} a {len(self.inventaire)} voitures en stock.")

Fiesta = Voiture("Ford","Fiesta",12000,90000)
# Fiesta.afficher_info()

Zoe = VoitureElectrique("Renault", "Zoe", 8000, 20000, 150)
# Zoe.afficher_info()

Traffic = Voiture("Renault", "Trafic", 60000, 120000)
# Traffic.afficher_info()

JeanLain = Concession("JeanLain", [])
JeanLain.ajouter_voiture(Fiesta)
JeanLain.ajouter_voiture(Zoe)
JeanLain.ajouter_voiture(Traffic)

JeanLain.afficher_inventaire()

JeanLain.vendre_voiture(Fiesta)
JeanLain.vendre_voiture(Fiesta)

JeanLain.__str__()

JeanLain.valeur_concession()