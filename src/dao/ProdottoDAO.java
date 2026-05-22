package dao;

import model.Prodotto;
import java.util.List;

public interface ProdottoDAO {
    List<Prodotto> getAll();
    Prodotto getById(int id);
    List<Prodotto> getByCategoria(int idCategoria);
    void insert(Prodotto p);
    void update(Prodotto p);
    void delete(int id);  // soft delete: mette eliminato=1
}