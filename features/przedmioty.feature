#language: pl
Właściwość: Przedmioty

Jako prowadzący zajęcia chcę zarządzać przedmiotami, które prowadzę.
Rok od 3 do 20 znaków
Przedmiot od 3 do 100 znaków


	Szablon scenariusza: Poprawne dodanie przedmiotu z nowym rokiem
	Zakładając że jesteśmy zalogowani i na "Strona główna"
	I chcemy dodać przedmiot to klikniemy link "Przedmioty"
	Wtedy klikniemy link "Dodaj przedmiot"
	Oraz zobaczymy komunikat "Dodaj przedmiot"
	I zobaczymy dwa pola "Rok", "Przedmiot"
	Wtedy uzupełnię "Rok" tekstem "<rok>"
	I uzupełnię "Przedmiot" tekstem "<przedmiot>"
	Wtedy kliknę przycisk "Utwórz Przedmiot"
	I zobaczymy komunikat "Przedmiot został dodany"
	Oraz tekst "<rok>" i "<przedmiot>"

	Przykłady:
	|rok|przedmiot|
	|3EFA-DI| Nowoczesne technologie programistyczne |

    Szablon scenariusza: Poprawne dodanie takiego samego przedmiotu z różnym rokiem
    Zakładając że jesteśmy zalogowani i na "Strona główna"
    I chcemy dodać przedmiot to klikniemy link "Przedmioty"
    Wtedy klikniemy link "Dodaj przedmiot"
    Oraz zobaczymy komunikat "Dodaj przedmiot"
    I zobaczymy dwa pola "Rok", "Przedmiot"
    Wtedy uzupełnię "Rok" tekstem "<rok1>"
    I uzupełnię "Przedmiot" tekstem "<przedmiot>"
    Wtedy kliknę przycisk "Utwórz Przedmiot"
    I zobaczymy komunikat "Przedmiot został dodany"
    Oraz tekst "<rok1>" i "<przedmiot>"
    Wtedy klikniemy link "Przedmioty"
    I klikniemy link "Dodaj przedmiot"
    Oraz zobaczymy komunikat "Dodaj przedmiot"
    I zobaczymy dwa pola "Rok", "Przedmiot"
    Wtedy uzupełnię "Rok" tekstem "<rok2>"
    I uzupełnię "Przedmiot" tekstem "<przedmiot>"
    Wtedy kliknę przycisk "Utwórz Przedmiot"
    I zobaczymy komunikat "Przedmiot został dodany"
    Oraz tekst "<rok2>" i "<przedmiot>"

    Przykłady:
    |rok1|rok2|przedmiot|
    |3EFA-DI|2EFA-DI|Nowoczesne technologie programistyczne |


	Szablon scenariusza: Niepoprawne dodanie przedmiotu
	Zakładając że jesteśmy zalogowani i na "Strona główna"
	I chcemy dodać przedmiot to klikniemy link "Przedmioty"
	Wtedy klikniemy link "Dodaj przedmiot"
	Oraz zobaczymy komunikat "Dodaj przedmiot"
	I zobaczymy dwa pola "Rok", "Przedmiot"
	Wtedy uzupełnię "Rok" tekstem "<rok>"
	I uzupełnię "Przedmiot" tekstem "<przedmiot>"
	Wtedy kliknę przycisk "Utwórz Przedmiot"
	I zobaczymy komunikat "<komunikat>"
	I zobaczymy dwa pola "Rok", "Przedmiot"

	Przykłady:
	|rok|przedmiot|komunikat|
	|| Nowoczesne technologie programistyczne|Rok name nie może być puste|
	|3FA||Przedmiot nie może być puste|	
	|3F| Nowoczesne technologie programistyczne|Rok name jest za krótkie (przynajmniej 3 znaków)|
	|3FA|Te|Przedmiot jest za krótkie (przynajmniej 3 znaków)|
	|3EFADI3EFADI3EFADI3EF| Nowoczesne technologie programistyczne|Rok name jest za długie (maksymalnie 20 znaków)|
	|3FA|Nowoczesne technologie programistyczne na Wydziale Elektrotechiniki i Informatyki Politechniki Rzeszowskiej|Przedmiot jest za długie (maksymalnie 100 znaków)|


    Szablon scenariusza: Niepoprawne dodanie takiego samego przedmiotu
    Zakładając że jesteśmy zalogowani i na "Strona główna"
    I chcemy dodać przedmiot to klikniemy link "Przedmioty"
    Wtedy klikniemy link "Dodaj przedmiot"
    Oraz zobaczymy komunikat "Dodaj przedmiot"
    I zobaczymy dwa pola "Rok", "Przedmiot"
    Wtedy uzupełnię "Rok" tekstem "<rok>"
    I uzupełnię "Przedmiot" tekstem "<przedmiot>"
    Wtedy kliknę przycisk "Utwórz Przedmiot"
    I zobaczymy komunikat "Przedmiot został dodany"
    Oraz tekst "<rok>" i "<przedmiot>"
    Wtedy klikniemy link "Przedmioty"
    I klikniemy link "Dodaj przedmiot"
    Oraz zobaczymy komunikat "Dodaj przedmiot"
    I zobaczymy dwa pola "Rok", "Przedmiot"
    Wtedy uzupełnię "Rok" tekstem "<rok>"
    I uzupełnię "Przedmiot" tekstem "<przedmiot>"
    Wtedy kliknę przycisk "Utwórz Przedmiot"
    I zobaczymy komunikat "<komunikat>"
    I zobaczymy dwa pola "Rok", "Przedmiot"

    Przykłady:
    |rok|przedmiot|komunikat|
    |3EFA-DI| Nowoczesne technologie programistyczne |Przedmiot zostało już zajęte|

    Scenariusz: Nieuprawnione dodanie przedmiotu
	Zakładając że jesteśmy niezalogowani
	Kiedy wejdziemy w link przedmioty
	Wtedy zobaczymy komunikat "Zaloguj lub zarejestruj się, aby kontynuować."
