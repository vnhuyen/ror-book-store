# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Book.create([
  {
    title: "Eloquent JavaScript, Third Edition",
    author: "Marijn Haverbeke",
    description: "JavaScript lies at the heart of almost every modern web application, from social apps like Twitter to browser-based game frameworks like Phaser and Babylon. Though simple for beginners to pick up and play with, JavaScript is a flexible, complex language that you can use to build full-scale applications.",
    price: 10.5,
  },
  {
    title: "Practical Modern JavaScript",
    author: "Nicolás Bevacqua",
    description: "To get the most out of modern JavaScript, you need learn the latest features of its parent specification, ECMAScript 6 (ES6). This book provides a highly practical look at ES6, without getting lost in the specification or its implementation details.",
    price: 15,
  },
  {
    title: "Speaking JavaScript",
    author: "Axel Rauschmayer",
    description: "Like it or not, JavaScript is everywhere these days -from browser to server to mobile- and now you, too, need to learn the language or dive deeper than you have. This concise book guides you into and through JavaScript, written by a veteran programmer who once found himself in the same position.",
    price: 25,
  },
  {
    title: "Speaking JavaScript",
    author: "Axel Rauschmayer",
    description: "Like it or not, JavaScript is everywhere these days -from browser to server to mobile- and now you, too, need to learn the language or dive deeper than you have. This concise book guides you into and through JavaScript, written by a veteran programmer who once found himself in the same position.",
    price: 15,
  },
  {
    title: "Learning JavaScript Design Patterns",
    author: "Addy Osmani",
    description: "With Learning JavaScript Design Patterns, you'll learn how to write beautiful, structured, and maintainable",
    price: 18.2,
  },
  {
    title: "Pro Git",
    author: "Scott Chacon and Ben Straub",
    description: "Pro Git (Second Edition) is your fully-updated guide to Git and its usage in the modern world.",
    price: 14,
  },
  {
    title: "Rethinking Productivity in Software Engineering",
    author: "Caitlin Sadowski, Thomas Zimmermann",
    description: "Get the most out of this foundational reference and improve the productivity of your software teams.",
    price: 19,
  },
])