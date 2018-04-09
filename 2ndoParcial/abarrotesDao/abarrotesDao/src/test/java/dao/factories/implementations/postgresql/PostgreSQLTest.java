package dao.factories.implementations.postgresql;

import dao.factories.implementation.PostgreSQL;
import dao.factories.interphase.ProductDao;
import dao.models.Product;
import org.junit.Assert;
import org.junit.Test;

import java.util.List;

public class PostgreSQLTest {

    /**
     * Se puede usar con cualquier numero,por default se estableció 20 por que es el pedido en la tarea
     */
    @Test
    public void existenciaMoreThanTest(){
        ProductDao productDao = new PostgreSQL();
        List<Product> products = productDao.moreThan(20);
        Assert.assertNotNull(products);
        for (Product product : products){
            System.out.println(product);
            Assert.assertNotNull(product);
            System.out.println("----------------------------------------------------------------------------------------------------------------------------------------------------------------------");
        }

    }
    /**
     * Se puede usar con cualquier numero,por default se estableció 15 por que es el pedido en la tarea
     */
    @Test
    public void existenciaLessThanTest(){
        ProductDao productDao = new PostgreSQL();
        List<Product> products = productDao.lessThan(15);
        Assert.assertNotNull(products);
        for (Product product : products){
            System.out.println(product);
            Assert.assertNotNull(product);
            System.out.println("----------------------------------------------------------------------------------------------------------------------------------------------------------------------");
        }

    }
    /**
     * Se puede usar con cualquier clasificacion disponible y numero,por default se estableció 15.50 por que es el pedido en la tarea
     */
    @Test
    public void sameClassMorePriceTest(){
        ProductDao productDao = new PostgreSQL();
        List<Product> products = productDao.sameClassMorePrice("Refresco",15.50);
        Assert.assertNotNull(products);
        for (Product product : products){
            System.out.println(product);
            Assert.assertNotNull(product);
            System.out.println("----------------------------------------------------------------------------------------------------------------------------------------------------------------------");
        }

    }

    @Test
    public void betweenTest(){
        ProductDao productDao = new PostgreSQL();
        List<Product> products = productDao.priceBetween("clave",30d, 40d);
        Assert.assertNotNull(products);
        for (Product product : products){
            System.out.println(product);
            Assert.assertNotNull(product);
            System.out.println("----------------------------------------------------------------------------------------------------------------------------------------------------------------------");
        }

    }

    @Test
    public void groupByTest(){
        ProductDao productDao = new PostgreSQL();
        List<Product> products = productDao.groupBy("clasificacion");
        Assert.assertNotNull(products);
        for (Product product : products){
            System.out.println("Cantidad de Productos\t\tClasificacion\n");
            System.out.println(String.format("%d\t\t\t\t\t\t\t%s",product.getClave(),product.getClasificacion()));
            System.out.println("---------------------------------------");


        }

    }
    /**
     * Prueba usada para la creeacion de 80 datos iguales
     */
    /*@Test
    public void createTes(){
        ProductDao productDao = new PostgreSQL();
        Product newData = new Product();
        newData.setDescripcion("Nuevo Objeto");
        newData.setPrecio(40d);
        newData.setClasificacion("IntroducidoCreate");
        newData.setExistencia(20);
        newData.setExistencia_min(15);
        newData.setExistencia_max(25);
        for (int i = 0; i <=79;i++){
            productDao.create(newData);
        }
    }*/

    /**
     * Prueba usada para la insercion de datos 'reales'
     */
    @Test
    public void createTes(){
        ProductDao productDao = new PostgreSQL();
        Product newData = new Product();
        newData.setDescripcion("Piña en Almibar");
        newData.setPrecio(14d);
        newData.setClasificacion("Enlatados");
        newData.setExistencia(30);
        newData.setExistencia_min(35);
        newData.setExistencia_max(40);
        productDao.create(newData);
    }
}
