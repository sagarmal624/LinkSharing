<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
    <h2>Activate Modal with JavaScript</h2>
    <!-- Trigger the modal with a button -->
    <button type="button" class="btn btn-info btn-lg" id="myBtn">Open Modal</button>
  <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog" id="">
            <g:render template="/templates/LinkResource/editLinkResource"></g:render>

        </div>
    </div>
</div>
<script>
    $(document).ready(function(){
        $("#myBtn").click(function(){
            $("#myModal").modal();
        });
    });
</script>

</body>
</html>
