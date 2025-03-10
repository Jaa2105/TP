package tamagochi;
class Tamagochi {
    private String name;
    private int energy;
    private int life;
    private int happiness;
    
    public Tamagochi(String name) {
        this.name = name;
        this.energy = 100;
        this.life = 100;
        this.happiness = 100;
    }
    
    public String getName() { //Devuelven el valor de un atributo.
        return name;
    }
    
    public void setName(String name) { //Permiten modificar el valor de un atributo, generalmente con validaciones.
        this.name = name;
    }
    
    public int getEnergy() {
        return energy;
    }
    
    public int getLife() {
        return life;
    }
    
    public int getHappiness() {
        return happiness;
    }
    
    public void entrenar() {
        if (energy > 10) {
            energy -= 10;
            happiness += 15;
            System.out.println(name + " ha entrenado y se siente más fuerte!");
        } else {
            System.out.println(name + " está demasiado cansado para entrenar...");
        }
    }
    
    public void recibirDano() {
        life -= 20;
        System.out.println(name + " ha recibido daño y ha perdido vida!");
    }
    
    public void comer() {
        energy += 20;
        System.out.println(name + " ha comido una baya y recuperó energía!");
    }
    
    public void descansar() {
        energy = 100;
        System.out.println(name + " ha descansado y recuperó su energía!");
    }
    
    public void jugar() {
        happiness += 10;
        System.out.println(name + " ha jugado y está más feliz!");
    }
}
