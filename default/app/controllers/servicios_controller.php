<?php
Load::models("user","general","banner","servicios");
class ServiciosController extends AppController 
{
	public function detalle($id)
	{
		$this->servicio = Load::model("servicios")->find_by_id($id);
    }
	
}