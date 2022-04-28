package confet;

import java.util.ArrayList;

public class Confeitaria{
    private String confeiteiro;
    private ArrayList<String> cardapio;
    private ArrayList<String> utensilios;
    private String clientela;
    private Bolo bolo;
    
    public Confeitaria(String confeiteiro, String clientela, Bolo bolo){
        this.confeiteiro = confeiteiro;
        this.clientela = clientela;
        this.bolo = bolo;
    }
    
    public boolean vender(double valor){
        return true;
    }
    
    public boolean armazenar(String produto, int quantidade){
        return true;
    }
}
----------------------------------------------------------------------------------
package confet;

public class Bolo{
    private String recheio;
    private String massa;
    private String cobertura;
    private boolean decoracao;
    
    public Bolo(String recheio, String massa, String cobertura, boolean decoracao){
    this.recheio = recheio;
    this.massa = massa;
    this.cobertura = cobertura;
    this.decoracao = decoracao;
    }
}
-----------------------------------------------------------------------------------
package comp;

public class Main {
    public static void main(String[] args) {
        Computador c = new Computador("Rogério", "16G", "i5");
    //String placaMae, String memoriaRam, String processador
    }
    
}
