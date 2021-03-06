<?php

function php_json_encode( $data ) {   
    if( is_array($data) || is_object($data) ) {   
        $islist = is_array($data) && ( empty($data) || array_keys($data) === range(0,count($data)-1) );   
        if( $islist ) $json = '[' . implode(',', array_map('php_json_encode', $data) ) . ']';   
        else {   
            $items = Array();   
            foreach( $data as $key => $value ) $items[] = php_json_encode("$key") . ':' . php_json_encode($value);   
            $json = '{' . implode(',', $items) . '}';   
        }   
    } elseif( is_string($data) ) {   
        $string = '"' . addcslashes($data, "\\\"\n\r\t/" . chr(8) . chr(12)) . '"';   
  
        $json    = '';   
        $len    = strlen($string);   
        for( $i = 0; $i < $len; $i++ ) {   
            $char = $string[$i];   
  
            $c1 = ord($char);   
            if( $c1 <128 ) { $json .= ($c1 > 31) ? $char : sprintf("\\u%04x", $c1); continue; }   
            $c2 = ord($string[++$i]);   
            if ( ($c1 & 32) === 0 ) { $json .= sprintf("\\u%04x", ($c1 - 192) * 64 + $c2 - 128); continue; }   
            $c3 = ord($string[++$i]);   
            if( ($c1 & 16) === 0 ) { $json .= sprintf("\\u%04x", (($c1 - 224) <<12) + (($c2 - 128) << 6) + ($c3 - 128)); continue; }   
            $c4 = ord($string[++$i]);   
            if( ($c1 & 8 ) === 0 ) {   
                $u = (($c1 & 15) << 2) + (($c2>>4) & 3) - 1;   
                $w1 = (54<<10) + ($u<<6) + (($c2 & 15) << 2) + (($c3>>4) & 3);   
                $w2 = (55<<10) + (($c3 & 15)<<6) + ($c4-128);   
                $json .= sprintf("\\u%04x\\u%04x", $w1, $w2);   
            }   
        }   
    }    
    else $json = strtolower(var_export( $data, true ));   
       
    return $json;   
}   
  
?>
