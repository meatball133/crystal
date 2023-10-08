# Instructions

In this exercise you need to implement some methods to manipulate an array of programming languages.

## 1. Define a method to return an empty language array

Define the `LanguageList.list` method that takes no arguments and returns an empty array of the type `Array(String)`.

```crystal
LanguageList.list()
# => []
```

## 2. Define a method to add a language to the array

Define the `LanguageList.add` method that takes 2 arguments (a _language array_ and a string literal of a _language_).
The method should return the array with the new language added to the end of the array.

```crystal
language_list = LanguageList.list()
# => []
language_list = LanguageList.add(language_list, "Crystal")
# => ["Crystal"]
language_list = LanguageList.add(language_list, "Ruby")
# => ["Crystal", "Ruby"]
```

## 3. Define a method to remove a language from the array

Define the `LanguageList.remove` method that takes 1 argument (a _language array_).
The method should return the array without the last item.
Assume the array will always have at least one item.

```crystal
language_list = LanguageList.list()
# => []
language_list = LanguageList.add(language_list, "Crystal")
# => ["Crystal"]
language_list = LanguageList.add(language_list, "Ruby")
# => ["Crystal", "Ruby"]
language_list = LanguageList.remove(language_list)
# => ["Crystal"]
```

## 4. Define a method to return the nth item in the array

Define the `LanguageList.at` function that takes 2 argument (a _language array_ and an index).
The method should return the language at n index in the array.
Assume that on the index will there always be a language.

```crystal
language_list = LanguageList.new()
# => []
language_list = LanguageList.add(language_list, "Crystal")
# => ["Crystal"]
language_list = LanguageList.add(language_list, "Ruby")
# => ["Crystal", "Ruby"]
LanguageList.at(language_list, 1)
# => "Ruby"
```

## 5. Define a method to parse a string of languages

Define the `LanguageList.parse` method that takes 1 argument (a string literal of languages separated by a comma).
The method should return an array of languages.

```crystal
LanguageList.parse("Crystal, Ruby")
# => ["Crystal", "Ruby"]
```
