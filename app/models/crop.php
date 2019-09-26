<?php
/**
 * @param string $aInitialImageFilePath - áâà®ª , ¯à¥¤áâ ¢«ïîé ï ¯ãâì ª ®¡à¥§ ¥¬®¬ã ¨§®¡à ¦¥­¨î
 * @param string $aNewImageFilePath - áâà®ª , ¯à¥¤áâ ¢«ïîé ï ¯ãâì ªã¤  ­ å® á®åà ­¨âì ¢ëå®¤­®¥ ®¡à¥§ ­­®¥ ¨§®¡à ¦¥­¨¥
 * @param int $aNewImageWidth - è¨à¨­  ¢ëå®¤­®£® ®¡à¥§ ­­®£® ¨§®¡à ¦¥­¨ï
 * @param int $aNewImageHeight - ¢ëá®â  ¢ëå®¤­®£® ®¡à¥§ ­­®£® ¨§®¡à ¦¥­¨ï
 */
function cropImage($aInitialImageFilePath, $aNewImageFilePath, $aNewImageWidth, $aNewImageHeight) {
    if (($aNewImageWidth < 0) || ($aNewImageHeight < 0)) {
        return false;
    }
    // Œ áá¨¢ á ¯®¤¤¥à¦¨¢ ¥¬ë¬¨ â¨¯ ¬¨ ¨§®¡à ¦¥­¨©
    $lAllowedExtensions = array(1 => "gif", 2 => "jpeg", 3 => "png"); 
    
    // ®«ãç ¥¬ à §¬¥àë ¨ â¨¯ ¨§®¡à ¦¥­¨ï ¢ ¢¨¤¥ ç¨á« 
    list($lInitialImageWidth, $lInitialImageHeight, $lImageExtensionId) = getimagesize($aInitialImageFilePath); 
    
    if (!array_key_exists($lImageExtensionId, $lAllowedExtensions)) {
        return false;
    }
    $lImageExtension = $lAllowedExtensions[$lImageExtensionId];
    
    // ®«ãç ¥¬ ­ §¢ ­¨¥ äã­ªæ¨¨, á®®â¢¥âáâ¢ãîéãî â¨¯ã, ¤«ï á®§¤ ­¨ï ¨§®¡à ¦¥­¨ï
    $func = 'imagecreatefrom' . $lImageExtension; 
    // ‘®§¤ ñ¬ ¤¥áªà¨¯â®à ¨áå®¤­®£® ¨§®¡à ¦¥­¨ï
    $lInitialImageDescriptor = $func($aInitialImageFilePath);
    // Ž¯à¥¤¥«ï¥¬ ®â®¡à ¦ ¥¬ãî ®¡« áâì
    $lCroppedImageWidth = 0;
    $lCroppedImageHeight = 0;
    $lInitialImageCroppingX = 0;
    $lInitialImageCroppingY = 0;
    if ($aNewImageWidth / $aNewImageHeight > $lInitialImageWidth / $lInitialImageHeight) {
        $lCroppedImageWidth = floor($lInitialImageWidth);
        $lCroppedImageHeight = floor($lInitialImageWidth * $aNewImageHeight / $aNewImageWidth);
        $lInitialImageCroppingY = floor(($lInitialImageHeight - $lCroppedImageHeight) / 2);
    } else {
        $lCroppedImageWidth = floor($lInitialImageHeight * $aNewImageWidth / $aNewImageHeight);
        $lCroppedImageHeight = floor($lInitialImageHeight);
        $lInitialImageCroppingX = floor(($lInitialImageWidth - $lCroppedImageWidth) / 2);
    }
    
    // ‘®§¤ ñ¬ ¤¥áªà¨¯â®à ¤«ï ¢ëå®¤­®£® ¨§®¡à ¦¥­¨ï
    $lNewImageDescriptor = imagecreatetruecolor($aNewImageWidth, $aNewImageHeight);
    imagecopyresampled($lNewImageDescriptor, $lInitialImageDescriptor, 0, 0, $lInitialImageCroppingX, $lInitialImageCroppingY, $aNewImageWidth, $aNewImageHeight, $lCroppedImageWidth, $lCroppedImageHeight);
    $func = 'image' . $lImageExtension;
    
    // á®åà ­ï¥¬ ¯®«ãç¥­­®¥ ¨§®¡à ¦¥­¨¥ ¢ ãª § ­­ë© ä ©«
    return $func($lNewImageDescriptor, $aNewImageFilePath);
}