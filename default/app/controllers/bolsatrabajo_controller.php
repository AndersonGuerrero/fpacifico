<?php
Load::models("user","general","banner","servicios","categorias","promociones");


class BolsatrabajoController extends AppController
{

    public function index()
    {
    	$this->general = Load::model("general")->find_by_id("1");


    }

}
