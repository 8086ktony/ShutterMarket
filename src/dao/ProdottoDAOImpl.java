package dao;

import model.Prodotto;
import java.sql.*;
import java.util.*;

public class ProdottoDAOImpl implements ProdottoDAO {

    @Override
    public List<Prodotto> getAll() {
        List<Prodotto> lista = new ArrayList<>();
        String sql = "SELECT * FROM PRODOTTO WHERE eliminato = 0";

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                lista.add(mapRow(rs));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return lista;
    }

    @Override
    public Prodotto getById(int id) {
        String sql = "SELECT * FROM PRODOTTO WHERE id_prodotto = ? AND eliminato = 0";

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, id);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) return mapRow(rs);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    // Mappa una riga del ResultSet in un oggetto Prodotto
    private Prodotto mapRow(ResultSet rs) throws SQLException {
        Prodotto p = new Prodotto();
        p.setIdProdotto(rs.getInt("id_prodotto"));
        p.setNome(rs.getString("nome"));
        p.setPrezzo(rs.getBigDecimal("prezzo"));
        p.setQuantitaMagazzino(rs.getInt("quantita_magazzino"));
        // ... mappa gli altri campi
        return p;
    }
    
    @Override
    public List<Prodotto> getByCategoria(int idCategoria) {
        // TODO
        return new ArrayList<>();
    }

    @Override
    public void insert(Prodotto p) {
        // TODO
    }

    @Override
    public void update(Prodotto p) {
        // TODO
    }

    @Override
    public void delete(int id) {
        // TODO
    }
}