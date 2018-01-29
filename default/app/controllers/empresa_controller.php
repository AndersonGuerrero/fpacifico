<?php
Load::models("user","general","banner","servicios","empresa");
class EmpresaController extends AppController
{

    public function index()
    {
    	$this->empresa = Load::model("empresa")->find_by_id("1");

    }
    public function mision_vision()
    {
    	$this->empresa = Load::model("empresa")->find_by_id("1");

    }

}
