function encabezado(nameSection,nameSubSection){
    let section = document.getElementById("section");
    section.textContent= nameSection;
    let subsection = document.getElementById("subSection");
    subsection.textContent= nameSubSection;

}

// ------ Pantallas Producto
function showAgregarProducto(){
      encabezado("Gestor de Productos","Agregar Producto");
      
    // seguir codigo
}
function showQuitarProducto(){
    encabezado("Gestor de Productos","Quitar Producto");
    
    // seguir codigo

}
function showActualizarProducto(){
    encabezado("Gestor de Productos","Actualizar Producto");
    
    // seguir codigo

}
function showListarProducto(){
    encabezado("Gestor de Productos"," Lista Productos");

    // seguir codigo

}

//----- Pantallas Gestor Categorioa

function showNuevaCategoria(){
    encabezado("Gestor de Categoria","Agregar Categoria");
    
  // seguir codigo
}

//---------Pantalla Gestor Stock
function showActualizarStock(){
  encabezado("Gestor de Stock","Actualizar Stock");
  
  // seguir codigo

}
function showListarStock(){
  encabezado("Gestor de Stock"," Lista Stock");

  // seguir codigo

}

//-------- Pantalla Gestor de provedores
function showAgregarProvedor(){
    encabezado("Gestor de Provedores","Agregar Provedor");
    
  // seguir codigo
}

function showConsultarProvedor(){
  encabezado("Gestor de Provedor","Lista Provedor");

  // seguir codigo

}

//----- Pantalla gestor de compras

function showAgregarCompra(item){
    encabezado("Gestor de Compras","Agregar Compra");
    
  // seguir codigo
}

function showConsultarCompra(){
  encabezado("Gestor de Compras","Consultar Compra");

  // seguir codigo

}

//--------- Pantalla de Gestionar usuario

function gestionarUsuario(){
    encabezado("Gestor de Usuario","Agregar Usuario");
}