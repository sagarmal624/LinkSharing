<div class="modal fade" id="shareDoc" role="dialog">
    <div class="modal-dialog">
        <g:form enctype="multipart/form-data" class="upload" name="fileinfo">
            <!-- Modal content-->
        %{--<g:uploadForm controller="resource" action="savedocument" class="form-horizontal">--}%
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Share Document</h4>
                </div>

                <div class="modal-body">
                    <form class="form-horizontal">
                        <div class="form-group">
                            <label class="col-xs-4">Document</label>

                            <div class="col-xs-8">
                                <g:field type="file" accept=".doc,.docx,.pdf" name="document" class="form-control"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-xs-4">Description</label>

                            <div class="col-xs-8">
                                <g:textArea name="description" class="form-control" rows="5" cols="40"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-xs-4">Topic</label>

                            <div class="col-xs-8">
                                <g:select name="topic" from="${com.intelligrape.linksharing.User.getSubscribedTopic(session?.email)}" class="form-control"/>
                            </div>
                        </div>
                    </form>
                </div>

                <div class="modal-footer">
                    <button type="submit" id="Share" name="saveDocumentResource" value="Share" class="btn btn-info">Share</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                </div>
            </div>
        </g:form>
    </div>
</div>
<script>
    $('#Share').click(function(){
        var oData = new FormData(document.forms.namedItem("fileinfo"));
        var url="${createLink(controller:'resource',action:'savedocument')}";
        $.ajax({
            url:url,
            type:'POST',
            data:oData,
            processData: false,  // tell jQuery not to process the data
            contentType: false ,
            success:function (req) {
                console.log(req.message)
            }
        });
    });
</script>