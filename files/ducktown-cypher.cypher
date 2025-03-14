// Create the characters (nodes)
CREATE (oomDagobert:Character {name: "Oom Dagobert"})
CREATE (donaldDuck:Character {name: "Donald Duck"})
CREATE (dellaDuck:Character {name: "Della Duck"})
CREATE (hortenseMcDuck:Character {name: "Hortense McDuck"})
CREATE (quackmoreDuck:Character {name: "Quackmore Duck"})
CREATE (kwikDuck:Character {name: "Kwik Duck"})
CREATE (kwekDuck:Character {name: "Kwek Duck"})
CREATE (kwakDuck:Character {name: "Kwak Duck"})
CREATE (omaDuck:Character {name: "Oma Duck"})
CREATE (gijsGans:Character {name: "Gijs Gans"})
CREATE (gladstoneGander:Character {name: "Gladstone Gander"})

// Create the relationships (edges)
CREATE (oomDagobert)-[:UNCLE_OF]->(donaldDuck)
CREATE (oomDagobert)-[:UNCLE_OF]->(dellaDuck)
CREATE (oomDagobert)-[:UNCLE_OF]->(hortenseMcDuck)
CREATE (hortenseMcDuck)-[:MOTHER_OF]->(donaldDuck)
CREATE (hortenseMcDuck)-[:MOTHER_OF]->(dellaDuck)
CREATE (hortenseMcDuck)-[:SISTER_OF]->(quackmoreDuck)
CREATE (quackmoreDuck)-[:FATHER_OF]->(donaldDuck)
CREATE (quackmoreDuck)-[:FATHER_OF]->(dellaDuck)
CREATE (omaDuck)-[:GRANDMOTHER_OF]->(gijsGans)
CREATE (omaDuck)-[:GRANDMOTHER_OF]->(gladstoneGander)
CREATE (omaDuck)-[:GRANDMOTHER_OF]->(donaldDuck)
CREATE (dellaDuck)-[:MOTHER_OF]->(kwikDuck)
CREATE (dellaDuck)-[:MOTHER_OF]->(kwekDuck)
CREATE (dellaDuck)-[:MOTHER_OF]->(kwakDuck)
CREATE (donaldDuck)-[:UNCLE_OF]->(kwikDuck)
CREATE (donaldDuck)-[:UNCLE_OF]->(kwekDuck)
CREATE (donaldDuck)-[:UNCLE_OF]->(kwakDuck)
CREATE (omaDuck)-[:GRANDMOTHER_OF]->(donaldDuck)
CREATE (gijsGans)-[:COUSIN_OF]->(donaldDuck)
CREATE (gladstoneGander)-[:COUSIN_OF]->(donaldDuck)
