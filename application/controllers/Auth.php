<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . 'libraries/REST_Controller.php';

class Auth extends REST_Controller {

	function __construct() {
		parent::__construct();
		// Informant Model
		$this->load->model('InformantModel','',TRUE);
	}

	public function token_get() {
		
	}	

}
