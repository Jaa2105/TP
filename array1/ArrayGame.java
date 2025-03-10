package array;
import java.util.Scanner;
import java.util.Random;

public class ArrayGame {
    static int SIZE = 5;
    static char[][] grid = new char[SIZE][SIZE];
    static int playerX = 0, playerY = 0;
    static int goalX, goalY;

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        Random random = new Random();

        // Inicializar la cuadrícula
        for (int i = 0; i < SIZE; i++) {
            for (int j = 0; j < SIZE; j++) {
                grid[i][j] = '.';
            }
        }

        // Colocar el objetivo en una posición aleatoria
        goalX = random.nextInt(SIZE);
        goalY = random.nextInt(SIZE);
        grid[goalX][goalY] = 'G';
        grid[playerX][playerY] = 'P';

        while (true) {
            printGrid();
            System.out.print("Move (WASD): ");
            char move = scanner.next().charAt(0);

            // Mover al jugador
            grid[playerX][playerY] = '.';
            switch (Character.toUpperCase(move)) {
                case 'W': if (playerX > 0) playerX--; break;
                case 'S': if (playerX < SIZE - 1) playerX++; break;
                case 'A': if (playerY > 0) playerY--; break;
                case 'D': if (playerY < SIZE - 1) playerY++; break;
                default: System.out.println("Invalid move");
            }
            
            // Verificar si el jugador ha llegado al objetivo
            if (playerX == goalX && playerY == goalY) {
                printGrid();
                System.out.println("¡Has ganado!");
                break;
            }
            
            grid[playerX][playerY] = 'P';
        }
        scanner.close();
    }

    static void printGrid() {
        for (int i = 0; i < SIZE; i++) {
            for (int j = 0; j < SIZE; j++) {
                System.out.print(grid[i][j] + " ");
            }
            System.out.println();
        }
    }
}
