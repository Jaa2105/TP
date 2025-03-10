package tamagochi; 
import java.util.Scanner; //El Scanner en Java se usa para leer la entrada del usuario desde la consola.

// Clase Main para ejecutar el juego
public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Introduce el nombre de tu Pokémon: ");
        String nombre = scanner.nextLine();
        Tamagochi pokemon = new Tamagochi(nombre);
        
        String opcion;
        do {  //El do en do-while se usa para ejecutar un bloque de código al menos una vez, antes de verificar la condición del bucle.
            System.out.println("\nEstado de " + pokemon.getName() + ":");
            System.out.println("Energía: " + pokemon.getEnergy());
            System.out.println("Vida: " + pokemon.getLife());
            System.out.println("Felicidad: " + pokemon.getHappiness());
            
            System.out.println("\n¿Qué quieres hacer?");
            System.out.println("1. Entrenar");
            System.out.println("2. Comer");
            System.out.println("3. Descansar");
            System.out.println("4. Jugar");
            System.out.println("5. Recibir daño");
            System.out.println("6. Salir");
            
            opcion = scanner.nextLine(); //Cada vez que necesitas capturar un dato del usuario, usas scanner.nextLine();.
            
            switch (opcion) {
                case "1": pokemon.entrenar(); break;
                case "2": pokemon.comer(); break;
                case "3": pokemon.descansar(); break;
                case "4": pokemon.jugar(); break;
                case "5": pokemon.recibirDano(); break;
                case "6": System.out.println("Saliendo del juego..."); break;
                default: System.out.println("Opción inválida!");
            }
        } while (!opcion.equals("6")); //El bucle sigue ejecutándose hasta que el usuario ingresa "6", asegurando que pueda interactuar con el Pokémon varias veces.
        
        scanner.close(); // Cierra el Scanner después del uso
    }
}


