# Modelo Relacional para una Biblioteca

## Libro(Book)
	book_id(PK) Primary Key / LLave Primaria (Número)
    book_title: Título del libro (Texto)
    book_author_id (FK): Foreign Key /Llave foranea Identificador del autor (Alfanumerico)
    book_publisher_id (FK): Identificador del editor (Alfanumerico)
    book_year_published: Año de publicación (Texto o número según necesidad)
    book_genre: Género del libro.(Texto)

## Autor(Author)
    author_id (PK): Identificador único del autor (Número o alfanumerico)
    author_name: Nombre del autor (Texto)
    author_birthdate: Fecha de nacimiento del autor (Fecha o Texto)

## Editor(Publisher)
    publisher_id (PK): Identificador único del editor (Número o alfanumerico)
    publisher_name: Nombre del editor (Texto)
    publisher_address: Dirección del editor (Texto o alfanumerico )

## Miembro(Member)
    member_id (PK): Identificador único del miembro o usuario (Número o alfanumerico)
    member_name: Nombre del miembro (Texto)
    member_address: Dirección del miembro (Texto o alfanumerico )
    member_phone: Telefono del miembro (Texto o alfanumerico)
    member_email: Dirección de correo del miembro (Texto o alfanumerico )

## Préstamo(Loan)
    loan_id (PK): Identificador único del préstamo (Número o alfanumerico)
    loan_book_id (FK): Número desde la entidad libro
    loan_member_id (FK): Identificador único del miembro o usuario (Número o alfanumerico)
    loan_date:(Fecha o Texto)
    loan_return_date:(Fecha o Texto)


___________________________________________________________________________________
Relaciones
 🧷Un libro puede tener un solo autor, pero un autor puede escribir muchos libros (Relación uno a muchos entre Autor y Libro).

 🧷Un libro puede ser publicado por un solo editor, pero un editor puede publicar muchos libros (Relación uno a muchos entre Editor y Libro).

 🧷Un miembro puede pedir prestados muchos libros, y un libro puede ser prestado a muchos miembros a lo largo del tiempo (Relación muchos a muchos entre Libro y Miembro, implementada mediante la entidad Préstamo).

 ______________________________________________________________________________________
 ## Normalización 1FN, 2FN y 3FN

 Primera Forma Normal (1FN)
•	Todos los atributos contienen valores atómicos.
•	Cada tabla tiene una clave primaria. aplica para modelos o entidades

-------------------------------------
Segunda Forma Normal (2FN)
•	Debemos asegurarnos de que cada atributo no clave sea completamente dependiente de la clave primaria. En nuestro modelo, cada tabla está en 2FN porque:
•	En la tabla Libro, title, author_id, publisher_id, year_published y genre dependen completamente de book_id.
•	En la tabla Autor, name y birthdate dependen completamente de author_id.
•	En la tabla Editor, name y address dependen completamente de publisher_id.
•	En la tabla Miembro, name, address, phone y email dependen completamente de member_id.
•	En la tabla Préstamo, book_id, member_id, loan_date y return_date dependen completamente de loan_id.

-------------------------------------
Tercera Forma Normal (3FN)
•	Aseguramos que no hay dependencias transitivas (un atributo no clave no debe depender de otro atributo no clave).
•	En nuestro modelo:
•	En la tabla Libro, no hay dependencias transitivas. Todos los atributos dependen únicamente de book_id.
•	En la tabla Autor, no hay dependencias transitivas. Todos los atributos dependen únicamente de author_id.
•	En la tabla Editor, no hay dependencias transitivas. Todos los atributos dependen únicamente de publisher_id.
•	En la tabla Miembro, no hay dependencias transitivas. Todos los atributos dependen únicamente de member_id.
•	En la tabla Préstamo, no hay dependencias transitivas. Todos los atributos dependen únicamente de loan_id.





