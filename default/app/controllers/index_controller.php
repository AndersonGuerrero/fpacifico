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
          $_POST["contactos"]['nombre_completo'],
          $_POST["contactos"]['correo'],
          $_POST["contactos"]['correo'],
          phpversion()
        );

        $message = sprintf(
          " Nombre: %s \n Telefono: %s \n Email: %s \n Interesado en: %s \n Como supo de nosotros: %s \n\n Mensaje: %s",
          $_POST["contactos"]['nombre_completo'],
          $_POST["contactos"]['telefono'],
          $_POST["contactos"]['correo'],
          $_POST["contactos"]['servicio'],
          $_POST["contactos"]['como_supo'],
          $_POST["contactos"]['mensaje']
        );
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
