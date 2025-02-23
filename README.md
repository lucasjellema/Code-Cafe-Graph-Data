# Code-Cafe-Graph-Data
Materials for the February 2025 Conclusion Code Café on Graph Data &amp; Graph Databases

- [Code-Cafe-Graph-Data](#code-cafe-graph-data)
  - [Puzzling Graphs](#puzzling-graphs)
    - [Lootje Trekken](#lootje-trekken)
    - [Overstappen](#overstappen)
    - [Vriendinnen op Stedentrip](#vriendinnen-op-stedentrip)
    - [Paardensprongpuzzel](#paardensprongpuzzel)
    - [Bruggen van Königsberg](#bruggen-van-königsberg)
    - [Overig](#overig)
  - [Mermaid Graph Visualization](#mermaid-graph-visualization)
    - [Familie](#familie)
    - [Analyse van Reistijden](#analyse-van-reistijden)
    - [De Duckstad Stamboom](#de-duckstad-stamboom)
    - [Other](#other)
  - [First steps with CytoscapeJS](#first-steps-with-cytoscapejs)
  - [Demo Graphs](#demo-graphs)

Check out the Web Memo project with resources for this Code Café on Graph Data: [Web Memo project](https://lucasjellema.github.io/web-memo/?remoteURL=https://raw.githubusercontent.com/lucasjellema/Code-Cafe-Graph-Data/refs/heads/main/web-memo-project-Graph%20Data%20Code%20Caf%C3%A9-20250218.json)
![](./images/2025-02-23-09-26-55.png)

## Puzzling Graphs


### Lootje Trekken

Onderstaande data beschrijft hoe in het voetbalelftal de lootjes zijn getrokken. Er zijn drie mini-netwerkjes: groepjes spelers die elkaar hebben betrokken.  

```
A B
J L
K E
G A
D F
Q
I J
B K
L M
C D
F H
E G
M I
H N
N C
```

Wie zitten er in dit mininetwerkje met speler G?

Tip: open de site https://csacademy.com/app/graph_editor/ en plak de code in het vak voor graph data.



### Overstappen

Deze data beschrijft vluchten van A naar B en verder. Hoe vaak moet je overstappen om van A naar S te komen? NB: als je de data in een graaf zet kan je dat sneller zien.

```
Vlucht Van <=> Naar
A <=> B
B <=> C
C <=> E
C <=> P
P <=> Z
B <=> Z
E <=> W
W <=> P
Z <=> E
E <=> S
W <=> S
A <=> E
```
Tip: je kunt ChatGPT vragen ("kan je van deze data een mermaid graph maken?") om deze data om te zetten naar een formaat dat je in de editor https://mermaid.live/ kan plakken, dat er een plaatje van maakt.

Mermaid verwacht input die er zo uit ziet:
```
graph TD
  A <--> B
  B <--> C
  C <--> E
  C <--> P
  P <--> Z
  B <--> Z
  E <--> W
  W <--> P
  Z <--> E
  E <--> S
  W <--> S
  A <--> E
```

### Vriendinnen op Stedentrip

Deze data beschrijft vijf vriendinnen die steden hebben bezocht:
```
Vriendin,Stad
Anna,Amsterdam
Clara,Maastricht
Elsa,Groningen
Anna,Rotterdam
Britt,Den Haag
Britt,Utrecht
Anna,Utrecht
Britt,Rotterdam
Clara,Utrecht
Clara,Amsterdam
Dana,Rotterdam
Dana,Den Haag
Elsa,Maastricht
Dana,Utrecht
Dana,Maastricht
Elsa,Eindhoven
Britt,Leiden
Elsa,Leiden
Elsa,Rotterdam
Clara,Rotterdam
```

Welke stad hebben ze allemaal bezocht?
Welke vriendin heeft deze meeste steden bezocht?

Met een graaf (bijvoorbeeld in https://csacademy.com/app/graph_editor/ - vervang de comma's met spaties en plak deze code in editor) zijn die vragen makkelijk te beantwoorden.



### Paardensprongpuzzel

Dit is een paardensprongpuzzel:

```
B A S
E   A
T A D
```

En op deze site kan de paardensprongpuzzel als graaf weergeven: https://mermaid.live/

Door onderstaande code te plakken in de editor:
```
graph TD


    %% Nodes en paardensprongen
    A1["B"] --> B3["A"]
    A1 --> C2["A"]
    
    A2["E"] --> C1["S"]
    A2 --> C3

    A3["T"] --> B1
    A3 --> C2

    B1["A"] --> A3
    B1 --> C3

    B3["A"] --> A1
    B3 --> C1

    C1["S"] --> A2
    C1 --> B3

    C2["A"] --> A1
    C2 --> A3

    C3["D"] --> A2
    C3 --> B1
```

De puzzel vereenvoudigt nu tot een pad dat je afloopt in de ene of de andere richting - beginnend bij willekeurig welke letter. 


### Bruggen van Königsberg 

Deze graaf beschrijft de zeven bruggen van Königsberg:
```
 C __
/ \  \
 A -- D
\ /__/ 
 B
```

We weten al dat je niet in één pad alle bruggen precies één keer van aflopen. Alle knooppunten hebben een oneven aantal bruggen, dat zit ons in de weg. 

Hoe zou je een wandeling mogelijk kunnen maken die wel alle bruggen bezoekt? Welke nieuwe brug(gen) moeten we aanleggen? Welke bestaande bruggen verwijderen?

We moeten zorgen dat ten hoogste twee nodes een oneven aantal edges hebben. Bouw bijvoorbeeld een brug van B naar C.


### Overig

Op deze site https://graphonline.top/en/ kan je een graph samenstellen en vervolgens ook analyseren.

leuke visualisatie: https://flourish.studio/visualisations/network-charts/ en https://gephi.org/gephi-lite/

Play met Dijkstra's algoritme:
https://mikedombo.github.io/graphPlayground/

https://www.algorithmsvisualizer.com/



## Mermaid Graph Visualization

Mermaid has evolved into a very popular tool and collection of formats for expressing information. Mermaid supports many different types of diagrams that are all defined in a structured way - using a readable yet formal format. Generative AI tools are very good at both interpreting and generating Mermaid diagrams - offering a powerful way for communication. 

You already have seen some uses of Mermaid in the previous section. Here are some more.

### Familie
Deze comma separated data bevat personen en voor (bijna) iedere persoon één van hun ouders:

```
persoon,kind van
Stella,
Bas,Anja
Zade
Jip,Eli
Katie,
Lara,Katie
Mirjam,Katie
Nadia,Katie
Otto,Nadia
Eli,Cynthia
Yuri,Vic
Ids,Eli
Pia,Nadia
Faye,Cynthia
Rob,Otto
Tijs,Stella
Anja,
Giri,Cynthia
Ursula,Tijs
Vic,Tijs
Cynthia,Anja
Dory,Bas
Willem,Vic
```

Kan je uit deze data bepalen wie de oma is van Giri? 
En wie de kleinkinderen zijn van Tijs?

Dat kan - maar gaat niet vreselijk makkelijk. Als je deze data als graaf weergeeft zijn die vragen makkelijker te beantwoorden. Met ChatGPT heb ik de CSV data omgezet in Mermaid syntax:

```
graph TD
  Anja
  Katie
  Stella
  Zade
  Bas --> Anja
  Cynthia --> Anja
  Dory --> Bas
  Eli --> Cynthia
  Ids --> Eli
  Jip --> Eli
  Lara --> Katie
  Mirjam --> Katie
  Nadia --> Katie
  Otto --> Nadia
  Pia --> Nadia
  Rob --> Otto
  Tijs --> Stella
  Ursula --> Tijs
  Vic --> Tijs
  Willem --> Vic
  Yuri --> Vic
  Giri --> Cynthia
  Faye --> Cynthia
```

Kopieer en plak deze data in de Mermaid Live Editor: https://mermaid.live/.  Beantwoord nu deze twee vragen:

* Kan je uit deze data bepalen wie de oma is van Giri?
* En wie de kleinkinderen zijn van Tijs?

En doe er nog eentje:
* wie zijn de kinderen van Nadia?

Je ziet dat het voor het beantwoorden van sommige vragen heel veel uitmaakt in wat voor vorm de data is gepresenteerd. Dezelfde data als CSV file is voor deze vragen veel minder toegankelijk dan deze data als graaf weergegeven. 

### Analyse van Reistijden

Deze matrix bevat de reistijden in minuten tussen verschillende locaties. Iedere reis kan je in beide richtingen maken.

| X   | UC  | UO  | BH  | DD  | SZ  | S   | SD  | B   | A   | HS  | H   |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| UC  | X   |     |     |     |     |     |     |     |     |     |     |
| UO  | 4   | X   |     |     |     |     |     |     |     |     |     |
| BH  |     | 5   | X   |     |     |     |     |     |     |     |     |
| DD  |     |     | 3   | X   |     |     |     |     |     |     |     |
| SZ  |     |     |     | 6   | X   |     |     |     |     |     |     |
| S   |     |     |     |     | 2   | X   |     |     |     |     |     |
| SD  |     |     |     |     |     | 3   | X   |     |     |     |     |
| B   |     |     |     |     |     |     | 4   | X   |     |     |     |
| A   | 13  |     |     | 7   |     |     |     |     | X   |     |     |
| HS  |     | 10  |     |     |     |     |     |     |     | X   |     |
| H   |     |     |     |     |     |     |     | 5   | 12  | 3   | X   |

Wat is de reistijd van UC naar S?

Als je een graaf maakt van de data in deze matrix is ook het beantwoorden van deze vraag een stuk eenvoudiger.
Open de site: https://mermaid.live/ in een nieuw browser tab. 

Plak dan onderstaande data in de editor:

```
---
config:
  layout: fixed
---
flowchart TD
    UC["UC"] -- 4 --> UO["UO"]
    UO -- 5 --> BH["BH"]
    BH -- 3 --> DD["DD"]
    DD -- 6 --> SZ["SZ"]
    SZ -- 2 --> S["S"]
    S -- 3 --> SD["SD"]
    SD -- 4 --> B["B"]
    UC -- 13 --> A["A"]
    DD -- 7 --> A
    UO -- 10 --> HS["HS"]
    B -- 5 --> H["H"]
    A -- 12 --> H
    HS -- 3 --> H
    style UC stroke:#00C853,fill:#00C853
    style S stroke:#D50000,fill:#2962FF,color:#FFFFFF
```

Het diagram rechts toont een graaf. Hierin kan je de route van UC naar S vrij makkelijk vinden en de reistijd bepalen.

Op welke manieren kan je van UC naar A reizen? Wat is de snelste reis van UC naar A?

Waar staan eigenlijk deze afkortingen voor? (S, SZ, UC, A, H - kan je ze thuisbrengen? Tip: zie [extra informatie](https://www.ns.nl/rpx?ctx=arnu%7CfromStation%3D8400621%7CtoStation%3D8400567%7CplannedFromTime%3D2024-12-10T14%3A37%3A00%2B01%3A00%7CplannedArrivalTime%3D2024-12-10T14%3A56%3A00%2B01%3A00%7CexcludeHighSpeedTrains%3Dfalse%7CsearchForAccessibleTrip%3Dfalse%7ClocalTrainsOnly%3Dfalse%7CtravelAssistance%3Dfalse%7CtripSummaryHash%3D446193610))


### De Duckstad Stamboom
De file [duckstad-familiy-tree-mermaid.txt](files/duckstad-familiy-tree-mermaid.txt) bevat een deel van de stamboom van Duckstad, in een formaat dat kan worden weergegeven door de Mermaid visualization tool. Bekijk de inhoud van deze file en probeer te begrijpen wat de data beschrijft. Bijvoorbeeld hoe de relatie is tussen Donald Duck en Kwik.  

Open de website https://mermaid.live/. Start een nieuwe visualisatie en copy & paste de inhoud van bovenstaande file. Bekijk de visualisatie. Ook dit is een graaf.

![](./images/2025-02-23-09-43-08.png)


### Other

It is easy to get ChatGPT or its counterparts to produce Mermaid input. As an example:

My prompt
```
can you generate a Mermaid graph document for the British royal family - starting with Queen Elisabeth II?
```

The result [british-royal-family-mermaid.mmd](files\british-royal-family-mermaid.mmd)

* Here’s a Mermaid graph document representing the British royal family starting from Queen Elizabeth II. This structure includes her children, grandchildren, and great-grandchildren.

* I’ll generate a Mermaid graph in a text document so you can easily modify and visualize it.

* I've created a Mermaid graph document that represents the British royal family starting from Queen Elizabeth II. You can paste it into any Mermaid-compatible editor to visualize the structure. Let me know if you'd like any modifications! 👑✨*

## First steps with CytoscapeJS

The file [cytoscape-graph101.html](files\cytoscape-graph101.html) is the simplest web application with CytoscapeJS embedded into it. It presents the world's almost simplest graph. 

You can open the file in your web browser, behold the graph and drag the nodes around. 
![](images/cytoscapejs-20250223101655.png)

Here is [documentation for CytoscapeJS](https://js.cytoscape.org/) 

Note: [this website](https://songhaifan.github.io/learning_cytospace/#/README) will guide you on your first steps with CytoscapeJS.

Here is a [simple demo](https://raw.githack.com/SonghaiFan/learning_cytospace/main/cytoscape_learning_code/2-basic-node-and-edge-operations/index.html) of a web application that allows adding, removing and updating nodes and edges. The code required for this behavior can be seen on [this page - with clarification](https://songhaifan.github.io/learning_cytospace/#/chapters/2/).



## Demo Graphs

Some graph demonstrations to check out:

* [Conclusion ecosysteem](https://lucasjellema.github.io/network-navigator/?remoteURL=https://raw.githubusercontent.com/lucasjellema/network-navigator/refs/heads/main/demo-graphs/network-navigator-conclusion-ecosystem.json) - created with Network Navigator based on CytoscapeJS (also available as Chrome Extension - see [GitHub Repo](https://github.com/lucasjellema/network-navigator)) (created using Cytoscape)
* [Characters of Les Misérables](https://lesmiserables.mla.hcommons.org/) - open website, navigate to *Characters of Les Misérables*, click on *Characters Graphs*
* [A cartography of Wikipedia pages around data visualization](https://www.sigmajs.org/demo/index.html) - created using SigmaJS

