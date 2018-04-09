package dao.factories.implementation;

import dao.conections.ConexionDao;
import dao.factories.interphase.ProductDao;
import dao.models.Product;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class PostgreSQL implements ProductDao{
    @Override
    public List<Product> moreThan(Integer criteria) {

        List<Product> productos = new ArrayList<>();
        try {
            ConexionDao conexion = ConexionDao.getInstance();
            Statement st = conexion.getConn().createStatement();
            ResultSet rs = st.executeQuery(String.format("%s %d",Product.F_EX_MORE_THAN, criteria));
            while(rs.next()){
                productos.add(makeProduct(rs));
            }
        }catch (ClassNotFoundException | SQLException ex){

        }

        return productos;

    }

    @Override
    public List<Product> lessThan(Integer criteria) {

        List<Product> productos = new ArrayList<>();
        try {
            ConexionDao conexion = ConexionDao.getInstance();
            Statement st = conexion.getConn().createStatement();
            ResultSet rs = st.executeQuery(String.format("%s %d",Product.F_EX_LESS_THAN, criteria));
            while(rs.next()){
                productos.add(makeProduct(rs));
            }
        }catch (ClassNotFoundException | SQLException ex){

        }

        return productos;

    }

    @Override
    public List<Product> sameClassMorePrice(String criteria1, Double criteria2) {
        List<Product> productos = new ArrayList<>();
        try {
            ConexionDao conexion = ConexionDao.getInstance();
            Statement st = conexion.getConn().createStatement();
            ResultSet rs =  st.executeQuery(String.format("%s '%s' AND %s %f ",Product.F_SAME_CLASS,criteria1,Product.S_PRICE_MORE_THAN, criteria2));
            while(rs.next()){
                productos.add(makeProduct(rs));
            }
        }
        catch (ClassNotFoundException | SQLException ex){

        }
        return productos;
    }

    @Override
    public List<Product> priceBetween(String field,Double criteria1, Double criteria2){
        List<Product> productos = new ArrayList<>();
        try {
            ConexionDao conexion = ConexionDao.getInstance();
            Statement st = conexion.getConn().createStatement();
            ResultSet rs =  st.executeQuery(String.format("%s WHERE %s BETWEEN %f AND %f ",Product.Q_ALL,field,criteria1, criteria2));
            while(rs.next()){
                productos.add(makeProduct(rs));
            }
        }
        catch (ClassNotFoundException | SQLException ex){

        }
        return productos;
    }

    @Override
    public List<Product> groupBy(String criteria){
        List<Product> productos = new ArrayList<>();
        try {
            ConexionDao conexion = ConexionDao.getInstance();
            Statement st = conexion.getConn().createStatement();
            ResultSet rs =  st.executeQuery(String.format("%s%s %s %s",Product.Q_COUNT_1,criteria,Product.Q_COUNT_2,criteria));
            while(rs.next()){
                productos.add(makeGroup(rs));
            }
        }
        catch (ClassNotFoundException | SQLException ex){

        }
        return productos;
    }


    @Override
    public void create(Product obj){
        try {
            ConexionDao conexion = ConexionDao.getInstance();
            Statement st = conexion.getConn().createStatement();
            st.executeQuery(String.format("%s ('%s','%.2f','%s','%d','%d','%d')",Product.INSERT,obj.getDescripcion(),obj.getPrecio(),obj.getClasificacion(),obj.getExistencia(),obj.getExistencia_max(),obj.getExistencia_min()));
        }
        catch (ClassNotFoundException | SQLException ex){

        }
    }

    private Product makeProduct(ResultSet rs) throws SQLException {
        Product product = new Product();
        Integer i = 1;
        product.setClave(rs.getLong(i++));
        product.setDescripcion(rs.getString(i++));
        product.setPrecio(rs.getDouble(i++));
        product.setClasificacion(rs.getString(i++));
        product.setExistencia(rs.getInt(i++));
        product.setExistencia_min(rs.getInt(i++));
        product.setExistencia_max(rs.getInt(i++));
        return product;
    }

    /**
     *Dado que para realizar un producto se necesitan los 7 datos, a clave se le asigna el resultado de conteo por
     * grupo de clasificacion, a clasificacion se le asigna la respectiva clasificacion, y a los demas se les añaden datos
     * arbitrarios que igual no serán mostrados al imprimir
     */

    private Product makeGroup(ResultSet rs) throws SQLException {
        Product product = new Product();
        Integer i = 1;
        product.setClave(rs.getLong(i++));
        product.setDescripcion("arbitrario");
        product.setPrecio(40d);
        product.setClasificacion(rs.getString(i++));
        product.setExistencia(50);
        product.setExistencia_min(50);
        product.setExistencia_max(50);
        return product;
    }
}
