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
      if (Input::haspost("solicitudes")){
        $solicitudes = new Solicitudes(Input::post("solicitudes"));
        if($solicitudes->save()){
          Flash::valid("Solicitud registrada!");
        }else{
          Flash::error("Error al registrar la solicitud");
        }
      }
    }
}
