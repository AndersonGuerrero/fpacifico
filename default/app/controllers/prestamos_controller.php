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
          Flash::valid("Registro exitoso!");
        }else{
          Flash::error("Error al registrar la solicitud");
        }
      }
    }
}
