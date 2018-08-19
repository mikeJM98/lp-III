create database sofware;
  use sofware;

  create table roles(
    idRol tinyint auto_increment not null primary key,
    rol tinytext
  );

  create table tipoUsuarios(
    idTipoUsuario tinyint auto_increment not null primary key,
    tipoUsuario tinytext
  );

  create table usuarios(
    dni varchar(8) not null primary key,
    nombre tinytext,
    apellidos tinytext,
    edad tinyint,
    telefono tinyint,
    direccion varchar(50),
    correo varchar(30)
  );

  create table tipo_clientes(
    idTipoCliente tinyint auto_increment not null primary key,
    tipoCliente tinytext
  );

  create table clientes(
    dni varchar(8) not null primary key,
    nombre tinytext,
    apellidos tinytext,
    edad tinyint,
    telefono tinyint
  );

  create table marcas(
    idMarca tinyint auto_increment not null primary key,
    marca tinytext
  );

  create table productos(
    idProducto tinyint auto_increment not null primary key,
    producto tinytext,
    precioCompra tinyint,
    precioVenta tinyint,
    descripcion varchar(100)
  );

  create table servicios(
    idServicios tinyint auto_increment not null primary key,
    servicios tinytext,
    descripcion varchar(100)
  );

  create table tipo_comprobante(
    idTipoComprobante tinyint auto_increment not null primary key,
    tipoComprobante tinytext
  );

  create table ventas(
    idVentas tinyint auto_increment not null primary key,
    fecha date,
    descripcion varchar(100)
  );

  create table detalle_ventas(
    idVentas tinyint,
    idProducto tinyint,
    cantidad tinyint
  );

  create table proveedor(
    ruc tinyint(12) not null primary key,
    nombre tinytext,
    apellido tinytext,
    direccion varchar(50),
    telefono tinyint(9),
    correo varchar(50)
  );

  create table compras(
    idCompras tinyint auto_increment not null primary key,
    fecha date,
    decripcion varchar(100)
  );

  create table productos_comprar(
    idCompras tinyint,
    idProducto tinyint,
    cantidad tinyint
  );

  create table tecnico_automotris(
    dni tinyint(8) not null primary key,
    nombre tinytext,
    apellido tinytext,
    telefono tinyint(8),
    direccion varchar(50)
  );

  create table vehiculo(
    idVehiculo tinyint auto_increment not null primary key,
    vehiculo varchar(20),
    color tinytext,
    marca tinytext
  );

  create table internamientos(
    idVehiculo tinyint,
    caracteristicas varchar(100),
    descripcion varchar(100)
  );
