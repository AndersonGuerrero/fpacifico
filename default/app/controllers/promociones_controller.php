<?php

class PromocionesController extends AppController
{

    public function detalle($id)
    {
    	$this->promociones = Load::model("promociones")->find_by_id($id);

    }

}
