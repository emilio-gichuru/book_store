const bookCategories = [
  {
    "name": "Fiction",
  },
  {
    "name": "Fantasy",
  },
  {
    "name": "Mystery",
  },
  {
    "name": "Thriller",
  },
  {
    "name": "Romance",
  },
];

const books = [
  {
    "name": "The Alchemist",
    "author": "Paulo Coelho",
    "category": "Romance",
    "image": "https://firebasestorage.googleapis.com/v0/b/apt-rite-346310.appspot.com/o/book%2Falchemist.jpeg?alt=media&token=cc953409-d66c-43a4-be59-d9ecf28a1396",
    "rating": 4.5,
    "duration" : "13h 7m",
    "pages" : "200"
  },
  {
    "name": "The Lord of the Rings",
    "author": "J. R. R. Tolkien",
    "category": "Fantasy",
    "image": "https://firebasestorage.googleapis.com/v0/b/apt-rite-346310.appspot.com/o/book%2Flord_of_rings.jpg?alt=media&token=70e90742-ee43-47cb-81fd-58540b8d2f86",
    "rating": 4.8,
    "duration" : "8h 7m",
    "pages" : "300"
  },
  {
    "name": "The Da Vinci Code",
    "author": "Dan Brown",
    "category": "Mystery",
    "image": "https://firebasestorage.googleapis.com/v0/b/apt-rite-346310.appspot.com/o/book%2Fdavinci_code.jpeg?alt=media&token=f11e5124-5e75-4511-a304-f2606668fcb9",
    "rating": 4.2,
    "duration" : "10h 7m",
    "pages" : "400"
  },
  {
    "name": "Boy Erased",
    "author": "Garrard Conley",
    "category": "Thriller",
    "image": "https://firebasestorage.googleapis.com/v0/b/apt-rite-346310.appspot.com/o/book%2Fboy_erased.jpeg?alt=media&token=b88732a2-4839-4228-9f0a-a9284e52cd2e",
    "rating": 3.8,
    "duration" : "12h 7m",
    "pages" : "500"
  },
  {
    "name": "Dune",
    "author": "Frank Herbert",
    "category": "Fiction",
    "image": "https://firebasestorage.googleapis.com/v0/b/apt-rite-346310.appspot.com/o/book%2Fdune.jpeg?alt=media&token=3d1a35e1-db42-42d6-9c14-e824fd40b11b",
    "rating": 4.1,
    "duration" : "11h 2m",
    "pages" : "370"
  },
  {
    "name": "To Kill a Mockingbird",
    "author": "Harper Lee",
    "category": "Fiction",
    "image": "https://firebasestorage.googleapis.com/v0/b/apt-rite-346310.appspot.com/o/book%2Fto_kill_mockingbird.jpeg?alt=media&token=77de4f31-681d-4c03-9988-c2a2cf6ff340",
    "rating": 4.4,
    "duration" : "9h 7m",
    "pages" : "300"
  },
  {
    "name": "1984",
    "author": "George Orwell",
    "category": "Romance",
    "image": "https://firebasestorage.googleapis.com/v0/b/apt-rite-346310.appspot.com/o/book%2F1984.jpeg?alt=media&token=423d9b51-713b-4acc-8e43-60e59f45ebd1",
    "rating": 4.2,
    "duration" : "10h 7m",
    "pages" : "400"

  },
  {
    "name": "Pride and Prejudice",
    "author": "Jane Austen",
    "category": "Romance",
    "image": "https://firebasestorage.googleapis.com/v0/b/apt-rite-346310.appspot.com/o/book%2Fpride_and_prejudice.jpg?alt=media&token=7534690d-9609-48f7-92e1-058ae20d29f8",
    "rating": 4.5,
    "duration" : "13h 7m",
    "pages" : "200"
  },
  {
    "name": "The Great Gatsby",
    "author": "F. Scott Fitzgerald",
    "category": "Fiction",
    "image": "https://firebasestorage.googleapis.com/v0/b/apt-rite-346310.appspot.com/o/book%2Fgreat_gatsby.jpeg?alt=media&token=9be64015-1713-4fc5-b842-3499a8acec3a",
    "rating": 4.3,
    "duration" : "11h 7m",
    "pages" : "300"
  },
  {
    "name": "The Catcher in the Rye",
    "author": "J.D. Salinger",
    "category": "Fantasy",
    "image": "https://firebasestorage.googleapis.com/v0/b/apt-rite-346310.appspot.com/o/book%2Fthe_catcher_in_the_rye.jpeg?alt=media&token=d86185be-11d5-40b1-ac9d-5e60f8f029c0",
    "rating": 4.0,
    "duration" : "10h 7m",
    "pages" : "400"
  },
  {
    "name": "The Hunger Games",
    "author": "Suzanne Collins",
    "category": "Mystery",
    "image": "https://firebasestorage.googleapis.com/v0/b/apt-rite-346310.appspot.com/o/book%2Fhunger_games.jpeg?alt=media&token=3659da57-e4b5-4916-a984-333985227fd8",
    "rating": 4.3,
    "duration" : "12h 7m",
    "pages" : "500"
  },
  {
    "name": "The Hobbit",
    "author": "J.R.R. Tolkien",
    "category": "Fantasy",
    "image": "https://firebasestorage.googleapis.com/v0/b/apt-rite-346310.appspot.com/o/book%2Fthe_hobbit.jpeg?alt=media&token=cc3a0c6a-11b8-42cd-8df6-02cd7cab86f0",
    "rating": 4.2,
    "duration" : "11h 7m",
    "pages" : "300"
  },
  {
    "name": "Gone Girl",
    "author": "Gillian Flynn",
    "category": "Thriller",
    "image": "https://firebasestorage.googleapis.com/v0/b/apt-rite-346310.appspot.com/o/book%2Fgone_girl.jpeg?alt=media&token=c0ea6cd1-ff4b-41fe-b237-93c47afcdc1b",
    "rating": 4.0,
    "duration" : "10h 7m",
    "pages" : "400"
  },
  {
    "name": "The Girl on the Train",
    "author": "Paula Hawkins",
    "category": "Mystery",
    "image": "https://firebasestorage.googleapis.com/v0/b/apt-rite-346310.appspot.com/o/book%2Fthe_girl_on_the_train.jpeg?alt=media&token=20a0a164-85ec-4156-9fbf-8065a8cf479b",
    "rating": 3.9,
    "duration" : "9h 7m",
    "pages" : "300"
  },
  {
    "name": "Brave New World",
    "author": "Aldous Huxley",
    "category": "Thriller",
    "image": "https://firebasestorage.googleapis.com/v0/b/apt-rite-346310.appspot.com/o/book%2Fbrave_new_world.jpeg?alt=media&token=d51ee31a-6908-4b05-acba-1475dc58651b",
    "rating": 4.0,
    "duration" : "10h 7m",
    "pages" : "400"
  }
];
