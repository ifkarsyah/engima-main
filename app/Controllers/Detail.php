<?php


namespace App\Controllers;


use App\Core\BaseController;

/**
 * Class Detail
 * @package App\Controllers
 */
class Detail extends BaseController
{
    /**
     * @param $movieID
     */
    public function index($movieID)
    {
        $this->getUserIDFromCookies();

        $this->view->data['pageTitle'] = 'Detail';
        $this->view->data['movieInfo'] = $this->useModel('Detail')->getMovieDetailByMovieID($movieID);
        $this->view->data['schedules'] = $this->useModel('Detail')->getListScheduleByMovieID($movieID);
        $this->view->data['reviews'] = $this->useModel('Detail')->getListReviewByMovieID($movieID);
        print_r($this->view->data);

        $this->view->addCSS('css/index.css');
        $this->view->addCSS('css/home.css');
        $this->view->render('templates/header');
        $this->view->render('templates/navbar');
        $this->view->render('detail/index');
        $this->view->render('templates/footer');
    }
}