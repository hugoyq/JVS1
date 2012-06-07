<?php
class Usuarios
{
    public function  __construct() {
        $dbhost = 'localhost';
        $dbuser = 'root';
        $dbpass = '';
        $dbname = 'jvs_tutoriales';

        mysql_connect($dbhost, $dbuser, $dbpass);

        mysql_select_db($dbname);
    }

    public function buscarUsuario($nombreUsuario){
        /*
        $datos = array('Sebastian', 'Sonia', 'Sofia');
         */
        
        
        
        $datos = array();

        $sql = "SELECT * FROM usuarios
                WHERE nombre_usuarios LIKE '%$nombreUsuario%'
                OR apellido_usuarios LIKE '%$nombreUsuario%'";

        $resultado = mysql_query($sql);

        while ($row = mysql_fetch_array($resultado, MYSQL_ASSOC)){
            $datos[] = array("value" => $row['nombre_usuarios'] . ' ' .
                                        $row['apellido_usuarios'],
                             "descripcion" => $row['descripcion_usuarios'],
                             "foto" => $row['foto_usuarios']);
        }
        
        return $datos;
    }
}
