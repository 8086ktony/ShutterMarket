package model;

import java.math.BigDecimal;
import java.time.LocalDateTime;

public class Prodotto {

    private int idProdotto;
    private int idBrand;
    private int idCategoria;
    private String nome;
    private String descrizione;
    private BigDecimal prezzo;
    private int quantitaMagazzino;
    private LocalDateTime dataInserimento;

    // getter e setter per ogni campo
    public int getIdProdotto() { return idProdotto; }
    public void setIdProdotto(int idProdotto) { this.idProdotto = idProdotto; }

    public String getNome() { return nome; }
    public void setNome(String nome) { this.nome = nome; }

    public BigDecimal getPrezzo() { return prezzo; }
    public void setPrezzo(BigDecimal prezzo) { this.prezzo = prezzo; }

    public int getQuantitaMagazzino() { return quantitaMagazzino; }
    public void setQuantitaMagazzino(int q) { this.quantitaMagazzino = q; }

    // ... aggiungi gli altri campi allo stesso modo
}