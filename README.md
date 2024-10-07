# IOS APP for Dev5
This is an app made for IOS with Switch for our Dev5 school course. Currently this app is a limited pokedex using the PokeAPI to pick up the first 151 pokémon. Each pokemon has basic information such as height, abilities and all possible moves it can learn.

## Installing
IDK how to have people install it yet...

## Requirements
Xcode
Base iOS packages (installed with or through Xcode)

## Controllers
Project files that handle the connection to databases or API calls.
Use CamelCase to name files.

## Models
Models used to parse data into from the database or API using the controllers. View them as objects.
Use CamelCase to name files.
Use tags "Codable" and "Identifiable" to make the models discoverable (ex: "struct DetailedPokemon: Codable, Identifiable")


## Sources 

- [PokeAPI](https://pokeapi.co) Used as the base API for this app.
- [ChatGPT](https://chatgpt.com/share/6702760f-c5cc-8002-84bf-c1e4e435b949) Used to bring together the multiple sources of documentation and conventions regarding Swift and folder structures. Almost every project has a different way of structuring their folders, and Apple's documentation is very vague on this as well.
- [YouTube tutorial](https://www.youtube.com/watch?v=DUkZv80F5lU) Used as a base to learn how to implement an API in Swift, and scpecifically to learn how to use the PokeAPI.
