package dao.models;

public class Product {
    public static final String FIELDS = "clave,descripcion,precio,clasificacion,existencia,existencia_min,existencia_max";
    public static final String TABLE = "producto";
    public static final String HOLDER = "%s";
    public static final String Q_ALL = String.format("SELECT %s FROM %s",FIELDS, TABLE);
    public static final String F_EX_MORE_THAN = String.format("%s WHERE existencia > ", Q_ALL);
    public static final String F_EX_LESS_THAN = String.format("%s WHERE existencia < ", Q_ALL);
    public static final String F_SAME_CLASS = String.format("%s WHERE clasificacion = ", Q_ALL);
    public static final String Q_COUNT_1 = String.format("SELECT COUNT(clave),");
    public static final String Q_COUNT_2 = String.format("from %s group by",TABLE);

    /**
     * Las siguientes variables son para uso independiente pero complementario a las anteriores y solo se podran
     * usar despues de AND o OR,dichos operadores se usaran dentro de la implementacion
     */
    public static final String S_PRICE_MORE_THAN = String.format("precio > ");
    public static final String S_PRICE_LESS_THAN = String.format("precio < ");


    /**
     * A continuacion se Listaran las variables usadas para crear un registro
     */
    public static final String FIELDS_FOR_CREATE = "descripcion,precio,clasificacion,existencia,existencia_min,existencia_max";
    public static final String INSERT = String.format("INSERT INTO %s (%s) VALUES ",TABLE,FIELDS_FOR_CREATE);


    private Long clave;
    private String descripcion;
    private Double precio;
    private String clasificacion;
    private Integer existencia;
    private Integer existencia_min;
    private Integer existencia_max;

    public Product(){

    }

    public Product(Long clave, String descripcion,Double precio,String clasificacion,Integer existencia, Integer existencia_min, Integer existencia_max){
        this.setClave(clave);
        this.setDescripcion(descripcion);
        this.setPrecio(precio);
        this.setClasificacion(clasificacion);
        this.setExistencia(existencia);
        this.setExistencia_max(existencia_max);
        this.setExistencia_min(existencia_min);
    }

    public Long getClave() {
        return clave;
    }

    public void setClave(Long clave) {
        this.clave = clave;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Double getPrecio() {
        return precio;
    }

    public void setPrecio(Double precio) {
        this.precio = precio;
    }

    public String getClasificacion() {
        return clasificacion;
    }

    public void setClasificacion(String clasificacion) {
        this.clasificacion = clasificacion;
    }

    public Integer getExistencia() {
        return existencia;
    }

    public void setExistencia(Integer existencia) {
        this.existencia = existencia;
    }

    public Integer getExistencia_min() {
        return existencia_min;
    }

    public void setExistencia_min(Integer existencia_min) {
        this.existencia_min = existencia_min;
    }

    public Integer getExistencia_max() {
        return existencia_max;
    }

    public void setExistencia_max(Integer existencia_max) {
        this.existencia_max = existencia_max;
    }

    @Override
    public String toString() {
        return String.format("Clave : %s \t Descripcion: %s \t Precio: %s \t Clasificacion: %s \t Existencia: %s \t Existencia min.: %s \t Existencia max.: %s", this.getClave(), this.getDescripcion(),
                this.getPrecio(),this.getClasificacion(),this.getExistencia(),this.getExistencia_min(),this.getExistencia_max());
    }
}

