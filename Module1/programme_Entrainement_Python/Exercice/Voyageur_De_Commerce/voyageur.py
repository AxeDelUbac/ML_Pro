def charger_villes(chemin):
    listeVille = []
    nombreVille = 0

    with open(chemin, "r", encoding="utf-8") as fichier:
        
        for ligne in fichier:
            ville = tuple(shlex.split(ligne.strip()))
            listeVille.append(ville)

            nombreVille+=1
            
            print("Ligne :", nombreVille, "Ville :", ville)
    print("Nombre de villes :", nombreVille)
    return listeVille

def distance(villeA, villeB):
    
    
    x1, y1 = float(villeA[1]), float(villeA[2])  # Convertir en float si nécessaire
    x2, y2 = float(villeB[1]), float(villeB[2])
    

    # Calcul de la distance euclidienne
    distanceEuclidienne = math.sqrt((x2 - x1)**2 + (y2 - y1)**2)

    return distanceEuclidienne

def itineraire_greedy(villes):
    villeDeDepart = villes[0]  # Ville de départ
    villes_restantes = villes[1:]  # Copie de la liste sans la ville de départ
    itineraire = [villeDeDepart]  # Liste pour stocker l'itinéraire

    while villes_restantes:
        VilleCourte = villes_restantes[0]  # Initialiser avec la première ville restante
        for villeActuel in villes_restantes:
            # Trouver la ville la plus proche
            if distance(villeDeDepart, villeActuel) < distance(villeDeDepart, VilleCourte):
                VilleCourte = villeActuel
        print(f"La ville la plus proche de {villeDeDepart} non visitée est : {VilleCourte}")
        villeDeDepart = VilleCourte  # Mettre à jour la ville de départ
        itineraire.append(VilleCourte)  # Ajouter à l'itinéraire
        villes_restantes.remove(VilleCourte)  # Retirer la ville visitée

    print("Itinéraire complet :", [ville[0] for ville in itineraire])
    return itineraire

def distance_totale(itineraire):
    distanceTotale = 0
    villeComparaison = itineraire[1]  # Ville de départ
    for ville in itineraire:
        distanceTotale += distance(ville,villeComparaison)
        villeComparaison = ville
    print("Distance totale de l'itinéraire :", distanceTotale)
    return distanceTotale





import math
import shlex

tuplesVille = charger_villes("/home/maxence/Documents/Dev/ML_Pro/Module1/programme_Entrainement_Python/Exercice/Voyageur_De_Commerce/villes.txt")
distance(tuplesVille[0], tuplesVille[1])
distance(tuplesVille[14], tuplesVille[35])
itineraireDeVoyage=itineraire_greedy(tuplesVille)
distance_totale(itineraireDeVoyage)
