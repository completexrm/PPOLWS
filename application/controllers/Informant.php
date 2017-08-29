<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . 'libraries/REST_Controller.php';

class Informant extends REST_Controller {

	function __construct() {
		parent::__construct();
		// Informant Model
		$this->load->model('InformantModel','',TRUE);
	}

	public function iAd_post() {
		$code = 201;
		$success = $this->InformantModel->createIADStats($this->post());
		if(!$success) {
			$code = 400;
		}
		$this->response(array('success' => $success), $code);
	}

}
