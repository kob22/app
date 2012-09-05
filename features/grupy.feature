#language: pl
Właściwość: Grupy

Jako prowadzący chcę zarządzać grupami, terminie zajęć oraz tygodniu.

Id_przedmiotu
Grupa
Data zajęć
Godzina
Tydzień

	Szablon scenariusza: Poprawne dodanie grupy
	Zakładając że jesteśmy zalogowani i na "Strona główna"
	I mamy dodany "<rok>" i "<przedmiot>"
	Oraz chcemy dodać grupę to klikniemy link "Grupy"
	Wtedy klikniemy link "Dodaj grupę"
	Oraz zobaczymy komunikat "Dodaj grupę"
	I tekst "Grupa", "Przedmiot", "Dzień", "Godzina", "Tydzień"
	Wtedy uzupełnię "Grupa" tekstem "<grupa>"
    I wybiorę "<rok>" z "Rok"
    I wybiorę "<przedmiot>" z "Przedmiot"
    I wybiorę "<dzień>" z "Dzień"
    I wybiorę godzinę "17:00" z "Godzina"
    I wybiorę "<tydzień>" z "Tydzień"
	Wtedy kliknę przycisk "Utwórz Grupa"
	I zobaczymy komunikat "Grupa została dodana."
	Oraz tekst "<grupa>", "<przedmiot>", "<dzień>", "<godzina>", "<tydzień>"

	Przykłady:
	|grupa|rok|przedmiot|dzień|godzina|tydzień|
	|L6|3EFA-DI|Nowoczesne technologie programistyczne|Poniedziałek|17|AB|
