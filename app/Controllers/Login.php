<?php

namespace App\Controllers;

use App\Core\BaseController;
use App\Utilities;

class Login extends BaseController
{
    public function index()
    {
        if (Utilities\Auth::isAuthenticated())
        {
            Utilities\Redirect::to(URL_BASE_PUBLIC . '/home/index');
        }
        else
        {
            $this->view->addCSS('css/style.css');
            $this->view->addJS('js/index.js');
            $this->view->render('login/index');
        }
    }

    public function proceed()
    {
        if ($this->getModel('User')->isExists())
        {
            $this->getModel('User')->createCookie();
        }
    }
}