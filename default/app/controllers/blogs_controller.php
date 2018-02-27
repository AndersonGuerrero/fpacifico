<?php
Load::models("user","general","banner","servicios","empresa","sucursales","categorias","promociones","requisitos");

class BlogsController extends AppController
{
    public function index()
    {
    	$this->blogs=Load::model("blogs")->find();
    }

    public function detalle($id)
    {
    	$this->blog=Load::model("blogs")->find_by_id((int)$id);
    }
}
