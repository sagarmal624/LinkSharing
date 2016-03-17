%{--<script type="text/javascript" src="${resource(dir: 'js', file: 'jquery-2.2.1.js')}"></script>--}%
<%@ page import="com.intelligrape.linksharing.User; com.ttnd.LinkSharing.*" %>
<div class="modal fade" id="shareLink" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <div id="alertmsg1" class="hidden"><span id="spanmsg1"></span></div>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title" id="addContactModalLabel">Share Link</h4>
            </div>

            <form id="linkshareform">
                <div class="modal-body">
                    <div class="form-group">
                        <div class="col-lg-2">
                            <label for="url">Link<span style="color:red">*</span>:</label>
                        </div>

                        <div class="col-lg-10">
                            <input type="url" required="" class="form-control" id="url" name="url"
                                   placeholder="Link..."/>
                        </div>
                    </div>
                    <br><br>

                    <div class="form-group">
                        <div class="col-lg-2">
                            <label for="description">Description<span style="color:red">*</span>:</label>
                        </div>

                        <div class="col-lg-10">
                            <g:textArea required="" cols="12" class="form-control" id="description" name="description"
                                        placeholder="Description..."/>
                        </div>
                    </div>
                    <br><br><br><br>

                    <div class="form-group">
                        <div class="col-lg-2">
                            <label>Topic:</label>
                        </div>

                        <div class="col-lg-10">

                            <select class="form-control" id="topicname" name="topicname" data-toggle="tooltip"
                                    title="Share Link with Given Topic Name">
                                <g:each in="${SubscribedTopicList}">
                                    <option>${it}</option>
                                </g:each>

                            </select>
                        </div>
                    </div>
                    <br><br>
                </div>

                <div class="modal-footer">
                    <div class="row">

                        <div id="loaderId1" style="display: none" class="col-lg-2">
                            <img src="${resource(dir: 'images', file: 'spinner.gif')}"/> Saving..
                        </div>

                        <div class="col-lg-4 col-lg-offset-2">
                            <button type="submit" id="save" class="btn btn-success">Save</button></div>

                        <div class="col-lg-3">
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<script type="text/javascript">

    $("#linkshareform").submit(function (e) {
        $("#loaderId1").show()


        var postData = $(this).serializeArray();
        var formURL = "${g.createLink(action:"save",controller:"link" )}";
        $.ajax(
                {
                    url: formURL,
                    type: "POST",
                    data: postData,
                    success: function (data, textStatus, jqXHR) {
                        if (data.message != "Record is not saved due to not Valid URL") {
                            $("#spanmsg1").addClass("alert alert-success")
                            $("#loaderId1").hide();
                        }
                        else
                            $("#spanmsg1").addClass("alert alert-danger")

                        $("#spanmsg1").text(data.message)

                        $("#alertmsg1").toggleClass('hidden');
                        $("#linkshareform")[0].reset()
                        setTimeout(function () {
                            $("#alertmsg1").toggleClass('hidden');
                            $("#spanmsg1").removeClass("alert alert-success");
                            location.reload();

                        }, 100);

                    },
                    dataType: 'json',
                    error: function (jqXHR, textStatus, errorThrown) {
                        $("#spanmsg1").addClass("alert alert-danger")
                        $("#spanmsg1").text(data.message)
                        $("#alertmsg1").toggleClass('hidden');
                        $("#linkshareform")[0].reset()
                        setTimeout(function () {
                            $("#alertmsg1").toggleClass('hidden');
                            $("#spanmsg1").removeClass("alert alert-success")
                        }, 100);

                    }

                });
        e.preventDefault();	//STOP default action
    });
</script>
