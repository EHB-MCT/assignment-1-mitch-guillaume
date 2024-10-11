# IOS APP for Dev5

This is an app made for IOS with Switch and SwitchUI for our Dev5 school course. Currently this app is a limited pokedex using the PokeAPI to pick up the first 151 pokémon. Each pokemon has basic information such as height, abilities and all possible moves it can learn.

## Installing

Clone the repository on your machine in a desired place. After this, browse to the folder, open the "Challenge-Dev5" folder and open the "xcode.project" file. Be wary of fetching before committing. If prompted with the option to use the xcode or disk version of the "xcode.project" file, please use the disk version to prevent corruption inside the files.

## Requirements

Xcode 16.0 or higher

Base iOS packages (installed with or through Xcode)

Swift 6.0 or higher

## Contributions

Please document your code correctly by adding comments at the top describing the function of the file as well as inline comments to further enhance the comprehension of the code by newcomers.

If you add elements to an already existing module, please use "//MARK:" to organize and mark sections of code that were added, "//TODO:" to indicates a task or reminder for future implementation, "FIXME:" to mark parts of the code that need fixing and "MARK: -" to add a separator (horizontal line in Xcode) for better visual separation between sections

## Guidelines

Don't be a bitch with a small ego. Everybody can make mistakes. Corrections with the use of verbal abuse as well as threats will not be tolerated and the guilty will be banned without a warning or second chance.

## Controllers

Project files that handle the connection to databases or API calls. This folder is also for "Services" as they work in the same way and just have a different name (depends on your way of working).

Be sure to import "Foundation".

Use  upper CamelCase to name files. Name them as controllers in the folder as well. In case you make multiple controllers for your contribution, put them in a subfolder named according to the use of the controllers. Use upper CamelCase for the naming of the folder as well.

## Models

Models are used to parse data into from the database or API using the controllers. View them as objects or templates for the data to transform into.

Use upper CamelCase to name files. Name them according to the type of "object" or use they will have.

Use tags "Codable" and "Identifiable" to make the models discoverable (ex: "struct Pokemon: Codable, Identifiable") and import "Foundation".

In case multiple models are being made for a single purpose, put them together in a subfolder named according to the models or the use case of them. Use upper CamelCase for the naming of the folder as well.

## ViewModels

Use ViewModels to keep the views lightweight and focused on rendering. They handle the transformation of data and the interactions made by users (ex: button clicked calls an API) and connect to controllers. Some ViewModels may be shared or abstract based and can be put in the Shared folder. Please be sure to put multiple ViewModels that are linked inside a subfolder EVEN if they are in the shared folder.

Make sur to import "Combine" and "Foundation".

Use upper CamelCase to name the files according to their use (name of the View they are linked to/ used for + "Model"). In case a contribution requires multiple ViewModels/ Views, put these in a subfolder named after the use case. Also, use upper CamelCase to name the folder.

## Views

Use Views to display a specific screen using SwiftUI. Views can also be used to make reusable UI (ex: NavBar). Reusable Views are to be put in the Shared subfolder.

Be sure to import and use "SwiftUI".

Use upper CamelCase to name Views according to their use or what they render. In case multiple Views are made for a single use case/ contribution, please put them in a subfolder named accordingly to the use case. Also, use upper CamelCase to name the subfolder.

## Other

You can put configuration files like plist, xcconfig and other configuration files for different build settings. Also, you can put License Files, Text files (ex: README files mentioned inside the code), Shell Scripts, Custom data Files (like JSON, XML or custom binary data files), Third-Party Files or External Files (ex: third-party libraries or SDKs manually added that do not fit in the Frameworks or Libraries folder) and Miscellaneous Files (documentations, CSV data, sample data for testing).

### Put every file type in a dedicated subfolder named with upper CamelCase after the type of files stored in it.

DO NOT STORE SOURCE CODE INSIDE OF THIS FOLDER! (ex: .swift, .m, .h, .cpp files). Also do not put Storyboards (.storyboard/ .xib files), Views (and SwiftUI files), Frameworks, Libraries, Derived Data or Build Products and Bundle Files (.strings).

## App

This folder is used for the entrypoint of the app. At the moment (07 October 2024) the app does not have an App configuration file, in case it needs to be added, this is where it should be.

## Assets

Use the Assets folder to store images, icons, logo's and other media that are not stored online in personal database(s) or API(s) but are needed inside Views.

## Preview Content

## Tests

Put all types of tests inside the dedicated subfolder. In case you wish to add a kind of test that does not have a dedicated subfolder, please make a subfolder for it. Be sure to use upper CamelDase when naming the tests and subfolders.

## License



## Sources 

- [PokeAPI](https://pokeapi.co) Used as the base API for this app.
- [ChatGPT](https://chatgpt.com/share/6702760f-c5cc-8002-84bf-c1e4e435b949) Used to bring together the multiple sources of documentation and conventions regarding Swift and folder structures. Almost every project has a different way of structuring their folders, and Apple's documentation is very vague on this as well.
- [YouTube tutorial](https://www.youtube.com/watch?v=DUkZv80F5lU) Used as a base to learn how to implement an API in Swift, and scpecifically to learn how to use the PokeAPI.
