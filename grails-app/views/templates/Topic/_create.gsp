<script type="text/javascript" src="${resource(dir:'js',file:'jquery-2.2.1.js' )}"></script>
<div class="modal fade" id="createTopic" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <div id="alertmsg4" class="hidden"><span id="spanmsg4"></span></div>
                <button id="closetopic"type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title" id="addContactModalLabel">Create Topic</h4>
                <div id="loaderId4" style="display: none">
                    <img src="${resource(dir:'images',file:'spinner.gif')}"/> Saving..
                </div>
            </div>
            <form id="ajaxform">
                <div class="modal-body">
                    <div class="form-group">
                        <div class="col-lg-2">
                            <label for="name">Name<span style="color:red">*</span>:</label>
                        </div>
                        <div class="col-lg-10">
                            <input type="text" required="" class="form-control" id="name" name="name" placeholder="Enter your Name"/>
                        </div>
                    </div>
                    <br><br>
                    <div class="form-group">
                        <div class="col-lg-2">
              <label>Visibility:</label>
                        </div>
                        <div class="col-lg-10">
                            <select class="form-control" id="visibility" name="visibility" data-toggle="tooltip" title="Delete Edit and private will show to topic creater and admin">
                                <option>PUBLIC</option>
                                <option>PRIVATE</option>
                            </select>
                        </div>
                    </div>
                    <br><br>
                </div>
                <div class="modal-footer">
                    <div class="row">

                        <div class="col-lg-4 col-lg-offset-2">
                            <button type="submit" id="save" class="btn btn-primary">Save</button> </div>
                        <div class="col-lg-3">
                            <button type="button"  class="btn btn-danger" data-dismiss="modal">Cancel</button>
                         </div>
                    </div>
                </div>
0            </form>
        </div>
    </div>

</div>
<script type="text/javascript">
    $("#ajaxform").submit(function(e)
    {
        $("#loaderId4").show()

        var postData = $(this).serializeArray();
        var formURL = "${g.createLink(action:"save",controller:"topic" )}";
        $.ajax(
                {
                    url : formURL,
                    type: "POST",
                    data : postData,
                    success:function(data, textStatus, jqXHR)
                    {
                        if(data.message!="This Topic name is already Exist!.Please Change Topic Name!") {
                            $("#spanmsg4").addClass("alert alert-success")
                            $("#loaderId4").hide();
                        }
                        else
                            $("#spanmsg4").addClass("alert alert-danger")

                        $("#spanmsg4").text(data.message)

                        $("#alertmsg4").toggleClass('hidden');
                        $("#ajaxform")[0].reset();
                        setTimeout(function(){$("#alertmsg4").toggleClass('hidden');$("#spanmsg4").removeClass("alert alert-success")}, 3000);

                    },
                    dataType: 'json',
                    error: function(jqXHR, textStatus, errorThrown)
                    {
                        $("#loaderId").hide();

                        $("#spanmsg4").addClass("alert alert-danger")
                        $("#spanmsg4").text(data.message);
                        $("#alertmsg4").toggleClass('hidden');
                        $("#ajaxform")[0].reset()
                        setTimeout(function(){$("#alertmsg4").toggleClass('hidden');$("#spanmsg4").removeClass("alert alert-success")}, 3000);

                    }

                });
        e.preventDefault();	//STOP default action
    });
</script>
