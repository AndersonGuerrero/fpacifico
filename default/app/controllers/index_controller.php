<?php
Load::models("user","general","banner","servicios","categorias","promociones","requisitos", "contactos", "video");


class IndexController extends AppController
{

    public function index()
    {
    	$this->general = Load::model("general")->find_by_id("1");
    	$this->categorias = Load::model("categorias")->find();
    	$this->promociones = Load::model("promociones")->find();
    	$this->requisitos = Load::model("requisitos")->find();
      $this->servicios = Load::model("servicios")->find();
      $video = new Video();
      $this->video = $video->find_first();
      if (Input::haspost("contactos")){
        $contactos = new Contactos(Input::post("contactos"));

        $headers = sprintf("From: %s<%s>\r\nReply-To: s%\r\nX-Mailer: PHP/%s",
          Input::post("contactos.nombre_completo"),
          Input::post("contactos.correo"),
          Input::post("contactos.correo"),
          phpversion()
        );

        $message = sprintf(
          " Nombre: %s \n Telefono: %s \n Email: %s \n Interesado en: %s \n Como supo de nosotros: %s \n\n Mensaje: %s",
          Input::post("contactos.nombre_completo"),
          Input::post("contactos.telefono"),
          Input::post("contactos.correo"),
          Input::post("contactos.servicio"),
          Input::post("contactos.como_supo"),
          Input::post("contactos.mensaje"));
        $success = mail("mercadeofp@fpacifico.com", "Mensaje de Contacto", $message, $headers );

        if($contactos->save()){
          Flash::valid("Datos Registrados gracias!");
          Router::redirect("index#contacto");
        }else{
          Flash::error("Error al registrar la solicitud");
        }
      }
    }

}
