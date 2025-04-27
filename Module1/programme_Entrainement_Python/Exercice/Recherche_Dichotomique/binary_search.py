def binary_search(sorted_list, target):
    for i in range(len(sorted_list)):
        if sorted_list[i] == target:
            print(f"Element {target} trouvé à l'index {i}")
            return i
    return -1

def binary_search_real(sorted_list, target):
    low = 0
    high = len(sorted_list) - 1
    while low <= high:
        mid = (low + high) // 2
        if sorted_list[mid] == target:
            print(f"Element {target} trouvé à l'index {mid}")
            return mid
        elif sorted_list[mid] < target:
            low = mid + 1
        else:
            high = mid - 1
    print(f"Element non trouvé")
    return -1

def binary_search_fisrt_occurence(sorted_list, target):
    low = 0
    high = len(sorted_list) - 1
    while low <= high:
        mid = (low + high) // 2
        if sorted_list[mid] == target:
            firstOccurence = mid
            for i in range(mid, 0, -1):
                if sorted_list[i] == target:
                    print(f"Element {target} trouvé à l'index {i}")
                    firstOccurence = i
            return firstOccurence
        elif sorted_list[mid] < target:
            low = mid + 1
        else:
            high = mid - 1
    print(f"Element non trouvé")
    return -1   

listedichotomique = [1, 2, 5,68, 70, 85, 98, 102, 999]
binary_search(listedichotomique, 5)

binary_search_real(listedichotomique,70)
binary_search_real(listedichotomique,75)
binary_search_real(listedichotomique,999)

listedichotomique2 =[]
resultEmptyList = binary_search_real(listedichotomique2, 5)
print(f"Resultat de la recherche dans une liste vide : {resultEmptyList}")

listedichotomique3 =[0,0,0,1,1,1,1,6,6,8,8,8,9,9]
binary_search_fisrt_occurence(listedichotomique3, 1)
binary_search_fisrt_occurence(listedichotomique3, 8)
