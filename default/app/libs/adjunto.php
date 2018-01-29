<?php

class adjunto
{

    /**
     * @var string $nombre
     * @access public
     */
    public $nombre = null;

    /**
     * @var string $contentId
     * @access public
     */
    public $contentId = null;

    /**
     * @var base64Binary $contentData
     * @access public
     */
    public $contentData = null;

    /**
     * @param string $nombre
     * @param string $contentId
     * @param base64Binary $contentData
     * @access public
     */
    public function __construct($nombre, $contentId, $contentData)
    {
      $this->nombre = $nombre;
      $this->contentId = $contentId;
      $this->contentData = $contentData;
    }

}
