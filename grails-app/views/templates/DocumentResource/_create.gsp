<div class="modal fade" id="shareDoc" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <div id="alertmsg2" class="hidden"><span id="spanmsg2"></span></div>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Share Document</h4>
            </div>
            <g:form enctype="multipart/form-data" class="upload" name="fileinfodata">

                <div class="modal-body">
                        <div class="form-group">
                            <div class="col-lg-3">
                                <label>Document Name<span style="color:red">*</span>:</label>
                            </div>

                            <div class="col-lg-8">
                                <input required="true" type="file" class="form-control offset-5" id="url" name="document"
                                       placeholder="Enter URL">
                            </div>
                        </div>
                        <br><br><br>

                        <div class="form-group">
                            <div class="col-lg-3">
                                <label>Description:</label>
                            </div>

                            <div class="col-lg-8">
                                <textarea required="true" class="form-control" cols="15" name="description"></textarea>
                            </div>
                        </div>
                        <br><br><br>

                        <div class="form-group">
                            <div class="col-lg-3">
                                <label></label>Topic<span style="color:red">*</span>:</label>
                            </div>

                            <div class="col-lg-8">

                            <g:select name="topic" required="" from="${SubscribedTopicList}" class="form-control"/>

                        </div>
                        <br><br>
                    </div>
            </div>

            <div class="modal-footer">
                <div class="row">
                    <div id="loaderId2" clas="col-lg-2" style="display: none" %{--class="loader pull-left hidden"--}%>
                        <img src="${resource(dir:'images',file:'spinner.gif')}"/> Saving..
                    </div>

                    <div class="col-lg-4">
                        <button type="button" id="shareDocument" name="saveDocumentResource" value="Share"
                                class="btn btn-success col-lg-offset-2">Share</button>
                    </div>

                    <div class="col-lg-4">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                    </div>
                </div>
            </div>
            </g:form>

        </div>
    </div>
</div>
<script>
    $('#shareDocument').click(function () {
        $("#loaderId2").show();
        var oData = new FormData(document.forms.namedItem("fileinfodata"));
        var url = "${createLink(controller:'document',action:'saveDocument')}";
        $.ajax({
            url: url,
            type: 'POST',
            data: oData,
            processData: false,  // tell jQuery not to process the data
            contentType: false,
            success: function (data) {
                if (data.message != "Document is not Uploaded due to Some Error") {
                    $("#spanmsg2").addClass("alert alert-success")
                    $("#loaderId2").hide();
                }
                else
                    $("#spanmsg2").addClass("alert alert-danger")

                $("#spanmsg2").text(data.message)

                $("#alertmsg2").toggleClass('hidden');

                 $('[name="fileinfodata"]')[0].reset()
                setTimeout(function () {
                    $("#alertmsg2").toggleClass('hidden');
                    $("#spanmsg2").removeClass("alert alert-success")
                }, 3000);
            },
            error: function (jqXHR, textStatus, errorThrown) {
                $("#spanmsg2").addClass("alert alert-danger")
                $("#spanmsg2").text(data.message)
                $("#alertmsg2").toggleClass('hidden');
                 $('[name="fileinfodata"]')[0].reset()
                setTimeout(function () {
                    $("#alertmsg2").toggleClass('hidden');
                    $("#spanmsg2").removeClass("alert alert-success")
                }, 3000);

            }

        });
    });
</script>