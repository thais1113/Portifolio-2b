package comp;

public class Computador {
    private String placaMae;
  private String memoriaRam;
  private String processador;
  private Monitor m;

  public Computador(String placaMae, String memoriaRam, String processador){
    this.placaMae = placaMae;
    this.processador = processador;
    this.memoriaRam = memoriaRam;
  }

  public boolean ligar (boolean botao){
    return true;
  }

  public void adquirirMonitor(String modelo){
    m = new Monitor("Lenovo", "144W", "1080p", modelo, "220V");
  }

  public boolean desligar(boolean d){
    return false;
  }
}
---------------------------------------------------------------------------------

package comp;

public class Monitor {
   private String marca;
  private String potencia;
  private String resolucao;
  private String modelo;
  private String tensao;

  public Monitor(String marca, String potencia, String resolucao, String modelo, String tensao){
    this.marca = marca;
    this.potencia = potencia;
    this.resolucao = resolucao;
    this.modelo = modelo;
    this.tensao = tensao;
  }

    public boolean ligar (boolean botao){
    return true;
  }
    public boolean desligar(boolean d){
    return false;
  } 
}
