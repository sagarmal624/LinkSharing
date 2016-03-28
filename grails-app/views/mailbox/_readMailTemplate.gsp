<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Notification email template</title>
</head>

<body bgcolor="#8d8e90">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#8d8e90">
    <tr>
        <td><table width="600" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" align="center">
            <tr>
                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="61"><a href="http://localhost:8080/" target="_blank"><img
                                src="http://www.pahrodf.org.ph/encoders/henry/newsletter/newsletter_blue/PROMO-GREEN2_01_01.jpg"
                                width="61" height="76" border="0" alt=""/></a></td>
                        <td width="144"><a href="http://localhost:8080/" target="_blank"><img
                                src="http://www.tothenew.com/images/xlogo-large.png.pagespeed.ic.mNf2OdVkJv.png"
                                width="144" height="76" border="0" alt=""/></a></td>
                        <td width="393"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td height="46" align="right" valign="middle"><table width="100%" border="0"
                                                                                     cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="67%" align="right"><font
                                                style="font-family:'Myriad Pro', Helvetica, Arial, sans-serif; color:#68696a; font-size:8px; text-transform:uppercase"><a
                                                    href="http://localhost:8080/linkSharing/showResource?id=${resource?.topic?.id}"
                                                    style="color:#68696a; text-decoration:none"><strong>SUBSCRIBE TOPIC</strong>
                                            </a></font></td>
                                        <td width="29%" align="right"><font
                                                style="font-family:'Myriad Pro', Helvetica, Arial, sans-serif; color:#68696a; font-size:8px"><a
                                                    href="http://localhost:8080/"
                                                    style="color:#68696a; text-decoration:none; text-transform:uppercase"><strong>VIEW AS A WEB PAGE</strong>
                                            </a></font></td>
                                        <td width="4%">&nbsp;</td>
                                    </tr>
                                </table></td>
                            </tr>
                            <tr>
                                <td height="30"><img
                                        src="http://www.pahrodf.org.ph/encoders/henry/newsletter/newsletter_blue/PROMO-GREEN2_01_04.jpg"
                                        width="393" height="30" border="0" alt=""/></td>
                            </tr>
                        </table></td>
                    </tr>
                </table></td>
            </tr>
            <tr>
                <td align="center">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="10%">&nbsp;</td>
                        <td width="80%" align="left" valign="top"><font
                                style="font-family: Georgia, 'Times New Roman', Times, serif; color:#010101; font-size:24px"><strong><em>Hi ${session.user.name},</em>
                            </strong></font><br/><br/>
                            <font style="font-family: Verdana, Geneva, sans-serif; color:#666766; font-size:13px; line-height:21px">
                                <p align="justify">
                                ${resource.description}
                                </p><br/>
                                On behalf of the Company<br/>
                                support@linkSharing.com</font></td>
                        <td width="10%">&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td align="right" valign="top"><table width="108" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td><img
                                        src="https://raw.githubusercontent.com/AjayChangulani/showmethemoney/master/showmethemoney/src/main/webapp/images/PROMO-GREEN2_04_01.jpg"
                                        width="108" height="9" style="display:block" border="0" alt=""/></td>
                            </tr>
                            <tr>
                                <td align="center" valign="middle" bgcolor="#03bcda"><font
                                        style="font-family: Georgia, 'Times New Roman', Times, serif; color:#ffffff; font-size:14px"><em><a
                                            href="http://localhost:8080/" target="_blank"
                                            style="color:#ffffff; text-decoration: underline">click here</a></em></font>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" valign="middle" bgcolor="#03bcda"><font
                                        style="font-family: Georgia, 'Times New Roman', Times, serif; color:#ffffff; font-size:15px"><strong><a
                                            href="http://localhost:8080/" target="_blank"
                                            style="color:#ffffff; text-decoration:none"><em>LinkSharing</em></a></strong>
                                </font></td>
                            </tr>
                            <tr>
                                <td height="10" align="center" valign="middle" bgcolor="#03bcda"></td>
                            </tr>
                        </table></td>
                        <td>&nbsp;</td>
                    </tr>
                </table></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><img src="http://www.pahrodf.org.ph/encoders/henry/newsletter/newsletter_blue/PROMO-GREEN2_07.jpg"
                         width="598" height="7" style="display:block" border="0" alt=""/></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <g:if test="${!forwardMail}">
            <tr>
                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="13%" align="center">&nbsp;</td>
                        <td width="14%" align="center"><font
                                style="font-family:'Myriad Pro', Helvetica, Arial, sans-serif; color:#010203; font-size:9px; text-transform:uppercase"><a
                                    href="#"
                                    style="color:#010203; text-decoration:none" onclick="deleteResource(${resource.id})"><strong>DELETE</strong></a></font>
                        </td>
                        <td width="2%" align="center"><font
                                style="font-family:'Myriad Pro', Helvetica, Arial, sans-serif; color:#010203; font-size:9px; text-transform:uppercase"><strong>|</strong>
                        </font></td>


                        <g:set var="url" value="${""}"></g:set>

                        <g:if test="${resource.class==com.intelligrape.linksharing.LinkResource}">
                            <%url=resource?.url%>
                            <td width="9%" align="center"><font
                                    style="font-family:'Myriad Pro', Helvetica, Arial, sans-serif; color:#010203; font-size:9px; text-transform:uppercase"><a
                                        href="${resource?.url}"
                                        style="color:#010203; text-decoration:none" target="_blank"><strong>VIEW FULL</strong></a>
                            </font>

                            </td>



                        </g:if>
                        <g:else>
                            <%url='http://linksharing.com/'%>


                            <td width="9%" align="center"><font
                                    style="font-family:'Myriad Pro', Helvetica, Arial, sans-serif; color:#010203; font-size:9px; text-transform:uppercase"><a
                                        href="${createLink(controller:'document',action:'downloadDocument')}?id=${resource?.id}"
                                        style="color:#010203; text-decoration:none" target="_blank"><strong>DOWNLOAD</strong></a>
                            </font>

                            </td>


                        </g:else>





                        <td width="2%" align="center"><font
                                style="font-family:'Myriad Pro', Helvetica, Arial, sans-serif; color:#010203; font-size:9px; text-transform:uppercase"><strong>|</strong>
                        </font></td>

                        <g:if test="${resource.isUnread(session.user,resource.id)}">
                            <td width="10%" align="center"><font
                                    style="font-family:'Myriad Pro', Helvetica, Arial, sans-serif; color:#010203; font-size:9px; text-transform:uppercase"><a
                                        href="#" onclick="markAsUnRead(${resource.id})"
                                        style="color:#010203; text-decoration:none"><strong>UNREAD
                                    </strong></a></font></td>



                        </g:if>
                        <g:else>
                            <td width="10%" align="center"><font
                                    style="font-family:'Myriad Pro', Helvetica, Arial, sans-serif; color:#010203; font-size:9px; text-transform:uppercase"><a
                                        href="#" onclick="markAsRead(${resource.id})"
                                        style="color:#010203; text-decoration:none"><strong>READ</strong></a></font></td>
                        </g:else>





                        <td width="2%" align="center"><font
                                style="font-family:'Myriad Pro', Helvetica, Arial, sans-serif; color:#010203; font-size:9px; text-transform:uppercase"><strong>|</strong>
                        </font></td>
                        <td width="11%" align="center"><font
                                style="font-family:'Myriad Pro', Helvetica, Arial, sans-serif; color:#010203; font-size:9px; text-transform:uppercase"><a
                                    href="${createLink(controller:'linkSharing', action: 'forwardMail')}?id=${resource?.id}&totalUnreadMail=${totalUnreadMail}"
                                    style="color:#010203; text-decoration:none"><strong>FORWARD</strong></a></font></td>
                        <td width="2%" align="center"><font
                                style="font-family:'Myriad Pro', Helvetica, Arial, sans-serif; color:#010203; font-size:9px; text-transform:uppercase"><strong>|</strong>
                        </font></td>
                        <td width="17%" align="center"><font
                                style="font-family:'Myriad Pro', Helvetica, Arial, sans-serif; color:#010203; font-size:9px; text-transform:uppercase"><a
                                    href="http://localhost:8080/"
                                    style="color:#010203; text-decoration:none"><strong>STAY CONNECTED</strong></a>
                        </font></td>
                        <td width="4%" align="right"><a href="https://www.facebook.com/dialog/feed?app_id=1705044979707974&picture=http://www.seeamanaboutablog.co.uk/wp-content/uploads/2011/01/ShareThis-socilal-media-share-buttons.png&display=popup&caption= ${resource?.topic}&link=${url}&description=${resource?.description}&redirect_uri=http://localhost:8080/linkSharing/dashboard/" target="_blank"><img
                                src="http://i414.photobucket.com/albums/pp225/titansgs/PROMO-GREEN2_09_01-1.jpg"
                                alt="facebook" width="22" height="19" border="0"/></a></td>
                        <td width="5%" align="center"><a href="https://plus.google.com/share?url=${url}" onclick="javascript:window.open(this.href,
                        '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;"><img
                            target="_blank"><img
                                src="../../images/gplus.png"
                                alt="Google plus" width="24" height="24" border="0"/></a></td>
                        <td width="4%" align="right"><a href="http://www.linkedin.com/" target="_blank"><img
                                src="http://i414.photobucket.com/albums/pp225/titansgs/PROMO-GREEN2_09_03-1.jpg"
                                alt="linkedin" width="20" height="19" border="0"/></a></td>
                        <td width="5%">&nbsp;</td>
                    </tr>
                </table></td>
            </tr>
            </g:if>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td align="center"><font
                        style="font-family:'Myriad Pro', Helvetica, Arial, sans-serif; color:#231f20; font-size:8px"><strong>Head Office &amp; Registered Office | To The New Digital, Logix Techno Park
                    Tower B, 4th Floor , Sector - 127, Noida,Uttar Pradesh,201304 | Tel: 8826100625 | <a
                            href="http://localhost:8080/"
                            style="color:#010203; text-decoration:none">customercare@linkSharing.com</a></strong></font>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table></td>
    </tr>
</table>
</body>
</html>