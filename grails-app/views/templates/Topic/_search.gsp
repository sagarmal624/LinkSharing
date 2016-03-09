<script type="text/javascript">
   var searchResourceAndTopic=function searchPost(description) {
    console.log(description)
        <g:remoteFunction  controller="resource" action="search"  params="\'description=\'+description" onSuccess="searchPostResponse(data,textStatus)"/>
    };
    function searchPostResponse(data, textStatus) {
        if (data) {
            var obj = eval(data.resources)
            $("#searchposts").addClass("dropdown-toggle");
            $("#searchposts").attr("data-toggle", "dropdown");

            if ($("#searchposts").val() == null || $("#searchposts").val() == "") {
                $('[name="postsbox"]').empty();
                $('[name="postsbox"]').text('Record not Found');
            }
            $.each(obj, function (key, value) {
               // $('[name="postsbox"]').text(obj.length+" Matching Records are Found");
//                console.log(key + ": " + value.id);
                console.log(value);
                $('[name="postsbox"]').append(
                        "<li>" +

"<div class='item'>"+
        "<img src='../dist/img/user8-128x128.jpg' alt='user image' class='online'>"+
                "<p class='message'>"+
                "<a href='#' class='name'>"+
                "<small class='text-muted pull-right'><i class='fa fa-clock-o'></i> 2:15"+
                "</small>"+
                "${topicDetails?.name}"+
                "</a>"+

                "</p>"+

                "<div class='attachment'>"+

                "<span class='text-justify'>"
                 + value.description +
                "</span>"+
                "<br>"+

                "<img src='../dist/img/facebook.png'/>"+
                "<img src='../dist/img/twtr.png'/>"+
                "<img src='../dist/img/google.png'/> &nbsp;&nbsp;"+

                "<u><ls:isRead resource='${value?.id}'/></u>&nbsp;&nbsp;"+

                "<g:if test='${session.email==value?.createdBy?.email}'>"+
                "<a href='#'><u>Edit</u></a>&nbsp;&nbsp;"+
                "</g:if>"+


                "<g:if test='${(value instanceof com.intelligrape.linksharing.Link_Resource)}'>"+
                "<a href="${value?.url}" target='_blank'><u>View Full Site</u></a>"+
                "&nbsp;&nbsp;"+
                "</g:if>"+
                %{--"<g:else>"+--}%
//                "<a href='#' target='_blank'><u>Download</u></a>&nbsp;&nbsp;"+
                %{--"</g:else>"+--}%
                "<a href='#'><u>View Post</u></a>&nbsp;&nbsp;"+


                " </div>"+
                "</div>"+
                "<li>"
;
            });

        }
    }
</script>