<?php

require_once("./config.php");

$sqlSelect = "SELECT * FROM products";
$result = $conn->query($sqlSelect);

if ($result->num_rows > 0) {
    $xml = new SimpleXMLElement('<?xml version="1.0" encoding="UTF-8"?><PRODUCT></PRODUCT>');
    while($row = $result->fetch_assoc()){
        $item = $xml->addChild("ITEM");
        foreach ($row as $key => $value){
            $item->addChild($key, htmlspecialchars($value));
        }
    }
    $xmlFile = "product.xml";
    $xml->asXML($xmlFile);
    echo($xmlFile);
} else {
    echo "Khong co data";
}

$conn->close();
?>