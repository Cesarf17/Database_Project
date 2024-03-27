<?php
// Cesar Frayre 1001742503
// Christopher Gonzalez 1001921715
$connection = mysqli_connect("localhost", "root", "", "arlington_sprouts");

if (!$connection) {
    die("Error: " . mysqli_connect_error());
}

// Q1: Display item details based on item name or item Id.
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["get_item_details"])) {
    $itemIdentifier = mysqli_real_escape_string($connection, $_POST["item_identifier"]);

    $sql = "SELECT * FROM item WHERE Iname = '$itemIdentifier' OR Iid = '$itemIdentifier'";
    $result = $connection->query($sql);

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            echo "item ID: " . $row["Iid"] . "<br>";
            echo "item Name: " . $row["Iname"] . "<br>";
            echo "Selling Price: $" . $row["Sprice"] . "<br>";
        }
    } else {
        echo "No results found for the specified item.";
    }
}

// Q2: Insert a new item and dynamically determine the item ID.
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["insert_item"])) {
    // Get user input
    $newitemName = mysqli_real_escape_string($connection, $_POST["new_item_name"]);
    $newitemPrice = mysqli_real_escape_string($connection, $_POST["new_item_price"]);

    $getMaxId = "SELECT MAX(Iid) AS maxId FROM ITEM";
    $resultMaxId = $connection->query($getMaxId);

    if ($resultMaxId->num_rows > 0) {
        $row = $resultMaxId->fetch_assoc();
        $newIid = $row["maxId"] + 1;
    } else {
        $newIid = 1;
    }

    $sqlInsert = "INSERT INTO item (Iid, Iname, Sprice) VALUES ('$newIid', '$newitemName', '$newitemPrice')";
    
    if ($connection->query($sqlInsert) === TRUE) {
        $lastInsertedItemId = $newIid;
        echo "New item '$newitemName' added successfully. Item ID: $lastInsertedItemId";
    } else {
        echo "Error: " . $sqlInsert . "<br>" . $connection->error;
    }
}

// Q3: Update a specific item
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["update_item_submit"])) {
    $searchInput = mysqli_real_escape_string($connection, $_POST["update_item"]);  // Updated variable name
    $updatedItemPrice = mysqli_real_escape_string($connection, $_POST["updated_item_price"]);
    $updatedItemName = mysqli_real_escape_string($connection, $_POST["updated_item_name"]);

    $updateSql = "UPDATE ITEM SET";

    if (!empty($updatedItemPrice)) {
        $updateSql .= " Sprice='$updatedItemPrice'";
        if (!empty($updatedItemName)) {
            $updateSql .= ", Iname='$updatedItemName'";
        }
        $updateSql .= " WHERE Iid='$searchInput' OR Iname='$searchInput'";

        if ($connection->query($updateSql) === TRUE) {
            echo "Item updated successfully.";
        } else {
            echo "Error: " . $updateSql . "<br>" . $connection->error;
        }
    } else {
        if (!empty($updatedItemName)) {
            $updateSql .= " Iname='$updatedItemName'";
            $updateSql .= " WHERE Iid='$searchInput' OR Iname='$searchInput'";

            if ($connection->query($updateSql) === TRUE) {
                echo "Item updated successfully.";
            } else {
                echo "Error: " . $updateSql . "<br>" . $connection->error;
            }
        } else {
            echo "Nothing to update.";
        }
    }
}


// Q4: Delete the item
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["delete_item"])) {
    $deleteInput = mysqli_real_escape_string($connection, $_POST["delete_input"]);

    // Delete from the item table based on name or id
    $deleteSql = "DELETE FROM ITEM WHERE Iid='$deleteInput' OR Iname='$deleteInput'";

    if ($connection->query($deleteSql) === TRUE) {
        echo "Item deleted successfully.";
    } else {
        echo "Error: " . $deleteSql . "<br>" . $connection->error;
    }
}

$connection->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Arlington Herbal Shop</title>
</head>
<body>
    <h2>Item Operations</h2>

    <!-- Q1: Display item details -->
    <form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
        <label for="item_identifier">Enter item Name or item ID:</label>
        <input type="text" id="item_identifier" name="item_identifier" required>
        <button type="submit" name="get_item_details">Get Item Details</button>
    </form>

    <hr>

    <!-- Q2: User Input -->
    <form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
        <label for="new_item_name">Enter the new item name:</label>
        <input type="text" id="new_item_name" name="new_item_name" required><br>
        <label for="new_item_price">Enter the new item price:</label>
        <input type="text" id="new_item_price" name="new_item_price" required><br>
        <button type="submit" name="insert_item">Insert Item</button>
    </form>

    <hr>

    <!-- Q3: Update a specific item -->
<form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
    <label for="update_item">Enter item to update:</label>
    <input type="text" id="update_item" name="update_item" required><br>
    <label for="updated_item_name">Enter the updated item name:</label>
    <input type="text" id="updated_item_name" name="updated_item_name"><br>
    <label for="updated_item_price">Enter the updated item price:</label>
    <input type="text" id="updated_item_price" name="updated_item_price"><br>
    <input type="submit" name="update_item_submit" value="Update Item">
</form>



    <!-- Q4: Delete the last item -->
    <form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
        <label for="delete_input">Enter the item to delete (name or id):</label>
        <input type="text" id="delete_input" name="delete_input" required><br>
        <button type="submit" name="delete_item">Delete Item</button>
    </form>
    
</body>
</html>
