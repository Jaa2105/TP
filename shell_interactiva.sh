#!/bin/bash

temp_dir="$HOME/.interactive_shell"
mkdir -p "$temp_dir"

echo "\n🚀 Bienvenido a la Shell Interactiva 🚀\n"

# Función para instalar archivos de prueba
install() {
    temp_dir="${temp_dir:-/tmp}"  # Definir temp_dir si no está definido
    install_path="$temp_dir"

    mkdir -p "$install_path" || { echo "Error: No se pudo crear $install_path"; exit 1; }
    touch "$install_path/consejosmejorarbienestar.html" || { echo "Error: No se pudo crear consejosmejorarbienestar.html"; exit 1; }
	echo "<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
div.scrollmenu {
  background-color: #333;
  overflow: auto;
  white-space: nowrap;
}

div.scrollmenu a {
  display: inline-block;
  color: white;
  text-align: center;
  padding: 14px;
  text-decoration: none;
}

div.scrollmenu a:hover {
  background-color: #777;
}

body {
  background-color: #fff9c4; /* Amarillo claro */
}
</style>
</head>
<body>
<div class="scrollmenu">
  <a href="#home">Home</a>
  <a href="#news">News</a>
  <a href="#contact">Contact</a>
  <a href="#about">About</a>
  <a href="#support">Support</a>
  <a href="#blog">Blog</a>
  <a href="#tools">Tools</a>
  <a href="#base">Base</a>
  <a href="#custom">Custom</a>
  <a href="#more">More</a>
  <a href="#logo">Logo</a>
  <a href="#friends">Friends</a>
  <a href="#partners">Partners</a>
  <a href="#people">People</a>
  <a href="#work">Work</a>
</div>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bienestar y Fitness</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
                background-color: #fff9c4; /* Amarillo clarito */
        }
        header {
            background: #4CAF50;
            color: white;
            text-align: center;
            padding: 1em;
        }
        section {
            padding: 20px;
            max-width: 800px;
            margin: auto;
            background: white;
 box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            color: #333;
        }
        footer {
            text-align: center;
            padding: 10px;
            background: #4CAF50;
            color: white;
            margin-top: 20px;
        }
        .image-container {
            text-align: center;
            margin: 20px 0;
        }
        .image-container img {
            max-width: 100%;
            height: auto;
            border-radius: 10px;
        }
    </style>
</head>
<body>
<header>
        <h1>Descanso y Recuperación</h1>
    </header>
    <section>
        <h2>Dormir al menos 7-9 horas diarias</h2>
        <p>El sueño es fundamental para la recuperación muscular y el bienestar mental. Durante el sueño profundo, el cuerpo libera hormonas que favorecen >

        <h2>Practicar la higiene del sueño</h2>
        <p>Para mejorar la calidad del sueño, se recomienda evitar el uso de pantallas al menos una hora antes de dormir, mantener un horario constante y c>

        <h2>Tomar pausas activas durante el día</h2>
	<p>Las pausas activas ayudan a reducir la fatiga y mejorar la concentración. Se recomienda levantarse, estirarse o caminar cada hora si se trabaja >

        <h2>Escuchar a tu cuerpo y evitar el sobreentrenamiento</h2>
        <p>Es importante reconocer las señales de fatiga y permitir que el cuerpo descanse cuando sea necesario. Entrenar sin el descanso adecuado puede ll>    </section>
    <footer>
        <p>&copy; <i>2025 Bienestar y Fitness. Todos los derechos reservados.</i></p>
    </footer>
</body>
</html>
</html>" > "$install_path/consejosmejorarbienestar.html"

    echo -e "Página web creada en: \n$install_path/consejosmejorarbienestar.html"
}


# Función para desinstalar archivos de prueba
uninstall() {
    install_path="$temp_dir"
    file_path="$install_path/consejosmejorarbienestar.html"

    if [ -f "$file_path" ]; then
        rm "$file_path" || { echo "Error: No se pudo eliminar $file_path"; exit 1; }
        echo "Archivo eliminado: $file_path"
    else
        echo "No se encontró el archivo: $file_path"
    fi

    # Intentar eliminar el directorio solo si está vacío
    if [ -d "$install_path" ] && [ -z "$(ls -A "$install_path")" ]; then
        rmdir "$install_path" || { echo "Error: No se pudo eliminar el directorio $install_path"; exit 1; }
        echo "Directorio eliminado: $install_path"
    fi
}



# Función para mostrar fecha y hora
show_time() {
    echo "Fecha y hora actual: $(date)"
}

# Minijuego: Adivina el número


# Función para mostrar un dibujo ASCII
draw_art() {
    echo "
       🚴‍♂️ Salud & Fitness 🚴‍♂️

        O    
       /|\\    
       / \\    
      (   )  
     (_O_O_)  
    "
}

# Abrir ayuda en Lynx
salud_y_bienestar() {
    temp_dir="${temp_dir:-/tmp}" 
    install_path="$temp_dir"
    
    # Usar lynx para mostrar el archivo HTML
    lynx "$install_path/principal.html" || { echo "Error: No se pudo mostrar el archivo HTML con lynx"; exit 1; }
}



# Shell interactiva personalizada

#Ejecutar comandos fuera de la shell

if [[ $# -gt 0 ]]; then
    cmd="$1"
    shift  # Elimina el primer argumento (el comando) y deja el resto como argumentos

    case "$cmd" in
        install) install ;;
        uninstall) uninstall ;;
        time) show_time ;;
        fitness) draw_art ;;
        salud) salud_y_bienestar ;;
        *)
            "$cmd" "$@" 2>/dev/null || echo "Comando desconocido."
            ;;
    esac
    exit  # Termina el script después de ejecutar el comando
fi

# Si no hay argumentos, entra en modo interactivo
echo "Escribe 'exit' para salir."

while true; do
    read -r -a input -p "🖥️ > " 
    cmd="${input[0]}"
    args=("${input[@]:1}")  # Resto de los argumentos

    case "$cmd" in
        install) install ;;
        uninstall) uninstall ;;
        time) show_time ;;
        fitness) draw_art ;;
        salud) salud_y_bienestar ;;
        exit) echo "Saliendo..."; break ;;
        *)
            # Ejecutar cualquier otro comando con sus argumentos correctamente
            "${input[@]}" 2>/dev/null || echo "Comando desconocido."
            ;;
    esac
done
