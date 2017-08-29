<?php

Class InformantModel extends CI_Model {
	function createIADStats($data) {
		$insert = array();
		$response = true;
		foreach( $data as $key => $label ) {
			$insert[str_replace('-', '_', $key)] = $label;
		}
		if(!$this->db->insert('informant_iad', $insert)) {
			$response = false;
		}
		return $response;
	}
}
?>