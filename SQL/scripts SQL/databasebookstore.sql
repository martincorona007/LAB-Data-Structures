libros(
	id_libro INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	nombre_libro TEXT(50) NOT NULL,
	editorial TEXT(50) NOT NULL,
	ejemplares_libro INT NOT NULL,
	Autor TEXT(50) NOT NULL,precio INT NOT NULL
);
venta(
	id_venta INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	id_libro INT NOT NULL,
	fecha_venta TEXT(10) NOT NULL,
	precio INT NOT NULL
);
libros_vendidos(
	id_librovendido INT PRIMARY KEY NOT NULL,
	 nombre_libro TEXT(50) NOT NULL, 
	 editorial TEXT(50) NOT NULL,
	 Autor TEXT(50) NOT NULL,
	 precio INT NOT NULL
);
administrador(
	id int auto_increment Primary key,
	nombre varchar(30) NOT NULL,
	password varchar(30) NOT NULL
); 
