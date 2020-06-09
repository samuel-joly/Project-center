<?php
	function display_errors($err=[]) {
		$return_value = "";
		if(count($err) > 1) {
			foreach($err as $error) {
				$return_value.="<p>".$error."</p>";
			}
			return $return_value;
		}
		else
		{
			return "<p>".$err[0]."</p>";
		}
	}


?>
