<h2>Projekt-krav</h2>
Vi ønsker et spil og gameplay, som kan huse et 2D spil. F.eks. et RPG lignende spil, såsom det der kunne være Diablo!
Vi ønsker leverancer på projektet, som skal bestå af:
- Et Godot projekt, som indeholder jeres 2D spil, med al indhold i form af assets, scripts, nodes, scenes etc.
- En video-præsentation af varighed 2-3 minutter, hvor I omtaler jeres spil, og eventuelle designvalg til spillet, som I især ønsker at sætte fokus på.

### Selve spillet SKAL indholde følgende:
- En playable karakter, eller det som i dokumentet her bliver kaldt – spilleren
- 3 til x antal "fjende objekter", som f.eks. som hver især er deres egen type fjende, såsom: Goblin, Skeleton, CrabPeople etc.
- En "health" bar
- Objekter, som fungere som "mønter", som kan eksistere i en bane, og som kan samles op af spiller. Når en mønt samles op, tælles en samlet score op.
- TileMaps, som giver flere baggrundselementer til banen, såsom græs, grus, lava, vand etc. I vælger selvfølgelig selv, hvad diverse tiles skal bestå af.
- Game over kriterie der skal til for at opnå Game Over status.

### Spilet kan indeholde følgende (forslag):
- BONUS: Objekter, som kan indgå i en Inventory, og som eventuelt kan ”equip’es” af den playable karakter.
- En combat scenarie skal udspille sig i spillet, hvor en spiller kan bekrige en fjende. Vælg en af 2 følgende muligheder:
    - LET: Animér spilleren med et våben, som kan slå ud efter en fjende. Ved fjende og spiller kollision, så mister spilleren x antal liv af sin health bar. Ved ramt mål af våben mod fjende, så mister fjenden liv på sin health bar.
    -SVÆR: Ingen våben, kun kollision mellem spiller og fjende. Ved kollision, skift da scene til combat scene! I denne scene, skal illustreres en heads up battle mellem spiller og fjende, i en tur-skiftende gameplay mode. Spiller har x antal muligheder til at angribe fjende. Fjende vælger mellem max 2 forskellige angreb. Når health bar på enten spiller eller fjende ligger på nul, så laver vi et exit fra combat scene.
- Succes kriterie for gennemførelse af level, betragt det som et design valg, hvor i diktere, hvad der skal til for at gennemføre en level:
    - Er det antal mønter samlet op?
    - Er det antal fjender dræbt?
    - Er det at spilleren er nået til et specifikt punkt i banen?
    - Andet/andre?
    - Etc.