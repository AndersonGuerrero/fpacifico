<?php
Load::models(
    "user","general","banner","servicios","empresa","sucursales",
    "categorias","promociones","requisitos", 'solicitudes', 'contactos', 'blogs', 'video');

// Load::lib('excel');
class AdminController extends AppController
{
    public function index(){

      View::template("admin");

      if (Input::haspost("user")){
        $user = new User();
        $post = Input::post("user");
        session_start();
          $pwd = $user->encriptar($post['clave']);
          $usuario=$post['usuario'];
          $auth = new Auth("model", "class: user", "usuario: $usuario", "clave: $pwd");
          if ($auth->authenticate()) {
            Router::redirect("admin/config");
          } else {
             Flash::error("El usuario o clave que ha ingresado es invalido");
          }

      }
    }

    public function config(){
      View::template("administrador");
      $user = new User();
      if (Auth::is_valid()){
        $this->usuario = $user->getInfoUser(Auth::get('id'));
      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }

    public function video(){
      View::template("administrador");
      if (Auth::is_valid()){
        if (Input::haspost("video")) {
          $video = new Video(Input::post("video"));
          if ($video->update()) {
            Flash::valid("Informacion actualizada");
            Router::redirect("admin/video");
          }else{
            Flash::error("Error al editar, verifique e intente de nuevo");
            Router::redirect("admin/video");
          }
        }
        $video = new Video();
        $this->video = $video->find_first();
      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }

    public function general(){
      $id = 1;
      View::template("general");
      if (Auth::is_valid()){
        $general = new General();
        if (Input::haspost("general")) {
        $general = new General(Input::post("general"));


                $path = getcwd()."/img/upload/general";
                $path_pdf = getcwd()."/files/upload/pdfs";


                if (!empty($_FILES['images']['name'])) {
                    $images = Upload::factory('images', 'image');
                    $_FILES["images"]["name"] = date("Y_m_d_h.i.s").$_FILES['images']['name'];
                    $images->setPath($path);
                    $images->setExtensions(array('jpg', 'png', 'gif','jpeg'));
                        if ($images->isUploaded()) {
                            if ($images->save()){
                                $general->img = "upload/general/".$_FILES["images"]["name"];
                            }else{
                            Flash::warning('No se ha podido subir la imagen ...!!!');
                         }
                       }
                }
                if (!empty($_FILES['img_banner']['name'])) {
                    $img_banner = Upload::factory('img_banner', 'image');
                    $_FILES["img_banner"]["name"] = date("Y_m_d_h.i.s").$_FILES['img_banner']['name'];
                    $img_banner->setPath($path);
                    $img_banner->setExtensions(array('jpg', 'png', 'gif','jpeg'));
                        if ($img_banner->isUploaded()) {
                            if ($img_banner->save()){
                                $general->img_banner = "upload/general/".$_FILES["img_banner"]["name"];
                            }else{
                            Flash::warning('No se ha podido subir la imagen ...!!!');
                         }
                       }
                }

                if (!empty($_FILES['img_sucursal']['name'])) {
                    $img_sucursal = Upload::factory('img_sucursal', 'image');
                    $_FILES["img_sucursal"]["name"] = date("Y_m_d_h.i.s").$_FILES['img_sucursal']['name'];
                    $img_sucursal->setPath($path);
                    $img_sucursal->setExtensions(array('jpg', 'png', 'gif','jpeg'));
                        if ($img_sucursal->isUploaded()) {
                            if ($img_sucursal->save()){
                                $general->img_sucursal_principal = "upload/general/".$_FILES["img_sucursal"]["name"];
                            }else{
                            Flash::warning('No se ha podido subir la imagen ...!!!');
                         }
                       }
                }



                 if (!empty($_FILES['images_en']['name'])) {
                    $images_en = Upload::factory('images_en', 'image');
                    $_FILES["images_en"]["name"] = date("Y_m_d_h.i.s").$_FILES['images_en']['name'];
                    $images_en->setPath($path);
                    $images_en->setExtensions(array('jpg', 'png', 'gif','jpeg'));
                        if ($images_en->isUploaded()) {
                            if ($images_en->save()){
                                $general->img_en = "upload/general/".$_FILES["images_en"]["name"];
                            }else{
                            Flash::warning('No se ha podido subir la imagen ...!!!');
                         }
                       }
                }


                 if (!empty($_FILES['parallax']['name'])) {
                    $parallax = Upload::factory('parallax', 'image');
                    $_FILES["parallax"]["name"] = date("Y_m_d_h.i.s").$_FILES['parallax']['name'];
                    $parallax->setPath($path);
                    $parallax->setExtensions(array('jpg', 'png', 'gif','jpeg'));
                        if ($parallax->isUploaded()) {
                            if ($parallax->save()){
                                $general->parallax_img = "upload/general/".$_FILES["parallax"]["name"];
                            }else{
                            Flash::warning('No se ha podido subir la imagen ...!!!');
                         }
                       }
                }

                if (!empty($_FILES['pdfaimg']['name'])) {
                    $pdfaimg = Upload::factory('pdfaimg', 'file');
                    $_FILES["pdfaimg"]["name"] = date("Y_m_d_h.i.s").$_FILES['pdfaimg']['name'];
                    $pdfaimg->setPath($path_pdf);
                    $pdfaimg->setExtensions(array('pdf'));
                        if ($pdfaimg->isUploaded()) {
                            if ($pdfaimg->save()){
                                $general->pdfaimg = "upload/pdfs/".$_FILES["pdfaimg"]["name"];
                            }else{
                            Flash::warning('No se ha podido subir el archivo ...!!!');
                         }
                       }
                }
                if (!empty($_FILES['pdfbimg']['name'])) {
                    $pdfbimg = Upload::factory('pdfbimg', 'file');
                    $_FILES["pdfbimg"]["name"] = date("Y_m_d_h.i.s").$_FILES['pdfbimg']['name'];
                    $pdfbimg->setPath($path_pdf);
                    $pdfbimg->setExtensions(array('pdf'));
                        if ($pdfbimg->isUploaded()) {
                            if ($pdfbimg->save()){
                                $general->pdfbimg = "upload/pdfs/".$_FILES["pdfbimg"]["name"];
                            }else{
                            Flash::warning('No se ha podido subir el archivo ...!!!');
                         }
                       }
                }
                if (!empty($_FILES['pdfcimg']['name'])) {
                    $pdfcimg = Upload::factory('pdfcimg', 'file');
                    $_FILES["pdfcimg"]["name"] = date("Y_m_d_h.i.s").$_FILES['pdfcimg']['name'];
                    $pdfcimg->setPath($path_pdf);
                    $pdfcimg->setExtensions(array('pdf'));
                        if ($pdfcimg->isUploaded()) {
                            if ($pdfcimg->save()){
                                $general->pdfcimg = "upload/pdfs/".$_FILES["pdfcimg"]["name"];
                            }else{
                            Flash::warning('No se ha podido subir el archivo ...!!!');
                         }
                       }
                }
                if (!empty($_FILES['pdfdimg']['name'])) {
                    $pdfdimg = Upload::factory('pdfdimg', 'file');
                    $_FILES["pdfdimg"]["name"] = date("Y_m_d_h.i.s").$_FILES['pdfdimg']['name'];
                    $pdfdimg->setPath($path_pdf);
                    $pdfdimg->setExtensions(array('pdf'));
                        if ($pdfdimg->isUploaded()) {
                            if ($pdfdimg->save()){
                                $general->pdfdimg = "upload/pdfs/".$_FILES["pdfdimg"]["name"];
                            }else{
                            Flash::warning('No se ha podido subir el archivo ...!!!');
                         }
                       }
                }

                if (!empty($_FILES['pdfaimg_en']['name'])) {
                    $pdfaimg_en = Upload::factory('pdfaimg_en', 'file');
                    $_FILES["pdfaimg_en"]["name"] = date("Y_m_d_h.i.s").$_FILES['pdfaimg_en']['name'];
                    $pdfaimg_en->setPath($path_pdf);
                    $pdfaimg_en->setExtensions(array('pdf'));
                        if ($pdfaimg_en->isUploaded()) {
                            if ($pdfaimg_en->save()){
                                $general->pdfaimg_en = "upload/pdfs/".$_FILES["pdfaimg_en"]["name"];
                            }else{
                            Flash::warning('No se ha podido subir el archivo ...!!!');
                         }
                       }
                }

                if (!empty($_FILES['pdfbimg_en']['name'])) {
                    $pdfbimg_en = Upload::factory('pdfbimg_en', 'file');
                    $_FILES["pdfbimg_en"]["name"] = date("Y_m_d_h.i.s").$_FILES['pdfbimg_en']['name'];
                    $pdfbimg_en->setPath($path_pdf);
                    $pdfbimg_en->setExtensions(array('pdf'));
                        if ($pdfbimg_en->isUploaded()) {
                            if ($pdfbimg_en->save()){
                                $general->pdfbimg_en = "upload/pdfs/".$_FILES["pdfbimg_en"]["name"];
                            }else{
                            Flash::warning('No se ha podido subir el archivo ...!!!');
                         }
                       }
                }
                if (!empty($_FILES['pdfcimg_en']['name'])) {
                    $pdfcimg_en = Upload::factory('pdfcimg_en', 'file');
                    $_FILES["pdfcimg_en"]["name"] = date("Y_m_d_h.i.s").$_FILES['pdfcimg_en']['name'];
                    $pdfcimg_en->setPath($path_pdf);
                    $pdfcimg_en->setExtensions(array('pdf'));
                        if ($pdfcimg_en->isUploaded()) {
                            if ($pdfcimg_en->save()){
                                $general->pdfcimg_en = "upload/pdfs/".$_FILES["pdfcimg_en"]["name"];
                            }else{
                            Flash::warning('No se ha podido subir el archivo ...!!!');
                         }
                       }
                }
                if (!empty($_FILES['pdfdimg_en']['name'])) {
                    $pdfdimg_en = Upload::factory('pdfdimg_en', 'file');
                    $_FILES["pdfdimg_en"]["name"] = date("Y_m_d_h.i.s").$_FILES['pdfdimg_en']['name'];
                    $pdfdimg_en->setPath($path_pdf);
                    $pdfdimg_en->setExtensions(array('pdf'));
                        if ($pdfdimg_en->isUploaded()) {
                            if ($pdfdimg_en->save()){
                                $general->pdfdimg_en = "upload/pdfs/".$_FILES["pdfdimg_en"]["name"];
                            }else{
                            Flash::warning('No se ha podido subir el archivo ...!!!');
                         }
                       }
                }

          if ($general->update()) {
            Flash::valid("Informacion actualizada");
            Router::redirect("admin/general");
          }else{
            Flash::error("Error al editar, verifique e intente de nuevo");
            Router::redirect("admin/general");
          }
        }else {
          $this->general = $general->find_by_id((int)$id);
        }
      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }


    public function banners(){
      View::template("general");
      if (Auth::is_valid()){
        $this->banners=Load::model("banner")->find();
      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }

    public function deletebanner($id)
    {
     if (Auth::is_valid()){
        $banner = new Banner();
        $banner = Load::model("banner")->find_by_id($id);

        if ($banner->delete((int)$id)) {
            Flash::valid('Operación exitosa');
        }else{
            Flash::error('Falló Operación');
        }
         Router::redirect("admin/banners");

     }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }

    public function editar_banner($id){
      View::template("general");
      if (Auth::is_valid()){
        $banner = new Banner();
        if (Input::haspost("banner")) {
        $banner = new banner(Input::post("banner"));

                $path = getcwd()."/img/upload/banners";

            if (!empty($_FILES['images']['name'])) {
                    $images = Upload::factory('images', 'image');
                    $_FILES["images"]["name"] = date("Y_m_d_h.i.s").$_FILES['images']['name'];
                    $images->setPath($path);
                    $images->setExtensions(array('jpg', 'png', 'gif','jpeg'));
                        if ($images->isUploaded()) {
                            if ($images->save()){
                                $banner->img = "upload/banners/".$_FILES["images"]["name"];
                            }else{
                            Flash::warning('No se ha podido subir la imagen ...!!!');
                         }
                   }
              }

          if ($banner->update()) {
            Flash::valid("Banner actualizado");
            Router::redirect("admin/banners");
          }else{
            Flash::error("Error al editar, verifique e intente de nuevo");
            Router::redirect("admin/editar_banner/$id");
          }
        }else {
          $this->banner = $banner->find_by_id((int)$id);
        }
      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }


    public function nuevo_banner(){
      View::template("general");
      if (Auth::is_valid()){
        if (Input::haspost("banner")) {
        $banner = new Banner(Input::post("banner"));
            $path = getcwd()."/img/upload/banners";

            if (!empty($_FILES['images']['name'])) {
                    $images = Upload::factory('images', 'image');
                    $_FILES["images"]["name"] = date("Y_m_d_h.i.s").$_FILES['images']['name'];
                    $images->setPath($path);
                    $images->setExtensions(array('jpg', 'png', 'gif','jpeg'));
                        if ($images->isUploaded()) {
                            if ($images->save()){
                                $banner->img = "upload/banners/".$_FILES["images"]["name"];
                            }else{
                            Flash::warning('No se ha podido subir la imagen ...!!!');
                         }
                   }
              }

                if ($banner->save()) {
                Flash::valid("Banner Registrado");
                Router::redirect("admin/banners");
              }else{
                Flash::error("Error al registrar banner");
              }

          }


      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }


    public function servicios(){
      View::template("general");
      if (Auth::is_valid()){
        $this->servicios=Load::model("servicios")->find();
      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }


    public function ver_solicitud($id){
      View::template("general");
      if (Auth::is_valid()){
        $solicitudes = new Solicitudes();
        $sucursales = new Sucursales();
        $servicios = new Servicios();
        $this->solicitudes = $solicitudes->find_by_id((int)$id);
        $this->sucursal = $sucursales->find_by_id((int)$this->solicitudes->sucursales_id);
        $this->servicios = $servicios->find();
        $this->servicio = $servicios->find_by_id((int)$this->solicitudes->servicios_id);
      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }

    public function ver_contacto($id){
      View::template("general");
      if (Auth::is_valid()){
        $contactos = new Contactos();
        $servicios = new Servicios();
        $this->contactos = $contactos->find_by_id((int)$id);
        $this->servicios = $servicios->find();
        $this->servicio = $servicios->find_by_id((int)$this->contactos->servicios_id);
      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }

    public function editar_servicio($id){
      View::template("general");
      if (Auth::is_valid()){
        $servicios = new Servicios();
        if (Input::haspost("servicios")) {
        $servicios = new Servicios(Input::post("servicios"));

            $path = getcwd()."/img/upload/servicios";

            if (!empty($_FILES['images']['name'])) {
                    $images = Upload::factory('images', 'image');
                    $_FILES["images"]["name"] = date("Y_m_d_h.i.s").$_FILES['images']['name'];
                    $images->setPath($path);
                    $images->setExtensions(array('jpg', 'png', 'gif','jpeg'));
                        if ($images->isUploaded()) {
                            if ($images->save()){
                                $servicios->img = "upload/servicios/".$_FILES["images"]["name"];
                            }else{
                            Flash::warning('No se ha podido subir la imagen ...!!!');
                         }
                   }
              }

          if ($servicios->update()) {
            Flash::valid("Servicio actualizado");
            Router::redirect("admin/servicios");
          }else{
            Flash::error("Error al editar, verifique e intente de nuevo");
            Router::redirect("admin/editar_servicio/$id");
          }
        }else {
          $this->servicios = $servicios->find_by_id((int)$id);
        }
      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }


    public function empresa(){
      $id = 1;
      View::template("general");
      if (Auth::is_valid()){
        $empresa = new Empresa();
        if (Input::haspost("empresa")) {
        $empresa = new Empresa(Input::post("empresa"));


          if ($empresa->update()) {
            Flash::valid("Informacion actualizada");
            Router::redirect("admin/empresa");
          }else{
            Flash::error("Error al editar, verifique e intente de nuevo");
            Router::redirect("admin/empresa");
          }
        }else {
          $this->empresa = $empresa->find_by_id((int)$id);
        }
      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }

     public function sucursales(){
      View::template("general");
      if (Auth::is_valid()){
        $this->sucursales=Load::model("sucursales")->find();
      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }

    public function solicitudesFile(){
      View::template(NULL); //Agregado para que no envié todo el html(Beta2). En Beta1 $this->template=NULL
      View::response('xls');
      $solicitudes = new Solicitudes();
      if(!$this->solicitudes = $solicitudes->find()){
        Flash::warning('No existen registros para exportar');
        $this->render(NULL);
      }
    }

    public function contactosFile(){
      View::template(NULL); //Agregado para que no envié todo el html(Beta2). En Beta1 $this->template=NULL
      View::response('xls');
      $contactos = new Contactos();
      if(!$this->contactos = $contactos->find()){
        Flash::warning('No existen registros para exportar');
        $this->render(NULL);
      }
    }

    public function contactos(){
     View::template("general");
     if (Auth::is_valid()){
       $order = 'order:  created_at desc';
       $conditions = FALSE;
       $this->splitstr = array();
       $str_temp = '';
       $this->servicios = (New Servicios)->find();
       $this->contactos_count_total = (New Contactos)->count();
       if(Input::post("search")){
         foreach (str_split(Input::post("search")) as $key => $value) {
           if($value == ' '){
             $this->splitstr[] = $str_temp;
             $str_temp = '';
           }else{
             $str_temp = $str_temp.$value;
           }
           if( strlen(Input::post("search"))-1 == $key){
             $this->splitstr[] = $str_temp;
           }
         }
         $conditions = 'conditions: ';
         $count = 0;
         foreach ($this->splitstr as $key => $value) {
           if($count == 0){
             $count++;
             $conditions = $conditions.'(nombre_completo like "%'.$value.'%"';
           }else{
             $conditions = $conditions.' or nombre_completo like "%'.$value.'%"';
           }
           $conditions = $conditions.' or telefono like "%'.$value.'%"';
           $conditions = $conditions.' or correo like "%'.$value.'%"';
         }
         $conditions = $conditions.')';
       }

       if(Input::post("servicio")){
         if($count > 0){
           $conditions = $conditions.' and servicio="'.Input::post("servicio").'"';
         }else{
           $count++;
           $conditions = $conditions.' servicio="'.Input::post("servicio").'"';
         }
       }

       if(Input::post("como_supo")){
         if($count > 0){
           $conditions = $conditions.' and como_supo="'.Input::post("como_supo").'"';
         }else{
           $count++;
           $conditions = $conditions.' como_supo="'.Input::post("como_supo").'"';
         }
       }

       if(Input::post("fecha")){
         if($count > 0){
           $conditions = $conditions.' and created_at like "%'.Input::post("fecha").'%"';
         }else{
           $count++;
           $conditions = $conditions.' created_at like "%'.Input::post("fecha").'%"';
         }
       }

       if($conditions){
         $this->contactos = (New Contactos)->find($conditions, $order);
       }else{
         $this->contactos = (New Contactos)->find($order);
       }


       $this->contactos_count = count($this->contactos);

       if(Input::post("export")){
         View::template(NULL);
         View::response('xls');
         if(!$this->contactos){
           Flash::warning('No existen registros para exportar');
           $this->render(NULL);
         }
       }
     }else{
       Flash::valid("Necesita un usuario autenticado");
       Router::redirect("admin");
     }
   }

   public function exportar_solicitud($id){
     $this->solicitud = (New Solicitudes)->find_by_id((int)$id);
     View::template(NULL);
   }

   public function exportar_contacto($id){
     $this->contacto = (New Contactos)->find_by_id((int)$id);
     View::template(NULL);
   }

    public function solicitudes(){
     View::template("general");
     if (Auth::is_valid()){
       $order = 'order:  created_at desc';
       $conditions = FALSE;
       $this->splitstr = array();
       $str_temp = '';
       $this->solicitudes_count_total = (New Solicitudes)->count();
       $this->servicios = (New Servicios)->find();
       if(Input::post("search")){
         foreach (str_split(Input::post("search")) as $key => $value) {
           if($value == ' '){
             $this->splitstr[] = $str_temp;
             $str_temp = '';
           }else{
             $str_temp = $str_temp.$value;
           }
           if( strlen(Input::post("search"))-1 == $key){
             $this->splitstr[] = $str_temp;
           }
         }
         $conditions = 'conditions: ';
         $count = 0;
         foreach ($this->splitstr as $key => $value) {
           if($count == 0){
             $count++;
             $conditions = $conditions.'(nombre like "%'.$value.'%"';
           }else{
             $conditions = $conditions.' or nombre like "%'.$value.'%"';
           }
           $conditions = $conditions.' or apellido like "%'.$value.'%"';
           $conditions = $conditions.' or celular like "%'.$value.'%"';
           $conditions = $conditions.' or laboral like "%'.$value.'%"';
           $conditions = $conditions.' or monto_deseado like "%'.$value.'%"';
         }
         $conditions = $conditions.')';
       }

       if(Input::post("servicio")){
         if($count > 0){
           $conditions = $conditions.' and servicio="'.Input::post("servicio").'"';
         }else{
           $count++;
           $conditions = $conditions.' servicio="'.Input::post("servicio").'"';
         }
       }

       if(Input::post("sexo")){
         if($count > 0){
           $conditions = $conditions.' and sexo="'.Input::post("sexo").'"';
         }else{
           $count++;
           $conditions = $conditions.' sexo="'.Input::post("sexo").'"';
         }
       }

       if(Input::post("salario")){
         if($count > 0){
           $conditions = $conditions.' and salario="'.Input::post("salario").'"';
         }else{
           $count++;
           $conditions = $conditions.' salario="'.Input::post("salario").'"';
         }
       }

       if(Input::post("fecha")){
         $fecha = date('Y-m-d',strtotime(Input::post("fecha")));
         if($count > 0){
           $conditions = $conditions.' and created_at >= "'.$fecha.'"';
         }else{
           $count++;
           $conditions = $conditions.' created_at >= "'.$fecha.'"';
         }
       }

       if(Input::post("fecha2")){
         $fecha = date('Y-m-d',strtotime(Input::post("fecha2")));
         if($count > 0){
           $conditions = $conditions.' and created_at <= "'.$fecha.'"';
         }else{
           $count++;
           $conditions = $conditions.' created_at <= "'.$fecha.'"';
         }
       }

       if(Input::post("laboral")){
         if($count > 0){
           $conditions = $conditions.' and laboral="'.Input::post("laboral").'"';
         }else{
           $count++;
           $conditions = $conditions.' laboral="'.Input::post("laboral").'"';
         }
       }

       if($conditions){
         $this->solicitudes = (New Solicitudes)->find($conditions, $order);
       }else{
         $this->solicitudes = (New Solicitudes)->find($order);
       }

       $this->conditions = $conditions;

       $this->solicitudes_count = count($this->solicitudes);

       if(Input::post("export")){
         View::template(NULL);
         View::response('xls');
         if(!$this->solicitudes){
           Flash::warning('No existen registros para exportar');
           $this->render(NULL);
         }
       }
     }else{
       Flash::valid("Necesita un usuario autenticado");
       Router::redirect("admin");
     }
   }

    public function nueva_sucursal(){
      View::template("general");
      if (Auth::is_valid()){
        if (Input::haspost("sucursales")) {
        $sucursales = new Sucursales(Input::post("sucursales"));
            $path = getcwd()."/img/upload/sucursales";

            if (!empty($_FILES['images']['name'])) {
                    $images = Upload::factory('images', 'image');
                    $_FILES["images"]["name"] = date("Y_m_d_h.i.s").$_FILES['images']['name'];
                    $images->setPath($path);
                    $images->setExtensions(array('jpg', 'png', 'gif','jpeg'));
                        if ($images->isUploaded()) {
                            if ($images->save()){
                                $sucursales->img = "upload/sucursales/".$_FILES["images"]["name"];
                            }else{
                            Flash::warning('No se ha podido subir la imagen ...!!!');
                         }
                   }
              }


              if (!empty($_FILES['mapa']['name'])) {
                    $mapa = Upload::factory('mapa', 'image');
                    $_FILES["mapa"]["name"] = date("Y_m_d_h.i.s").$_FILES['mapa']['name'];
                    $mapa->setPath($path);
                    $mapa->setExtensions(array('jpg', 'png', 'gif','jpeg'));
                        if ($mapa->isUploaded()) {
                            if ($mapa->save()){
                                $sucursales->mapa = "upload/sucursales/".$_FILES["mapa"]["name"];
                            }else{
                            Flash::warning('No se ha podido subir la imagen ...!!!');
                         }
                   }
              }

                if ($sucursales->save()) {
                Flash::valid("sucursales Registrado");
                Router::redirect("admin/sucursales");
              }else{
                Flash::error("Error al registrar sucursal");
              }

          }


      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }

    public function editar_sucursal($id){
      View::template("general");
      if (Auth::is_valid()){
        $sucursales = new Sucursales();
        if (Input::haspost("sucursales")) {
        $sucursales = new Sucursales(Input::post("sucursales"));

                $path = getcwd()."/img/upload/sucursales";

            if (!empty($_FILES['images']['name'])) {
                    $images = Upload::factory('images', 'image');
                    $_FILES["images"]["name"] = date("Y_m_d_h.i.s").$_FILES['images']['name'];
                    $images->setPath($path);
                    $images->setExtensions(array('jpg', 'png', 'gif','jpeg'));
                        if ($images->isUploaded()) {
                            if ($images->save()){
                                $sucursales->img = "upload/sucursales/".$_FILES["images"]["name"];
                            }else{
                            Flash::warning('No se ha podido subir la imagen ...!!!');
                         }
                   }
              }


              if (!empty($_FILES['mapa']['name'])) {
                    $mapa = Upload::factory('mapa', 'image');
                    $_FILES["mapa"]["name"] = date("Y_m_d_h.i.s").$_FILES['mapa']['name'];
                    $mapa->setPath($path);
                    $mapa->setExtensions(array('jpg', 'png', 'gif','jpeg'));
                        if ($mapa->isUploaded()) {
                            if ($mapa->save()){
                                $sucursales->mapa = "upload/sucursales/".$_FILES["mapa"]["name"];
                            }else{
                            Flash::warning('No se ha podido subir la imagen ...!!!');
                         }
                   }
              }

          if ($sucursales->update()) {
            Flash::valid("Sucursal actualizada");
            Router::redirect("admin/sucursales");
          }else{
            Flash::error("Error al editar, verifique e intente de nuevo");
            Router::redirect("admin/editar_sucursal/$id");
          }
        }else {
          $this->sucursales = $sucursales->find_by_id((int)$id);
        }
      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }


    public function deletesucursal($id)
    {
     if (Auth::is_valid()){
        $sucursales = new Sucursales();
        $sucursales = Load::model("sucursales")->find_by_id($id);

        if ($sucursales->delete((int)$id)) {
            Flash::valid('Operación exitosa');
        }else{
            Flash::error('Falló Operación');
        }
         Router::redirect("admin/sucursales");

     }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }

    public function eliminar_solicitud($id)
    {
     if (Auth::is_valid()){
        $solicitudes = new Solicitudes();
        $solicitudes = Load::model("solicitudes")->find_by_id($id);

        if ($solicitudes->delete((int)$id)) {
            Flash::valid('Operación exitosa');
        }else{
            Flash::error('Falló Operación');
        }
         Router::redirect("admin/solicitudes/");

     }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }

    public function eliminar_contacto($id)
    {
     if (Auth::is_valid()){
        $contactos = new Contactos();
        $contactos = Load::model("contactos")->find_by_id($id);

        if ($contactos->delete((int)$id)) {
            Flash::valid('Operación exitosa');
        }else{
            Flash::error('Falló Operación');
        }
         Router::redirect("admin/contactos/");

     }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }


    public function promociones(){
      View::template("general");
      if (Auth::is_valid()){
        $this->promociones=Load::model("promociones")->find();
      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }

    public function categorias(){
      View::template("general");
      if (Auth::is_valid()){
        $this->categorias=Load::model("categorias")->find();

        if (Input::haspost("categorias")) {
        $categorias = new Categorias(Input::post("categorias"));
              if ($categorias->save()) {
                Flash::valid("Registro exitoso");
                Router::redirect("admin/categorias");
              }else{
                Flash::error("Error al registrar");
              }

          }
      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }

    public function agregar_promocion(){
      View::template("general");
      if (Auth::is_valid()){
        $this->categorias  = Load::model("categorias")->find();
        if (Input::haspost("promociones")) {

        $promociones = new Promociones(Input::post("promociones"));
            $path = getcwd()."/img/upload/promociones";

            if (!empty($_FILES['images']['name'])) {
                    $images = Upload::factory('images', 'image');
                    $_FILES["images"]["name"] = date("Y_m_d_h.i.s").$_FILES['images']['name'];
                    $images->setPath($path);
                    $images->setExtensions(array('jpg', 'png', 'gif','jpeg'));
                        if ($images->isUploaded()) {
                            if ($images->save()){
                                $promociones->img = "upload/promociones/".$_FILES["images"]["name"];
                            }else{
                            Flash::warning('No se ha podido subir la imagen ...!!!');
                         }
                   }
              }


                if ($promociones->save()) {
                Flash::valid("Promocion Registrada");
                Router::redirect("admin/promociones");
              }else{
                Flash::error("Error al registrar sucursal");
              }

          }


      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }

    public function editar_promocion($id){
      View::template("general");
      if (Auth::is_valid()){
        $this->categorias  = Load::model("categorias")->find();
        $promociones = new Promociones();
        if (Input::haspost("promociones")) {
        $promociones = new Promociones(Input::post("promociones"));

                $path = getcwd()."/img/upload/promociones";

            if (!empty($_FILES['images']['name'])) {
                    $images = Upload::factory('images', 'image');
                    $_FILES["images"]["name"] = date("Y_m_d_h.i.s").$_FILES['images']['name'];
                    $images->setPath($path);
                    $images->setExtensions(array('jpg', 'png', 'gif','jpeg'));
                        if ($images->isUploaded()) {
                            if ($images->save()){
                                $promociones->img = "upload/promociones/".$_FILES["images"]["name"];
                            }else{
                            Flash::warning('No se ha podido subir la imagen ...!!!');
                         }
                   }
              }


          if ($promociones->update()) {
            Flash::valid("Promocion actualizada");
            Router::redirect("admin/promociones");
          }else{
            Flash::error("Error al editar, verifique e intente de nuevo");
            Router::redirect("admin/editar_promocion/$id");
          }
        }else {
          $this->promociones = $promociones->find_by_id((int)$id);
        }
      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }

     public function deletepromocion($id)
    {
     if (Auth::is_valid()){
        $promociones = new Promociones();
        $promociones = Load::model("promociones")->find_by_id($id);

        if ($promociones->delete((int)$id)) {
            Flash::valid('Operación exitosa');
        }else{
            Flash::error('Falló Operación');
        }
         Router::redirect("admin/promociones");

     }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }

    public function requisitos(){
      View::template("general");
      if (Auth::is_valid()){
        $this->requisitos=Load::model("requisitos")->find();
      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }


    public function agregar_requisito(){
      View::template("general");
      if (Auth::is_valid()){
        if (Input::haspost("requisitos")) {

        $requisitos = new Requisitos(Input::post("requisitos"));
            $path = getcwd()."/img/upload/requisitos";

            if (!empty($_FILES['images']['name'])) {
                    $images = Upload::factory('images', 'image');
                    $_FILES["images"]["name"] = date("Y_m_d_h.i.s").$_FILES['images']['name'];
                    $images->setPath($path);
                    $images->setExtensions(array('jpg', 'png', 'gif','jpeg'));
                        if ($images->isUploaded()) {
                            if ($images->save()){
                                $requisitos->img = "upload/requisitos/".$_FILES["images"]["name"];
                            }else{
                            Flash::warning('No se ha podido subir la imagen ...!!!');
                         }
                   }
              }


                if ($requisitos->save()) {
                Flash::valid("Requisito Registrado");
                Router::redirect("admin/requisitos");
              }else{
                Flash::error("Error al registrar sucursal");
              }

          }


      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }

    public function editar_requisito($id){
      View::template("general");
      if (Auth::is_valid()){
        $requisitos = new Requisitos();
        if (Input::haspost("requisitos")) {
        $requisitos = new Requisitos(Input::post("requisitos"));

                $path = getcwd()."/img/upload/requisitos";

            if (!empty($_FILES['images']['name'])) {
                    $images = Upload::factory('images', 'image');
                    $_FILES["images"]["name"] = date("Y_m_d_h.i.s").$_FILES['images']['name'];
                    $images->setPath($path);
                    $images->setExtensions(array('jpg', 'png', 'gif','jpeg'));
                        if ($images->isUploaded()) {
                            if ($images->save()){
                                $requisitos->img = "upload/requisitos/".$_FILES["images"]["name"];
                            }else{
                            Flash::warning('No se ha podido subir la imagen ...!!!');
                         }
                   }
              }


          if ($requisitos->update()) {
            Flash::valid("Promocion actualizada");
            Router::redirect("admin/requisitos");
          }else{
            Flash::error("Error al editar, verifique e intente de nuevo");
            Router::redirect("admin/editar_requisito/$id");
          }
        }else {
          $this->requisitos = $requisitos->find_by_id((int)$id);
        }
      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }

     public function deleterequisito($id)
    {
     if (Auth::is_valid()){
        $requisitos = new Requisitos();
        $requisitos = Load::model("requisitos")->find_by_id($id);

        if ($requisitos->delete((int)$id)) {
            Flash::valid('Operación exitosa');
        }else{
            Flash::error('Falló Operación');
        }
         Router::redirect("admin/requisitos");

     }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }

     public function faq(){
      View::template("general");
      if (Auth::is_valid()){
        $this->faq=Load::model("faq")->find();

        if (Input::haspost("faq")) {
        $faq = new Faq(Input::post("faq"));
              if ($faq->save()) {
                Flash::valid("Registro exitoso");
                Router::redirect("admin/faq");
              }else{
                Flash::error("Error al registrar");
              }

          }
      }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
    }


    public function logout(){
      if (Auth::is_valid()){
        Auth::destroy_identity();
        Router::redirect("admin");
      }
    }

    public function blogs(){
     View::template("general");
     if (!Auth::is_valid()){
       Flash::valid("Necesita un usuario autenticado");
       Router::redirect("admin");
     }
     $this->blogs=(new Blogs())->find();
   }

   function editar_blog($id){
     if (!Auth::is_valid()){
       Flash::valid("Necesita un usuario autenticado");
       Router::redirect("admin");
     }
     View::template("general");
     if (Input::haspost("blog")) {
       $blog = (new Blogs(Input::post("blog")));
       $path = getcwd()."/img/upload/blogs";
       if (!empty($_FILES['images']['name'])) {
         $images = Upload::factory('images', 'image');
         $_FILES["images"]["name"] = date("Y_m_d_h.i.s").$_FILES['images']['name'];
         $images->setPath($path);
         $images->setExtensions(array('jpg', 'png', 'gif','jpeg'));
         if ($images->isUploaded()) {
           if ($images->save()){
               $blog->imagen = $_FILES["images"]["name"];
           }else{
           Flash::warning('No se ha podido subir la imagen ...!!!');
           }
        }
       }
       if ($blog->update()) {
         Flash::valid("Blog actualizado");
         Router::redirect("admin/blogs");
       }else{
         Flash::error("Error al editar, verifique e intente de nuevo");
         Router::redirect("admin/editar_blog/$id");
       }
     }
     $this->blog = Load::model("blogs")->find_by_id($id);
   }

   function nuevo_blog(){
     if (!Auth::is_valid()){
       Flash::valid("Necesita un usuario autenticado");
       Router::redirect("admin");
     }
     View::template("general");
     if (Input::haspost("blog")) {
       $blog = (new Blogs(Input::post("blog")));
       $path = getcwd()."/img/upload/blogs";
       if (!empty($_FILES['images']['name'])) {
         $images = Upload::factory('images', 'image');
         $_FILES["images"]["name"] = date("Y_m_d_h.i.s").$_FILES['images']['name'];
         $images->setPath($path);
         $images->setExtensions(array('jpg', 'png', 'gif','jpeg'));
         if ($images->isUploaded()) {
           if ($images->save()){
               $blog->imagen = $_FILES["images"]["name"];
           }else{
           Flash::warning('No se ha podido subir la imagen ...!!!');
           }
        }
       }
       if ($blog->save()) {
         Flash::valid("Blog registrado");
         Router::redirect("admin/blogs");
       }else{
         Flash::error("Error al editar, verifique e intente de nuevo");
         Router::redirect("admin/nuevo_blog/");
       }
     }
   }

   function eliminar_blog($id){
     if (Auth::is_valid()){
       $blog = Load::model("blogs")->find_by_id($id);
        if ($blog->delete((int)$id)) {
            Flash::valid('Operación exitosa');
        }else{
            Flash::error('Falló Operación');
        }
         Router::redirect("admin/blogs");
     }else{
        Flash::valid("Necesita un usuario autenticado");
        Router::redirect("admin");
      }
   }

}
