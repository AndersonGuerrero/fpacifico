<?php
class User extends ActiveRecord{
	public function encriptar($clave = null){
		if ($clave) {
			return md5($clave);
		}
		if ($this->clave) {
			$this->clave = md5($this->clave);
		}
	}
	protected function initialize(){
    	$this->validates_uniqueness_of("usuario");
    	$this->validates_uniqueness_of("email");
   	}
 	public function getInfoUser($id){
	$user = $this->find("conditions: id = '$id'");
	return $user;
	}
}

 ?>
