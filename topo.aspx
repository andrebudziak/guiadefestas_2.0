﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="topo.aspx.cs" Inherits="topo" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>    
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <asp:Timer ID="Timer1" runat="server" Interval="20000" ontick="Timer1_Tick">
        </asp:Timer>
<table border="0" cellpadding="0" cellspacing="0" style="width:760px;" 
            bgcolor="White">
            <tr>
                <td>
                    &nbsp;</td>
                <td align="center">
    <table style="width: 760px;" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td align="left">
            
                <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
                    <tr>
                       <td>
                          <img border="0" src="imagens/lgguia213x79.jpg" width="213" height="75">                       
                       </td>                       
                    </tr>
                    <tr>
                       <td>
                          <iframe style="WIDTH: 213px; HEIGHT: 51px" src="http://guiadefestascuritiba.mysuite.com.br/empresas/guf/verifica.php" frameborder=0 scrolling=no>
                          </iframe>
                       </td>
                    </tr>
                </table>
            
            </td>
            <td align="center">            
               <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                  <ContentTemplate>                
                     <asp:Label ID="lblBannerTopoDireito" runat="server"></asp:Label>
                  </ContentTemplate>
                   <Triggers>
                       <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                   </Triggers>
               </asp:UpdatePanel>
            
            </td>
        </tr>
        </table>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td align="center">
              <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="760" height="30" title="Topo">
                <param name="movie" value="imagens/topo.swf">
                <param name="quality" value="High"
                <param name="_cx" value="20108">
                <param name="_cy" value="1852">
                <param name="FlashVars" value>
                <param name="Src" value="imagens/topo.swf">
                <param name="WMode" value="Window">
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
                 <embed src="imagens/topo.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="760" height="30" wmode="transparent"></embed></object>                                    
                
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td align="center">
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>                   
                   <table width="760" border="0" style="border-collapse: collapse" bordercolor="#111111" cellpadding="0" cellspacing="0">
                   <tr>
                      <td width="140" align="center">
                         <asp:Panel ID="pnBannerEsquerdo" runat="server" BackColor="White">
                             <asp:Label ID="lblBannerSE" runat="server"></asp:Label>
                         </asp:Panel>	
		              </td>
                      <td width="480">
                        <asp:Panel ID="pnBannerCentral" runat="server" BackColor="White">
                            <asp:Label ID="lblBannerCe" runat="server"></asp:Label>
                        </asp:Panel>
		             </td>
                    <td width="140" align="center">
                      <asp:Panel ID="pnBannerDireito" runat="server" BackColor="White">
                          <asp:Label ID="lblBannerSD" runat="server"></asp:Label>
                      </asp:Panel>
		            </td>
                  </tr>
                  </table>
                  </ContentTemplate>
                    </asp:UpdatePanel>
                
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>        
    </center>    
    </div>
    </form>
</body>
</html>
