<?php
Load::models(
  "user","general","banner","servicios","empresa","sucursales",
  "categorias","promociones","requisitos", "solicitudes");

class PrestamosController extends AppController
{

    public function solicitud($id)
    {
    	View::template("solicitud");
      $this->servicio = Load::model("servicios")->find_by_id($id);
    	$this->sucursales = Load::model("sucursales")->find();
      // if(Input::post("g-recaptcha-response")){
      //$fields = array(
      // 'secret' => 'mikey',
      // 'response' => Input::post("g-recaptcha-response"),
      // 'remoteip' => $_SERVER['REMOTE_ADDR']
      // );
      // $response = http_post_fields("https://www.google.com/recaptcha/api/siteverify", $fields)
      // $response = json_decode($response, true)
      // if($response['success'] == true){
      //  }
      // }
      if (Input::haspost("solicitudes")){
        $solicitudes = new Solicitudes(Input::post("solicitudes"));
        if($solicitudes->save()){
          $headers = sprintf("From: %s<%s>\r\nReply-To: s%\r\nX-Mailer: PHP/%s",
            $_POST["solicitudes"]['nombre'].' '.$_POST["solicitudes"]['apellido'],
            $_POST["solicitudes"]['correo'],
            $_POST["solicitudes"]['correo'],
            phpversion()
          );
          $message = sprintf(
            "
            Tipo de solicitud: %s \n
            Nombre: %s \n
            Fecha de nacimiento: %s \n
            Provincia: %s \n
            Letra: %s \n
            Folio: %s \n
            Asiento: %s \n
            Sexo: %s \n
            Teléfono Residencial: %s \n
            Tlf. Oficina: %s \n
            Celular: %s \n
            Email: %s \n
            Email secundario: %s \n
            Direccion: %s \n\n
            Laboral: %s \n
            Ocupacion: %s \n
            Salario: %s \n
            Lugar de trabajo: %s \n
            Tiempo en empleo actual: %s \n
            Monto deseado: %s \n
            Sucursal mas cercana: %s \n
            Comentario: %s",
            $this->servicio->nombre,
            $_POST["solicitudes"]['nombre'].' '.$_POST["solicitudes"]['apellido'],
            $_POST["solicitudes"]['fecha_nac'],
            $_POST["solicitudes"]['provincia'],
            $_POST["solicitudes"]['letra'],
            $_POST["solicitudes"]['folio'],
            $_POST["solicitudes"]['asiento'],
            $_POST["solicitudes"]['sexo'],
            $_POST["solicitudes"]['telefono_residencia'],
            $_POST["solicitudes"]['telefono_oficina'],
            $_POST["solicitudes"]['celular'],
            $_POST["solicitudes"]['correo'],
            $_POST["solicitudes"]['correo2'],
            $_POST["solicitudes"]['direccion'],
            $_POST["solicitudes"]['laboral'],
            $_POST["solicitudes"]['ocupacion'],
            $_POST["solicitudes"]['salario'],
            $_POST["solicitudes"]['lugar_trabajo'],
            $_POST["solicitudes"]['tiempo_servicio_anos'].' años y '.$_POST["solicitudes"]['tiempo_servicio_meses'].' meses',
            $_POST["solicitudes"]['monto_deseado'],
            $_POST["solicitudes"]['sucursal'],
            $_POST["solicitudes"]['comentario']
          );
          $success = mail("mercadeofp@fpacifico.com", "Solicitud de Prestamo", $message, $headers );
          Flash::valid("Registro exitoso!");
        }else{
          Flash::error("Error al registrar la solicitud");
        }
      }
    }
}
