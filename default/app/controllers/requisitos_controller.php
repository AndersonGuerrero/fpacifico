<?php

class RequisitosController extends AppController
{

    public function detalle($id)
    {
    	$this->requisito = Load::model("requisitos")->find_by_id($id);

    }

}
