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
        if($contactos->save()){
          Flash::valid("Datos Registrados gracias!");
          Router::redirect("index#contacto");
        }else{
          Flash::error("Error al registrar la solicitud");
        }
      }
    }

}
