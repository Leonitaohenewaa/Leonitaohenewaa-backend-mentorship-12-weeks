from flask import Flask, jsonify, request

app = Flask(__name__)

books = [
    {
        "id": 1,
        "title": "Things Fall Apart",
        "author": "Chinua Achebe"
    },
    {
        "id": 2,
        "title": "Homegoing",
        "author": "Yaa Gyasi"
    }
]


@app.get("/")
def home():
    return jsonify({
        "message": "Welcome to the Books API"
    })


@app.get("/books")
def get_books():
    return jsonify(books)


@app.get("/books/<int:book_id>")
def get_book(book_id):
    for book in books:
        if book["id"] == book_id:
            return jsonify(book)

    return jsonify({
        "error": "Book not found"
    }), 404


@app.post("/books")
def create_book():
    data = request.get_json()

    new_book = {
        "id": len(books) + 1,
        "title": data["title"],
        "author": data["author"]
    }

    books.append(new_book)

    return jsonify(new_book), 201


if __name__ == "__main__":
    app.run(debug=True)
