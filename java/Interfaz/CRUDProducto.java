package Interfaz;

import Modelo.Producto;
import java.util.List;

public interface CRUDProducto {
    List<Producto> findAllProducto();
    Producto findProductoById(int idProducto);
    int save(Producto producto);
    int update(Producto producto);
    int deleteById(int idProducto);
    public List<Producto> findProductosByCategoria(int idCategoria);
}
