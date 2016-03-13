<div class="modal fade" id="forgotPassword" role="dialog">
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

            <g:form id="forgotPasswordform" controller="user" action="forgotPassword">
                <div class="modal-body">
                    <div class="form-group">
                        <div class="col-lg-2">
                            <label for="emailto">Email-Id<span style="color:red">*</span>:</label>
                        </div>
                        <div class="col-lg-10">
                            <input type="email" required="" class="form-control" id="email" name="email" placeholder="Enter your Email-Id"/>
                        </div>
                    </div>
                    <br><br>
                </div>
                <div class="modal-footer">
                    <div class="row">

                        <div class="col-lg-4 col-lg-offset-2">
                            <input type="submit" id="send" class="btn btn-primary" value="Send"></div>
                        <div class="col-lg-3">
                            <button type="button"  class="btn btn-danger" data-dismiss="modal">Cancel</button>
                        </div>
                    </div>
                </div>
                           </g:form>
        </div>
    </div>
</div>
