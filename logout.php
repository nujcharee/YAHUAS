<html>

<?php
if(isset($_GET['logout'])) {
    session_destroy();
}
?>
Successfully log-out
</html>
