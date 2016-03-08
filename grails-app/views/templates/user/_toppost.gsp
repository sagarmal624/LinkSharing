<g:each var="post" in="${toppost}">
    <div class="row" style="border-bottom: 1px solid gray;padding-bottom: 10px">
        <div class="col-lg-2">
            <span>
                <asset:image src="1.png"  style="border:1px solid"></asset:image>
            </span>
        </div>
        <div class="col-lg-10">
            <div class="row">
                <div class="col-lg-4">
                    ${post?.createdBy}
                </div>
                <div class="col-lg-3">@ ${post?.createdBy} </div>
                <div class="col-lg-2"> 5min</div>
                <div class="col-lg-3">
                    <span style="color:blue">${post?.topicname}</span>
                </div>
            </div>
            ${post?.description}
            <div class="row">
                <div class="col-lg-9">
                    <asset:image src="facebook.png"></asset:image>
                    <asset:image src="twtr.png"></asset:image>
                    <asset:image src="google.png"></asset:image>
                </div>
                <div class="col-lg-3">

                    <g:if test="${post?.url}">
                        <a href="${post?.url}"><u>View Post</u></a>
                    </g:if>
                    <g:else>
                        <a href="${post?.filepath}"><u>Download</u></a>
                    </g:else>

                </div>
            </div>
        </div>
    </div>
</g:each>
