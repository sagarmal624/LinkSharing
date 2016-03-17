<div class="modal fade" id="sendInv" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Send Invitation</h4>
                <div id="alertmsg6" class="hidden"><span id="spanmsg6"></span></div>

            </div>
            <form id="emailForm" method="post">
             <div class="modal-body">
                    <div class="form-group">
                      <div class="col-lg-3">
                        <label for="email">Email-Id<span style="color:red">*</span>:</label>
                       </div>
                        <div class="col-lg-8">

                            <input type="email" class="form-control" required="" id="emailto" name="emailto" placeholder="Enter your Email-Id">
                      </div>
                    </div>
                    <br><br><br>
                    <div class="form-group">
                        <div class="col-lg-3">
                            <label>Topic<span style="color:red">*</span>:</label>
                        </div>
                        <div class="col-lg-8">
                            <select required="" class="form-control" name="topicname">
                                <g:each in="${SubscribedTopicList}">

                                     <option>${it}</option>
                                </g:each>
                            </select>
                        </div>
                        <br><br>
                    </div>
            </div>
            <div class="modal-footer">
                <div class="row">
                    <div id="loaderId6" style="display: none">
                        <img src="${resource(dir:'images',file:'spinner.gif')}"/> Sending...
                    </div>

                    <div class="col-lg-4 col-lg-offset-2">
                        <button type="submit" name="invite" id="invite" class="btn btn-success">Invite</button>
                    </div>
                    <div class="col-lg-4">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                    </div>
                </div>
            </div>
        </form>

        </div>
    </div>
</div>
<script type="text/javascript">
    $("#emailForm").submit(function(e)
    {
        $("#loaderId6").show()

        var postData = $(this).serializeArray();
        var formURL = "${g.createLink(action:"sendinvitation",controller:"user" )}";
        $.ajax(
                {
                    url : formURL,
                    type: "POST",
                    data : postData,
                    success:function(data, textStatus, jqXHR)
                    {
                        if(data.message!="Error During Mail Sending!") {
                            $("#spanmsg6").addClass("alert alert-success")
                            $("#loaderId6").hide();
                        }
                        else
                            $("#spanmsg6").addClass("alert alert-danger")

                        $("#spanmsg6").text(data.message)

                        $("#alertmsg6").toggleClass('hidden');
                        $("#emailForm")[0].reset();
                        setTimeout(function(){
                            $("#alertmsg6").toggleClass('hidden');$("#spanmsg6").removeClass("alert alert-success")
                        location.reload();
                        }, 500);

                    },
                    dataType: 'json',
                    error: function(jqXHR, textStatus, errorThrown)
                    {
                        $("#loaderId").hide();

                        $("#spanmsg6").addClass("alert alert-danger")
                        $("#spanmsg6").text(data.message);
                        $("#alertmsg6").toggleClass('hidden');
                        $("#emailForm")[0].reset()
                        setTimeout(function(){$("#alertmsg6").toggleClass('hidden');$("#spanmsg6").removeClass("alert alert-success")}, 3000);

                    }

                });
        e.preventDefault();	//STOP default action
    });
</script>