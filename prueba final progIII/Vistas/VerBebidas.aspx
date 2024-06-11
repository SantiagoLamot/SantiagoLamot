<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Startap Brewing Co.</title>
    <link rel="stylesheet" href="estilos.css">
</head>
<body>
    <div>
        <header>
            <svg></svg>
            <div>
                <h1>Startap Brewing Co.</h1>
                <p>Página de bebidas</p>
            </div>
            <svg></svg>
        </header>
        <nav>
            <div>
                <svg></svg>
                <svg></svg>
            </div>
        </nav>
        <main>
            <div class="grid">
                <!-- Contenido de tarjetas aquí -->
                <div class="card">
                    <img src="/placeholder.svg" alt="Imagen de producto">
                    <div>
                        <h2>Nombre del Producto</h2>
                        <p>Precio: $10.00</p>
                        <p>Stock: 20</p>
                        <div>
                            <label>Cantidad:</label>
                            <input type="number" id="cantidad1">
                        </div>
                        <button>Agregar al carrito</button>
                    </div>
                    <!-- Contenido de tarjetas aquí -->
                <div class="card">
                    <img src="/placeholder.svg" alt="Imagen de producto">
                    <div>
                        <h2>Nombre del Producto2</h2>
                        <p>Precio: $10.00</p>
                        <p>Stock: 20</p>
                        <div>
                            <label>Cantidad:</label>
                            <input type="number" id="cantidad1">
                        </div>
                        <button>Agregar al carrito</button>
                    </div>

                </div>
                <!-- Más tarjetas pueden ir aquí -->
            </div>
            <div class="mt-4 text-center">
                <p>Usted Agregó "Producto" al carrito. Error al agregar al carrito.</p>
            </div>
        </main>
        <aside></aside>
    </div>
</body>
</html>