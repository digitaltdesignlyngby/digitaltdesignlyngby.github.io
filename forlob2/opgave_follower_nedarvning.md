# Mover (før follower) special-typer : nedarvning i gdscript (og Godot)

I denne opgave skal vi arbejde med konceptet om "Nedarvning". Vi vil oprette en "Mover"-node samt andre noder kaldet "Predator" og "Prey", som begge nedarver fra "Mover".

Hints:
Her er en video, der viser en måde at implementere nedarvning i GDScript og Godot: https://youtu.be/D0P9x9KHniA?si=corcslYFxSHCtSVe

Opgaver:
1. Opret en "MainScene" med en "hovednode" kaldet "MainNode" af typen "Node2D" og følgende under-noder: "Mover", "Predator" og "Prey".
2. Lav "Mover"-klassen som superklassen, hvorfra "Predator" og "Prey" nedarver.
3. Implementer en tilfældig bevægelsesmåde for "Mover", der forhindrer den i at forsvinde ud af skærmen. Du kan lade dig inspirere af kapitel 6 fra bogen "Nature of Code".
4. Gør "Predator" og "Prey" forskellige fra "Mover" ved at ændre deres udseende. Du kan ikke overskrive "_draw" direkte som i f.eks. Processing, så du skal oprette en ny metode, f.eks. "mover_draw", som kaldes fra "_draw".
5. Implementer funktionalitet til at indsætte instanser af "Predator" ved tryk på "A" og instanser af "Prey" ved tryk på "B".

Ekstra opgaver:
6. Lad "Predator"-noder æde "Prey"-noder, hver gang de mødes.
7. Øg størrelsen på "Predator"-noderne, hver gang de spiser.
8. Lad "Predator"-noderne følge efter det nærmeste bytte.
9. Giv "Prey"-noderne mulighed for at løbe hurtigere, når de bliver forfulgt.

Bare til info...der er fire hovedbyggesten i Godot
- Scenes : Den støreste byggesten, der bruges til at laver "skabeloner" til f.eks. "fjender" eller hele "baner/levels"
- Nodes : Mindre underbyggesten, der bruges til at bygge selve ens scene,- såsom "Sprites" eller "Collision"
- Signals : Kommunikation imellem de forskellige nodes indenfor en Scene.
- Scripts : I scripts tilknyttet noder kan man skrive kode kan håndtere stort set alt. Det gælder selvfølgelig om på sigt at balancere mængden af kode i Scriptet med indbygede Nodes,- ellers er der jo ingen grund til at anvende en Game Engine :-)...
