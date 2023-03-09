<%@ page language="C#" autoeventwireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>Guia de Festas Curitiba</title>
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
<link href="Styles.css" rel="stylesheet" type="text/css" />
<meta name="robots" content="index,follow" />
<meta name="url" content="www.guiadefestascuritiba.com.br">
<meta name="description" content="Tudo para sua festa desde a locação do espaço até a animação, materias para festa, e tudo que voce precisa.">
<meta name="charset" content="ISO-8859-1">
<meta name="autor" content="Andre Budziak Neto">
<meta name="revisit-after" content="1">
<meta http-equiv="imagetoolbar" content="no">
<script type="text/javascript">
    var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
    document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
    try {
        var pageTracker = _gat._getTracker("UA-7305791-1");
        pageTracker._trackPageview();
    } catch (err) { }
</script>


</head>
<body topmargin="0" leftmargin="0" bgcolor="#DDDDDD" oncontextmenu="return false;">
   <center> 
    <form id="frmPrincipal" runat="server">    
    <table style="width: 760px;" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td align="center" >
        <table border="0" cellpadding="0" cellspacing="0" style="width:100%;" 
            bgcolor="White">
            <tr>
                <td align="center">
                   <table width="760px" border="0" style="border-collapse: collapse" 
                        bordercolor="#111111" cellpadding="0" cellspacing="0">
                   <tr>
                      <td align="center" colspan="3">
                         <iframe id="frTopo" runat="server" src="topo.aspx" width="100%" height="230px" 
                             frameborder="0" marginheight="0" marginwidth="0" scrolling="no"  
                              style="padding:0" name="I1">    
                         </iframe>
                      </td>                  
                  </tr>
                  </table>
                
                </td>
                <td>&nbsp;
                    </td>
            </tr>
        </table>
            </td>
        
        </tr>        
        <tr>
            <td align="center" bgcolor="#FFFFFF" valign="middle">
                <table border="0" cellpadding="0" cellspacing="0" style="width: 300px;">
                    <tr>
                        <td>
                                        
                           <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                                        </cc1:ToolkitScriptManager>
                                        <asp:TextBox ID="txtValor" runat="server" Width="250px" Font-Names="Arial" 
                                            Font-Size="11px"></asp:TextBox>                                           
                                         <cc1:AutoCompleteExtender ID="AutoCompleteExtenderDemo" 
                                         CompletionListCssClass="AutoCompleteExtender_CompletionListItem"
                                            runat="server"             
                                            TargetControlID="txtValor" 
                                            ServicePath="WebService.asmx" 
                                            ServiceMethod="RetornaNomeCliente"
                                            MinimumPrefixLength="1"                                                                           
                                            EnableCaching="false" >        
                                        </cc1:AutoCompleteExtender>                                
                                       
                                       
                                       
                                    </td>
                        <td>
                                        <asp:ImageButton ID="btnBusca" runat="server" 
                                            ImageUrl="~/imagens/PESQUISAR.png" onclick="btnBusca_Click" />
                                    </td>
                        <td>&nbsp;
                            </td>
                    </tr>
                </table>
            </td>
        </tr>        
        <tr>
            <td align="center" bgcolor="#FFFFFF">&nbsp;
                </td>
        </tr>        
        </table> 
        
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    
           
     <table border="0" cellpadding="0" cellspacing="0" 
        style="border-collapse: collapse" bordercolor="#111111" width="760px" 
        id="tblPrincipal" bgcolor="#FFFFFF">
     <tr>
       <td align="center" valign="top" bgcolor="#FFFFDF" class="style1">
       
       <div align="left">
         <table border="0" cellpadding="0" cellspacing="0" 
               style="border-collapse: collapse" bordercolor="#111111" width="180px" 
               id="AutoNumber3">
           <tr>
             <td width="180" height="30px" bgcolor="#FFCC66">
             
                 <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                     SelectMethod="montamenu" TypeName="WebService">
                     <SelectParameters>
                         <asp:Parameter DefaultValue="1" Name="opcao" Type="String" />
                     </SelectParameters>
                 </asp:ObjectDataSource>
                     
                 <asp:Label ID="lblLocais" runat="server" Text="LOCAIS" Font-Bold="True" 
                     Font-Size="14px" ForeColor="#FF6600" Font-Names="Verdana"></asp:Label>
              </td>
           </tr>
           <tr>
             <td>             
             <!-- Menu Um  !-->
                
                <asp:Panel ID="pnMenu" runat="server">
                   <asp:GridView ID="grdMenu" runat="server" Width=180px GridLines="None" 
                      ShowHeader="False" AutoGenerateColumns="False" BorderStyle="None" 
                        DataSourceID="ObjectDataSource2" >
                       <RowStyle BorderStyle="None" />
                      <Columns>
                         <asp:HyperLinkField DataNavigateUrlFields="Codigo,Descricao" DataTextField="descricao" ControlStyle-Font-Overline="false"                            
                              DataNavigateUrlFormatString="categoria.aspx?tipo_categoria={0}" 
                              DataTextFormatString="&nbsp;&nbsp;&nbsp;&nbsp;{0}"  >
                            <ControlStyle CssClass="TituloBrancoa2" />
                            <ItemStyle CssClass="TituloBrancoa2" Height="18px" HorizontalAlign="Left" />
                         </asp:HyperLinkField>
                      </Columns>
                   </asp:GridView>             
                </asp:Panel>      
              
             </td>
           </tr>
           <tr>
             <td width="180" height="20" bgcolor="#FFFFDF">&nbsp;
                 </td>
           </tr>
           <tr>
             <td width="180" height="30px" bgcolor="#FFCC66">
                 <asp:Label ID="lblServicos" runat="server" Text="SERVIÇOS" Font-Bold="True" 
                     Font-Size="14px" ForeColor="#FF6600" Font-Names="Verdana"></asp:Label>             
                  <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" 
                     SelectMethod="montamenu" TypeName="WebService">
                     <SelectParameters>
                        <asp:Parameter DefaultValue="2" Name="opcao" Type="String" />
                     </SelectParameters>
                  </asp:ObjectDataSource>
                     
             </td>
           </tr>
           <tr>
             <td>
             <!-- Menu Dois  !-->
                          
                <asp:Panel ID="pnMenu2" runat="server">
                   <asp:GridView ID="grdMenu2" runat="server" Width=180px GridLines="None" 
                      ShowHeader="False" AutoGenerateColumns="False" BorderStyle="None" 
                        DataSourceID="ObjectDataSource3" >
                       <RowStyle BorderStyle="None" />
                      <Columns>
                         <asp:HyperLinkField DataNavigateUrlFields="Codigo,Descricao" DataTextField="descricao" ControlStyle-Font-Overline="false"
                            DataNavigateUrlFormatString="categoria.aspx?tipo_categoria={0}" 
                            DataTextFormatString="&nbsp;&nbsp;&nbsp;&nbsp;{0}" >
                            <ControlStyle CssClass="TituloBrancoa2" />
                            <ItemStyle CssClass="TituloBrancoa2" Height="18px" HorizontalAlign="Left" />
                         </asp:HyperLinkField>
                      </Columns>
                   </asp:GridView>             
                </asp:Panel>                                                   
           
                
             </td>
             
           </tr>
         </table>
       </div>
       </td>
      <td width="397" align="center" valign="top" bgcolor="#FFFFFF">
           <table border="0" cellpadding="0" cellspacing="0" style="width:380px;">
               <tr>
                   <td align="center" >
                    
           <font face=verdana size=1 color=6495ed>
           
               
                <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="350" height="140" title="curitiboom">
                <param name="movie" value="banners/curitiboom%20banner.swf">
                <param name="quality" value="High">
                <param name="_cx" value="9260">
                <param name="_cy" value="3704">
                <param name="FlashVars" value>
                <param name="Src" value="banners/curitiboom banner.swf">
                <param name="Play" value="0">
                <param name="Loop" value="-1">
                <param name="SAlign" value>
                <param name="Menu" value="-1">
                <param name="Base" value>
                <param name="AllowScriptAccess" value>
                <param name="Scale" value="ShowAll">
                <param name="DeviceFont" value="0">
                <param name="EmbedMovie" value="0">
                <param name="BGColor" value>
                <param name="SWRemote" value>
                <param name="MovieData" value>
                <param name="SeamlessTabbing" value="1">
                <param name="Profile" value="0">
                <param name="ProfileAddress" value>
                <param name="ProfilePort" value="0">
                <param name="AllowNetworking" value="all">
                <param name="AllowFullScreen" value="false">
                <param name="wmode" value="transparent">
                <embed src="banners/curitiboom%20banner.swf" quality="high" 
                    pluginspage="http://www.macromedia.com/go/getflashplayer" 
                    type="application/x-shockwave-flash" width="350" height="140"  wmode="transparent"></embed></object>

           
              </font>
                    
                  </td>
                 
               </tr>


<tr><td align="center">&nbsp;</td></tr>
<tr><td align="center">
<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="Object1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" 		width="350" height="140">
<param name="movie" value="banners/centopeia350x140.swf">
<param name="quality" value="High">
<embed src="banners/centopeia350x140.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" 
type="application/x-shockwave-flash" name="obj14" width="350" height="140" 
quality="High" ></object>              
</td>
</tr>


<tr><td align="center">&nbsp;</td></tr>
<tr><td align="center">
<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="Object1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" 		width="350" height="140">
<param name="movie" value="banners/festejando350x140.swf">
<param name="quality" value="High">
<embed src="banners/festejando350x140.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" 
type="application/x-shockwave-flash" name="obj14" width="350" height="140" 
quality="High" ></object>              
</td>
</tr>




<tr><td align="center">&nbsp;</td></tr>
<tr><td align="center">
<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="Object1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" 		width="350" height="140">
<param name="movie" value="banners/arcedenoe350x140.swf">
<param name="quality" value="High">
<embed src="banners/arcedenoe350x140.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" 
type="application/x-shockwave-flash" name="obj14" width="350" height="140" 
quality="High" ></object>              
</td>
</tr>


<tr><td align="center">&nbsp;</td></tr>
<tr><td align="center">
<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="Object1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" 		width="350" height="140">
<param name="movie" value="banners/oogahome.swf">
<param name="quality" value="High">
<embed src="banners/oogahome.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" 
type="application/x-shockwave-flash" name="obj14" width="350" height="140" 
quality="High" ></object>              
</td>
</tr>


<tr><td align="center">&nbsp;</td></tr>
<tr><td align="center">
<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="Object1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" 		width="350" height="140">
<param name="movie" value="banners/comemorekids350x140.swf">
<param name="quality" value="High">
<embed src="banners/comemorekids350x140.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" 
type="application/x-shockwave-flash" name="obj14" width="350" height="140" 
quality="High" ></object>              
</td>
</tr>


<tr><td align="center">&nbsp;</td></tr>
<tr><td align="center">
<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="Object1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" 		width="350" height="140">
<param name="movie" value="banners/gomez350x140.swf">
<param name="quality" value="High">
<embed src="banners/gomez350x140.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" 
type="application/x-shockwave-flash" name="obj14" width="350" height="140" 
quality="High" ></object>              
</td>
</tr>


<tr><td align="center">&nbsp;</td></tr>
<tr><td align="center">
<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="Object1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" 		width="350" height="140">
<param name="movie" value="banners/350x140maniabuffet.swf">
<param name="quality" value="High">
<embed src="banners/350x140maniabuffet.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" 
type="application/x-shockwave-flash" name="obj14" width="350" height="140" 
quality="High" ></object>              
</td>
</tr>


<tr><td align="center">&nbsp;</td></tr>
<tr><td align="center">
<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="Object1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" 		width="350" height="140">
<param name="movie" value="banners/aladinbanner.swf">
<param name="quality" value="High">
<embed src="banners/aladinbanner.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" 
type="application/x-shockwave-flash" name="obj14" width="350" height="140" 
quality="High" ></object>              
</td>
</tr>


<tr><td align="center">&nbsp;</td></tr>
<tr><td align="center">
<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="Object1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" 		width="350" height="140">
<param name="movie" value="banners/ARTEART350X140.swf">
<param name="quality" value="High">
<embed src="banners/ARTEART350X140.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" 
type="application/x-shockwave-flash" name="obj14" width="350" height="140" 
quality="High" ></object>              
</td>
</tr>

<tr><td align="center">&nbsp;</td></tr>
<tr><td align="center">
<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="Object1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" 		width="350" height="140">
<param name="movie" value="banners/planeta350x140.swf">
<param name="quality" value="High">
<embed src="banners/planeta350x140.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" 
type="application/x-shockwave-flash" name="obj14" width="350" height="140" 
quality="High" ></object>              
</td>
</tr>


<tr><td align="center">&nbsp;</td></tr>
<tr><td align="center">
<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="Object1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" 		width="350" height="150">
<param name="movie" value="banners/xixo350X150.swf">
<param name="quality" value="High">
<embed src="banners/xixo350X150.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" 
type="application/x-shockwave-flash" name="obj14" width="350" height="150" 
quality="High" ></object>              
</td>
</tr>


<tr><td align="center">&nbsp;</td></tr>
<tr><td align="center">
<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="Object1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" 		width="350" height="140">
<param name="movie" value="banners/lollyboombanner.swf">
<param name="quality" value="High">
<embed src="banners/lollyboombanner.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" 
type="application/x-shockwave-flash" name="obj14" width="350" height="140" 
quality="High" ></object>              
</td>
</tr>


<tr><td align="center">&nbsp;</td></tr>
<tr><td align="center">
<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="Object1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" 		width="350" height="140">
<param name="movie" value="banners/bannercores350x140.swf">
<param name="quality" value="High">
<embed src="banners/bannercores350x140.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" 
type="application/x-shockwave-flash" name="obj14" width="350" height="140" 
quality="High" ></object>              
</td>
</tr>


<tr><td align="center">&nbsp;</td></tr>
<tr><td align="center">
<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="Object1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" 		width="350" height="120">
<param name="movie" value="banners/felizcidade350x120.swf">
<param name="quality" value="High">
<embed src="banners/felizcidade350x120.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" 
type="application/x-shockwave-flash" name="obj14" width="350" height="120" 
quality="High" ></object>              
</td>
</tr>



<tr><td align="center">&nbsp;</td></tr>
<tr><td align="center">
<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="Object1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" 		width="350" height="140">
<param name="movie" value="banners/tequinha350x140.swf">
<param name="quality" value="High">
<embed src="banners/tequinha350x140.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" 
type="application/x-shockwave-flash" name="obj14" width="350" height="140" 
quality="High" ></object>              
</td>
</tr>



<tr><td align="center">&nbsp;</td></tr>
<tr><td align="center">
<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="Object1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" 		width="350" height="140">
<param name="movie" value="banners/baixinhos350x140.swf">
<param name="quality" value="High">
<embed src="banners/baixinhos350x140.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" 
type="application/x-shockwave-flash" name="obj14" width="350" height="140" 
quality="High" ></object>              
</td>
</tr>



<tr><td align="center">&nbsp;</td></tr>
<tr><td align="center">
<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="Object1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" 		width="350" height="140">
<param name="movie" value="banners/girodapizza350x140.swf">
<param name="quality" value="High">
<embed src="banners/girodapizza350x140.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" 
type="application/x-shockwave-flash" name="obj14" width="350" height="140" 
quality="High" ></object>              
</td>
</tr>



<tr><td align="center">&nbsp;</td></tr>
<tr><td align="center">
<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="Object1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" 		width="350" height="160">
<param name="movie" value="banners/mundo340x156.swf">
<param name="quality" value="High">
<embed src="banners/mundo340x156.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" 
type="application/x-shockwave-flash" name="obj14" width="350" height="160" 
quality="High" ></object>              
</td>
</tr>


<tr><td align="center">&nbsp;</td></tr>
<tr><td align="center">
<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="Object1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" 		width="350" height="150">
<param name="movie" value="banners/lebabi350x150.swf">
<param name="quality" value="High">
<embed src="banners/lebabi350x150.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" 
type="application/x-shockwave-flash" name="obj14" width="350" height="150" 
quality="High" ></object>              
</td>
</tr>


<tr><td align="center">&nbsp;</td></tr>
<tr><td align="center">
<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="Object1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" 		width="350" height="143">
<param name="movie" value="banners/laurita350x143.swf">
<param name="quality" value="High">
<embed src="banners/laurita350x143.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" 
type="application/x-shockwave-flash" name="obj14" width="350" height="143" 
quality="High" ></object>              
</td>
</tr>


<tr><td align="center">&nbsp;</td></tr>
<tr><td align="center">
<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="Object1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" 		width="350" height="140">
<param name="movie" value="banners/bannerspirogiro350x140.swf">
<param name="quality" value="High">
<embed src="banners/bannerspirogiro350x140.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" 
type="application/x-shockwave-flash" name="obj14" width="350" height="140" 
quality="High" ></object>              
</td>
</tr>


<tr><td align="center">&nbsp;</td></tr>
<tr><td align="center">
<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="Object1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" 		width="350" height="117">
<param name="movie" value="banners/veraarcenio180X60.swf">
<param name="quality" value="High">
<embed src="banners/veraarcenio180X60.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" 
type="application/x-shockwave-flash" name="obj14" width="350" height="117" 
quality="High" ></object>              
</td>
</tr>


<tr><td align="center">&nbsp;</td></tr>
<tr><td align="center">
<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="Object1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" width="350" height="80">
<param name="movie" value="banners/EMANNUEL350X80.swf">
<param name="quality" value="High">
<embed src="banners/EMANNUEL350X80.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" 
type="application/x-shockwave-flash" name="obj14" width="350" height="80" 
quality="High" ></object>              
</td>
</tr>

<tr><td align="center">&nbsp;</td></tr>
<tr><td align="center">
<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="Object1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" width="350" height="117">
<param name="movie" value="banners/mariabalao180X50.swf">
<param name="quality" value="High">
<embed src="banners/mariabalao180X50.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" 
type="application/x-shockwave-flash" name="obj14" width="350" height="117" 
quality="High" ></object>              
</td>
</tr>


<tr><td align="center">&nbsp;</td></tr>
</table>
      
       </td>
       <td width="180" align="center" valign="top" bgcolor="#FFFFDF">
          <table width="200px">
          <tr>
             <td align="center" bgcolor="#FFCC66" height="30px">
                <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" 
                   SelectMethod="montabannerlateral" TypeName="WebService">
                   <SelectParameters>
                      <asp:Parameter DefaultValue="2" Name="localbanner" Type="String" />
                   </SelectParameters>
                </asp:ObjectDataSource>
                   
             
                <asp:Label ID="lblTituloPub" runat="server" Font-Bold="True" Font-Names="Verdana" 
                 Font-Size="14px" ForeColor="#FF6600">PUBLICIDADE</asp:Label>  
             
             </td>
          </tr>          
          <tr>
             <td align="center">
                
                   <asp:DataList ID="dlPublicidade" runat="server" 
                       DataSourceID="ObjectDataSource4">
                      <ItemTemplate>
                        <table style="width: 100%;">
                                 <tr>
                                     <td align="center" >
                                         <object classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000' 
                                        codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0' 
                                        width='<%# Eval("largura") %>' height='<%# Eval("altura") %>' 
                                        title='<%# Eval("codigo") %>'>
                                             <param name='movie' value='banners/<%# Eval("descricao") %>'>
                                             <param name='quality' value='High'>
                                             <param name='_cx' value='4763'>
                                             <param name='_cy' value='1323'>
                                             <param name='FlashVars' value>
                                             <param name='Src' value='banners/<%# Eval("descricao") %>'>
                                             <param name='WMode' value='Window'>
                                             <param name='Play' value='-1'>
                                             <param name='Loop' value='-1'>
                                             <param name='SAlign' value>
                                             <param name='Menu' value='-1'>
                                             <param name='Base' value>
                                             <param name='AllowScriptAccess' value>
                                             <param name='Scale' value='ShowAll'>
                                             <param name='DeviceFont' value='0'>
                                             <param name='EmbedMovie' value='0'>
                                             <param name='BGColor' value>
                                             <param name='SWRemote' value>
                                             <param name='MovieData' value>
                                             <param name='SeamlessTabbing' value='1'>
                                             <param name='Profile' value='0'>
                                             <param name='ProfileAddress' value>
                                             <param name='ProfilePort' value='0'>
                                             <param name='AllowNetworking' value='all'>
                                             <param name='AllowFullScreen' value='false'>
                                             <embed src='banners/<%# Eval("descricao") %>' quality='high' 
                                           pluginspage='http://www.macromedia.com/go/getflashplayer' 
                                           type='application/x-shockwave-flash' width='<%# Eval("largura") %>' 
                                           height='<%# Eval("altura") %>'></embed>
                                         </object>
                                     </td>
                                 </tr>
                             </table>                      
                      
                      </ItemTemplate>
                   </asp:DataList>
                
             </td>
          </tr>
          </table>
        </td>

         
     </tr>
   </table>
   </ContentTemplate>
    </asp:UpdatePanel>
   <div align="center">
      <table width="760" height="70" border="0" style="border-collapse: collapse" bordercolor="#111111" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
            <tr>
                <td align="center" class="TextoCinzaEscuro2" valign="top">
                   <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="760" height="70" title="Base">
                      <param name="movie" value="imagens/base.swf">
                      <param name="quality" value="High">
                     <param name="_cx" value="20108">
                     <param name="_cy" value="1852">
                     <param name="FlashVars" value>
                     <param name="Src" value="imagens/base.swf">
                     <param name="Play" value="0">
                     <param name="Loop" value="-1">
                     <param name="SAlign" value>
                     <param name="Menu" value="-1">
                     <param name="Base" value>
                     <param name="AllowScriptAccess" value>
                     <param name="Scale" value="ShowAll">
                     <param name="DeviceFont" value="0">
                     <param name="EmbedMovie" value="0">
                     <param name="BGColor" value>
                     <param name="SWRemote" value>
                     <param name="MovieData" value>
                     <param name="SeamlessTabbing" value="1">
                     <param name="Profile" value="0">
                     <param name="ProfileAddress" value>
                     <param name="ProfilePort" value="0">
                     <param name="AllowNetworking" value="all">
                     <param name="AllowFullScreen" value="false">
                      <embed src="imagens/base.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="760" height="66"></embed></object>                                                        
                </td>
            </tr>
        </table>
   </div>
  </form>
  </center>   
</body>
</html>
