<?php
        function icq($icq) {
                
                $fp = fsockopen("status.icq.com", 80);
                if($fp) {
                        fputs($fp, "GET /online.gif?icq=".$icq."&img=5 HTTP/1.0\r\n\r\n");
                        while ($line = fgets($fp,128)) {
                                if(eregi("^Location:.*$", $line)) {
                                        if(eregi("online1.gif", $line)) {
                                                $icq_stav = "<img src=\"./obr/icq_img/icq_on.gif\" alt=\"online\" />";
                                        } else {
                                                $icq_stav = "<img src=\"./obr/icq_img/icq_off.gif\" alt=\"offline\" />";
                                        }
                                }
                        }
                } else {
                        $icq_stav = "<img src=\"./obr/icq_img/icq_na.gif\" alt=\"N/A\" />";
                }
                return $icq_stav;
        }
?>