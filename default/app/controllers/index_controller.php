<?php
Load::models("user","general","banner","servicios","categorias","promociones","requisitos");


class IndexController extends AppController
{

    public function index()
    {
    	$this->general = Load::model("general")->find_by_id("1");
    	$this->categorias = Load::model("categorias")->find();
    	$this->promociones = Load::model("promociones")->find();
    	$this->requisitos = Load::model("requisitos")->find();


    }

}
