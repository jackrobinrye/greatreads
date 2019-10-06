@jack = User.create(name: "Jack", email: "jack@gmail.com", password: "bros4life")
@sarah = User.create(name: "Sarah", email: "sass@bro.com", password: "i<3sissy")


# t.string  "title"
# t.string  "author"
# t.string  "genre"
# t.boolean "read",    default: false
# t.integer "user_id"
Book.create(title: "Fellowship of the Ring", author: "J R R Tolkein", genre: "fantasy", read: true, user_id: @jack.id)
Book.create(title: "Twin Towers", author: "J R R Tolkein", genre: "fantasy", read: false, user_id: @jack.id)
Book.create(title: "Return of the King", author: "J R R Tolkein", genre: "fantasy", read: false, user_id: @jack.id)

Book.create(title: "Harry Potter and the Sorcerer's Stone", author: "JK Rowling", genre: "fantasy", read: true, user_id: @sarah.id)
Book.create(title: "Uglies", author: "Scott Westerfeld", genre: "scifi", read: false, user_id: @sarah.id)


