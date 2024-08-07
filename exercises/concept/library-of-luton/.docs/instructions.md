# Instructions

The library of Luton is a large library with a large collection of literature, ranging from books to art.
The library has a section where they study literature and add books to the computer system.

Certain parts aim to be automated and you are asked to help them.
This includes helping things from automating the inscribe process forms to helping decrypt texts.

## 1. Get first letter of title

A library's books are supposed to be easy to find, so they are sorted by the first letter of the title.

Implement the `Library.first_letter` method, which takes an argument `title`, which holds the book's title.
The method should return the first letter of the title.

```Crystal
Library.first_letter("Mystery of the Crystal Skull")
# => 'M'
```

## 2. Get authors initials

The library has a lot of books written by different authors.
Authors are often referred to by their initials, so the library requested a system that gives the initials of the author by inputting the author's first name and last name.
The initials should be formatted as such: `{first_letter_of_first_name}.{first_letter_of_last_name}`

Implement the `Library.initials` method that takes two arguments `first_name` and `last_name` which hold the first name and last name of the author.
The method should return the author's initials.

```Crystal
Library.initials("William", "Shakespeare")
# => "W.S"
```

## 3. Decrypt letter

Some literature is encrypted and the library has a lot of encrypted texts.
The library would like a new decryption system for special encryption.

The encryption works by taking the letter and replacing it with the letter preceding it in the alphabet.
For example `a` becomes `z`, `b` becomes `a`, `c` becomes `b`, and so on.

The library would like it to be able to decrypt both uppercase and lowercase letters and keep the same case as the original letter.

Implement the `Library.decrypt_character` method, which takes an argument `character`, which holds the letter to decrypt.
The method should return the decrypted letter.

```Crystal
Library.decrypt_character('a')
# => 'z'
```

## 4. Decrypt text

The library would also like to decrypt a whole text, with the encryption, that takes the preceding letter in the alphabet.

The decrypter should only decrypt letters and leave all other characters as they are.

Implement the `Library.decrypt_text` method, which takes an argument `text`, which holds the text to decrypt.
The method should return the decrypted text.

```Crystal
Library.decrypt_text("Ifmmp Xpsme!")
# => "Hello World!"
```