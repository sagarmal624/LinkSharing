<%@page import="com.intelligrape.linksharing.Topic" %>
%{--${topics}--}%
<g:each in="${topics}" var="topic">
    ${topic.name}
    <g:each var="user" in="${Topic.getSubscribedUsers(topic.name)}">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${user}<br>
    </g:each>
</g:each>
