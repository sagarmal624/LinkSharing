<script type="text/javascript">

    var topic = function searchTopic(description) {
        <g:remoteFunction  controller="resource" action="search"  params="\'description=\'+description" onSuccess="searchResponse(data,textStatus)"/>
    };

    function searchResponse(data, textStatus) {
        if (data) {
            var obj = eval(data.resources)
            $("#searchform").addClass("dropdown-toggle");
            $("#searchform").attr("data-toggle", "dropdown");

            if ($("#searchform").val() == null || $("#searchform").val() == "") {
                $("#dropdownsearch").empty();
                $("#dropdownheader").text('Record not Found');
            }
            $.each(obj, function (key, value) {
                $("#dropdownheader").text(obj.length+" Matching Records are Found");
                console.log(key + ": " + value.id);

                $("#dropdownsearch").append(
                        "<li>" +
                        "<a href='${createLink(controller:'linkSharing',action:'showResource')}?id="+value.id+"'>" +
                        "<h4>" + value.description + "<small>" +
                        "<i class='fa fa-clock-o'></i> 5 mins</small>" +
                        "</h4>" +
                        "</a>" +
                        "</li>");
            });

        }
    }
</script>