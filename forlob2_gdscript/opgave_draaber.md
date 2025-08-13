***Opgave: Simuler Faldende Regndråber***

Lidt vigtig info inden du går igang:
- [https://docs.godotengine.org/en/4.4/tutorials/scripting/gdscript/gdscript_basics.html?highlight=inner#inner-classes](https://docs.godotengine.org/en/4.2/tutorials/scripting/gdscript/gdscript_basics.html#inner-classes)

I denne opgave skal du bruge Godot og GDScript til at skabe en simpel simulation af regndråber, der falder fra toppen af skærmen og lander som små cirkler på jorden.

Åbn Godot og opret et nyt projekt.

1. Opret en ny Scene (Node2D) ved at højreklikke på "Scenes" i projekttræet og vælge "New Node2D Scene".
2. Opret en ny instans af "Draabe" og tilføj den som en child node til "Node2D" i scenen.
3. Gør de nødvendige ændringer i "Draabe" klassen, så cirklerne ser ud som regndråber. Ændr farven for at få dem til at ligne regndråber.
4. Justér klassens position.y i dens _process()-metode for at få cirklerne til at bevæge sig nedad på skærmen som regndråber. ( husk kald "update")
5. Skriv kode i den overordnede scene's _input()-metode, der opretter en ny instans af "Draabe" klassen hver gang der klikkes med musen. Brug "new" til at lave en kopi af "Draabe" noden og tilføj den som child til "Node2D".
6. Kør spillet og se, hvordan regndråberne nu simuleres ved at falde fra toppen af skærmen og lande som cirkler på jorden, når der klikkes med musen.

***Ekstre udfordring:***

Ud fra samme princip som i oventsående lav en klasse der hedder Dyr. Instanser af klassen dyr skal kunne indsættes ved at trykke et sted på skærmen. Dyret skal herefter bevæge sig selvstændigt rundt på skærmen på en tilfældig men realistisk måde.
