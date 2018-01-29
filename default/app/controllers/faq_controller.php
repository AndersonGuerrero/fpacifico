<?php
Load::models("user","general","banner","servicios","empresa","sucursales","categorias","promociones","requisitos");

class FaqController extends AppController
{

    public function index()
    {
    	$this->faq=Load::model("faq")->find();

    }

}
