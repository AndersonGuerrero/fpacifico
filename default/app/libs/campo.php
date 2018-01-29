<?php

class campo
{

    /**
     * @var string $columna
     * @access public
     */
    public $columna = null;

    /**
     * @var string $valor
     * @access public
     */
    public $valor = null;

    /**
     * @param string $columna
     * @param string $valor
     * @access public
     */
    public function __construct($columna, $valor)
    {
      $this->columna = $columna;
      $this->valor = $valor;
    }

}
