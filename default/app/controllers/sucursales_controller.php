<?php

class SucursalesController extends AppController
{

    public function index()
    {
    	$this->sucursales=Load::model("sucursales")->find();

    }

}
