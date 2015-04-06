<?php
// Cache for gravatar.com by dgx

// config
$gravatarURI = 'http://www.gravatar.com/avatar.php';
$cacheDir = dirname(__FILE__);
$expiration = 60*60*24*2; // 2 days
$emptyGIF = "GIF89a\x01\x00\x01\x00\x80\x00\x00\x00\x00\x00\x00\x00\x00!\xf9\x04\x01\x00\x00\x00\x00,\x00\x00\x00\x00\x01\x00\x01\x00\x00\x02\x02D\x01\x00;";

// check parameters
$query = @$_SERVER['QUERY_STRING'];
if (!$query) exit;

// is avatar cached?
$cacheFile = $cacheDir.'/'.strtr($query, ':*?\/', '-----');
$isCached = is_file($cacheFile);
$isExpired = $isCached && (time() - filemtime($cacheFile) > $expiration);
$img = NULL;

if (!$isCached || $isExpired)
{
    // download avatar
    $img = @file_get_contents($gravatarURI.'?'.$query);

    // put into cache
    if ($img != NULL)
        //file_put_contents($cacheFile, $img);
    	fwrite(fopen($cacheFile, 'wb'), $img);
}

// load from cache or empty GIF
if ($img == NULL)
    $img = $isCached ? file_get_contents($cacheFile) : $emptyGIF;


// detect correct mimetype
if ($img[1] == 'P')
    header('Content-Type: image/png');
elseif ($img[1] == 'I')
    header('Content-Type: image/gif');
else
    header('Content-Type: image/jpeg');


// send image
echo $img;
?>