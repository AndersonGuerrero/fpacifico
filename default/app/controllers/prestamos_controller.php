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
        if(Input::post("g-recaptcha-response")){
          if($solicitudes->save()){
            $headers = '';
            $headers = 'MIME-Version: 1.0'.PHP_EOL;
            $headers .= 'Content-type: text/html; charset=utf-8'.PHP_EOL;
            $headers .= 'From: '.$_POST["solicitudes"]['correo'].PHP_EOL;
            $message = sprintf(
              "
              Tipo de solicitud: %s <br>
              Nombre: %s <br>
              Fecha de nacimiento: %s <br>
              Provincia: %s <br>
              Letra: %s <br>
              Folio: %s <br>
              Asiento: %s <br>
              Sexo: %s <br>
              Teléfono Residencial: %s <br>
              Tlf. Oficina: %s <br>
              Celular: %s <br>
              Email: %s <br>
              Email secundario: %s <br>
              Direccion: %s <br><br>
              Laboral: %s <br>
              Ocupacion: %s <br>
              Salario: %s <br>
              Lugar de trabajo: %s <br>
              Tiempo en empleo actual: %s <br>
              Monto deseado: %s <br>
              Sucursal mas cercana: %s <br>
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
              $success = mail("mercadeofp50@gmail.com", "Solicitud de Prestamo", $message, $headers );
              // $success = mail("anderson.andres.guerrero@gmail.com", "Solicitud de Prestamo", $message, $headers );
              Flash::valid("Registro exitoso!");
            }else{
              Flash::error("Error al registrar la solicitud");
            }
        }else{
          Flash::error("Click en el captcha");
        }
      }
    }
}
