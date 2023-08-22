***follower opgaven : Lav en trekant der bevæger sig mod museklik destination***

I denne opgave vil du oprette en trekant, der gradvist retter sig mod det seneste museklik. Du vil anvende vektoroperationer som angle_to og lerp for at opnå denne bevægelse.

Se nedenstående video:
[https://www.youtube.com/watch?v=FPIWGHDO89Y](https://www.youtube.com/watch?v=FPIWGHDO89Y)

-------

**Del 1: Opret Trekanten**

I denne første del skal du oprette trekanten og sørge for, at den oprindeligt peger mod højre.

-------

**Del 2: Justering af Trekantens Retning**

I anden del skal du sørge for, at trekanten drejer sig mod den seneste museklik-destination.

-------

**Del 3: Bevægelse mod Destinationspunktet**

I tredje del skal du få trekanten til at bevæge sig imod den ønskede destination ved hjælp af en vektor, der gradvist drejer i retning af destinationspunktet.

--------

**Del 4: ideer til ekstra udvidelse**

lav flere follower-objekter der følger efter hinanden med en bestemt afstand, det sidste element i rækken følger efter musens position...

--------

Hints:

Brug angle_to til at beregne vinklen mellem din aktuelle retning og destinationsretningen.
Brug lerp til gradvist at ændre vektorlængden for at bevæge trekanten imod målet.
I _input-metoden skal du registrere et venstre museklik og opdatere targetPos med den seneste museklik-destination.
Sørg for at afprøve og finjustere dine ændringer for at opnå en jævn bevægelse af trekanten mod museklik-destinationen.
