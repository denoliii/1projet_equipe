OUVRIR RUBY DANS LE TERMINAL
irb

ASSIGNER UNE VALEUR A UNE VARIABLE
couleur=bleue
a=1

REGROUPER LES VARIABLES DANS UN TABLEAU
Créer une variable "mon tableau"
> mon tableau = [1,5,28]

UTILISER LES OBJETS
monTableau.size
=> 3 /* rf: 3 éléments dans mon tableau */

monTableau.reverse
=> [28, 5, 1]

monTableau[2]
=> 28 /* rf : en programmation on compte à partir de 0 */

CLASSER LES UTILISATEURS
utilisateurs=["Alice","Bob","John"] 
utilisateurs[1]
=>"Bob"

AJOUTER 
utilisateurs<<"Marc"

MODIFIER
utilisateurs[1]="Bobby"

HASHAGES
=== > pour retrouver des éléments facilement à l aide de clés :

monHash={Alice: 10, Bob: 20}
Alice = ma clef / 10 = valeur

AFFICHER MA CLEF
monHash[:Alice]

AJOUTER
monHash[:Marc]=30

EXECUTER COMMANDE RUBY DANS TERMINAL
-> Créer un fichier boucles.rb
-> Se positionner dans notre fichier
Fichier  > puts "Hello" > save
Terminal > ruby boucles.r  b > enter

AFFICHER TOUS LES UTILISATEURS/ELEMENTS DU TABLEAU
= Créer une boucle (qui se base sur une variable donc sur un tableau).

utilisateurs.each do |utilisateur|
	puts utilisateur
end

-> On demande à Ruby, tous les utilisateurs présents dans le tableau, "affiche les". On créer une variable "utilisateur".
-> NomDuTableau.each

BOUCLE DE REPETITION
Je veux écrire 10 fois "Hello"

-- EX n°1 --
10.times do
	puts "Hello"
end
-> Ce qu il y aura entre "Do" et "End" sera éxecuté 10 fois.

-- EX n°2 --
10.times do |i|
	puts "Hello #{i}"  
end

-> La concaquénation d un string
-> Ici concaténé un entier dans un string 
-> On demande, "affiche moi Hello" et "ajoute à la fin le contenu de la variable i"
-> Le contenu de la variable "i" c est l index de la boucle.

-- EX n°3 --
10.times do |i|
	puts "Hello #{i}"  
    i.times do
	  puts "Wordl"
  end
end

--> 1 er tour de boucle : i = 0  
                          0 fois faire quelque chose donc rien.
--> 2 e tour de boucle : i = 1 donc Hello 1
                         1 fois do "puts world" 
--> 3 e tour de boucle : i = 2
                  Donc > Hello 2
                         world
                         world

CONCAQUENATION
--> #{}

SYNTAXE CONDITION
-> Fichier conditions.rb 
-> Placer la console et éxécuter : "ruby conditions.rb"

if
else
end

a=10
puts "a est égal à #{a}"

--> Afficher des msg différents selon la valeur de a

if a > 10
    puts "a est supérieur à 10"
else
	puts "a est inférieur à 10"
end

CONDITIONS & TABLEAU

emails = ["bob@bob.com","jane@hello.com"]

if emails.size==1
	puts "j'ai un email"
else
    puts "J'ai plus ou moins d'un email"	
end

--> Attention == pas = (c est une assignation).
--> on ajoute une boucle pour afficher les emails.

emails = ["bob@bob.com","jane@hello.com"]

emails.each do |email|
	puts email
if email=="bob@bob.com"
	puts "Bonjour bob!"
else
	puts "Vous n'êtes pas Bob"
  end
end

COMBINER LES CONDITIONS
== : est égal
!= : est différent
&& : et 
|| : ou
"a <= b" signifie "a est inférieur ou égal à b"

-- EX n°1 --
a=12
if a != 12 && a!= 10
	puts "Okay!"
end 

-- EX n°2 --
a=12
if a == 12 || a == 10
	puts "Okay!"
end 

-- EX n°3 --
> a est égal à 12 ou a est égal à 10 ou a est différent de "Hello"
> On utilise les parenthèses
a = "Hello"
(if a == 12 || a == 10) && a!="Hello"

SAISIE UTILISATEURS

puts "votre nom ?"
nom = gets
puts "votre nom est #{nom}"
