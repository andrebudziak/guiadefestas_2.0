<%@ Page Language="C#" AutoEventWireup="true" CodeFile="categoria.aspx.cs" Inherits="categoria" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Guia de Festas Curitiba</title>
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
    <link href="Styles.css" rel="stylesheet" type="text/css" />
<meta name="robots" content="index,follow" />
<meta name="url" content="www.guiadefestascuritiba.com.br">
<meta name="charset" content="ISO-8859-1">
<meta name="autor" content="Andre Budziak Neto">
<meta name="revisit-after" content="1">
<meta http-equiv="imagetoolbar" content="no">


</head>
<body topmargin="0" leftmargin="0" bgcolor="#DDDDDD" oncontextmenu="return false;" >
   <center> 
    <form id="frmCategoria" runat="server">    
        
    
        
   
    <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
        <tr>
            <td align="center" >
 <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                                        </cc1:ToolkitScriptManager>              
               <iframe id="frTopo" runat="server" src="topo.aspx" width="760px" height="230px" 
                    frameborder="0" marginheight="0" marginwidth="0" scrolling="no" 
                    style="padding:0" name="I1">    
               </iframe>
            </td>
        </tr>
        <tr>
            <td align="center" >
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
   
         <table style="width: 760px;" bgcolor="White">
                    <tr>
                        <td align="center">                            
                            <table border="0" cellpadding="0" cellspacing="0" style="width:300px;">
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txtValor" runat="server" Width="250px" Font-Names="Arial" 
                                            Font-Size="11px"></asp:TextBox>
                                         <cc1:AutoCompleteExtender ID="AutoCompleteExtenderDemo" 
                                         CompletionListCssClass="AutoCompleteExtender_CompletionListItem"
                                            runat="server"             
                                            TargetControlID="txtValor" 
                                            ServicePath="WebService.asmx" 
                                            ServiceMethod="RetornaNomeCliente"
                                            MinimumPrefixLength="1" 
                                            EnableCaching="false">        
                                        </cc1:AutoCompleteExtender>                                
                                        
                                    </td>
                                    <td>
                                        <asp:ImageButton ID="btnBusca" runat="server"         
                                            ImageUrl="~/imagens/PESQUISAR.png" onclick="btnBusca_Click" />
                                    </td>
                                </tr>
                            </table>
                        </td>                      
                    </tr>                    
                    </table>
     <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="760px" id="AutoNumber2" bgcolor="#FFFFFF">
     <tr>
       <td width="180" align="center" valign="top" bgcolor="#FFFFDF">
       
       <div align="left">
         <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="170" id="AutoNumber3">
           <tr>
             <td width="180" height="30px" bgcolor="#FFCC66">
                 <asp:Label ID="lblLocais" runat="server" Text="LOCAIS" Font-Bold="True" 
                     Font-Size="14px" ForeColor="#FF6600" Font-Names="Verdana"></asp:Label>
                 <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                     SelectMethod="montamenu" TypeName="WebService">
                     <SelectParameters>
                         <asp:Parameter DefaultValue="1" Name="opcao" Type="String" />
                     </SelectParameters>
                 </asp:ObjectDataSource>
                     
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
             <td width="180" height="20" bgcolor="#FFFFDF">
                 &nbsp;</td>
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
           <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
               <tr>
                   <td align="center" bgcolor="#FFCC66" >
                       <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
                           <tr>
                               <td align="left" height="30px">
                               
                                                      <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                                                          SelectMethod="ConsultaAnuncioTela" 
                                       TypeName="WebService" onselecting="ObjectDataSource1_Selecting">
                                                          <SelectParameters>
                                                              <asp:Parameter DefaultValue="1" Name="codigo_categoria" Type="Int32" />
                                                              <asp:Parameter DefaultValue="0" Name="nome_fantasia" Type="String" />
                                                              <asp:Parameter DefaultValue="0" Name="ordem" Type="String" />
                                                          </SelectParameters>
                                                      </asp:ObjectDataSource>
                                   
                                                      <table style="width:100%;">
                                                          <tr>
                                                              <td width="50%">
                                                                 <asp:Label ID="lblTituloCat" runat="server" Font-Bold="True" Font-Names="Verdana" 
                                                                    Font-Size="14px" ForeColor="#FF6600"></asp:Label>  
                                                              
                                                              </td>
                                                              <td>
                                                              </td>
                                                              <td align="right" width="50%">
                                                                 <asp:DropDownList ID="ddlFiltro" runat="server" 
                                                                    AutoPostBack="True" Font-Names="Verdana" Font-Size="12px" ForeColor="#FF6600" 
                                                                    onselectedindexchanged="ddlFiltro_SelectedIndexChanged" 
                                                                    style="border-left-color: White; border-bottom-color: White; border-top-style: outset; border-top-color: White; border-right-style: outset; border-left-style: outset; border-right-color: White; border-bottom-style: outset">
                                                                    <asp:ListItem Value="0">Filtrar Anuncios por:</asp:ListItem>
                                                                    <asp:ListItem Value="nome_fantasia">NOME</asp:ListItem>
                                                                    <asp:ListItem Value="bairro">BAIRRO</asp:ListItem>
                                                                 </asp:DropDownList>                                                              
                                                             </td>
                                                          </tr>
                                                      </table>
                                   
                               </td>
                           </tr>
                       </table>
                  </td>
                 
               </tr>
               <tr>
                   <td align="center">                    
               
                               <asp:DataList ID="dlAnunciante" runat="server" ShowFooter="False" 
                ShowHeader="False" onitemdatabound="dlAnunciante_ItemDataBound" Width="100%" 
                                   DataSourceID="ObjectDataSource1" BorderWidth="0px" CellPadding="0" 
                           onitemcommand="dlAnunciante_ItemCommand">
                                   <AlternatingItemStyle Font-Bold="False" Font-Italic="False" 
                                       Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
                                   <ItemTemplate>
                                  
                                               <table border="0" cellpadding="0" cellspacing="0">
                                           <tr>
                                               <td align="left" style="margin:0;padding:0;width:140px;height:100px;" valign="middle">
                                                  <asp:HyperLink ID="aLogo" runat="server" Target="_blank" > 
                                                     <asp:ImageButton ID="btnImgLogo" CommandName="ContaClick" runat="server" Width="136px" Height="96px"  />
                                                  </asp:HyperLink>
                                               </td>
                                               <td style="margin:0;padding:0;width:220px;height:100px;" valign="middle" align="left">
                                                   <table>
                                                       <tr>
                                                           <td align="left">
                                                           <h2 class='TituloCinzaEscuro'>
                                                               <asp:Label ID="lblCodigoAnuncio" runat="server" Text=<%# Eval("codigo") %> Visible="false"></asp:Label>
                                                               <%# Eval("nome_fantasia") %>
                                                           </h2>
                                                           <br />
                                                           </td>
                                                       </tr>
                                                       <tr>
                                                           <td class='TituloCinzaEscuro2' align="left" >
                                                               <%# Eval("bairro") %> - <%# Eval("cidade") %>
                                                           </td>
                                                       </tr>
                                                       <tr>
                                                           <td class='TituloCinzaEscuro3' align="left" >
                                                               <%# Eval("endereco") %>
                                                           </td>
                                                       </tr>
                                                       <tr>
                                                           <td class='TituloCinzaEscuro3' align="left" >
                                                               <%# Eval("telefone") %>
                                                           </td>
                                                       </tr>
                                                       <tr>
                                                      <td align="left">
                                                      <table style="width: 150px;" border="0" cellpadding="0" cellspacing="1">
                                                      <tr>
                                                         <td align="left" width="50px" valign="bottom" >
                                                            <asp:HyperLink ID="aOrkut" runat="server" Target="_blank" NavigateUrl=' <%# Eval("orkut") %>'> 
                                                               <img ID="imgOrkut" runat="server" alt="Acesse meu Orkut" width="51" height="17" src="imagens/orkAtivo.jpg" style="border:0;" /> 
                                                            </asp:HyperLink>
                                                         </td>
                                                         <td align="left" width="50px" valign="bottom">
                                                            <asp:HyperLink ID="aFacebook" runat="server" Target="_blank" NavigateUrl=' <%# Eval("facebook") %>'> 
                                                               <img ID="imgFacebook" runat="server" alt="Acesse meu Facebook" width="51" height="17" src="imagens/facebAtivo.jpg" style="border:0;"  /> 
                                                            </asp:HyperLink>
                                                         </td>
                                                         <td align="left" width="50px" valign="bottom">
                                                            <asp:HyperLink ID="aTwitter" runat="server" Target="_blank" NavigateUrl=' <%# Eval("twitter") %>'> 
                                                               <img ID="imgTwitter" runat="server" alt="Acesse meu Facebook" width="51" height="17" src="imagens/twitAtivo.jpg" style="border:0;" /> 
                                                            </asp:HyperLink>
                                                         </td>
                                                      </tr>
                                                      </table>                                                                          
                                                      </td>
                                                       </tr>
                                                   </table>
                                               </td>
                                           </tr>
                                           <tr>
                                              <td align="center" colspan="3" valign="middle" style="margin:0;padding:0;height:50px;">
                                                  <table style="width: 100%;" border="0" cellpadding="0" cellspacing="0">
                                                      <tr>
                                                         <td align="center" >
                                                            <asp:Button ID="btnFAKE" runat="server" Text="Fake Button" style="display: none;" /> 
                                                            <asp:ImageButton ID="imgBtnBonus" runat="server" CommandName="AtualizaBonus" />
                                                            <cc1:ModalPopupExtender ID="btnAnuncioCategoria_ModalPopupExtender" 
                                                               runat="server" BackgroundCssClass="ModalPopupBG" CancelControlID="btnFechar" 
                                                               Drag="True" DynamicServicePath="" Enabled="True" OnOkScript="onOk()" 
                                                               PopupControlID="pnAnuncioCategoria" TargetControlID="btnFAKE">
                                                             </cc1:ModalPopupExtender>
                                                         </td>
                                                         <td align="center" >                                                         
                                                            <h3>
                                                            <asp:HyperLink ID="aSite" runat="server" Target="_blank" >
                                                               <asp:ImageButton ID="btnImgSite" CommandName="ContaClick" runat="server" ImageUrl="imagens/WEB.png"  />                                                               
                                                            </asp:HyperLink>
                                                            </h3>
                                                         </td>
                                                         <td align="center" >
                                                            <asp:HyperLink ID="aEmail" runat="server" > 
                                                               <img ID="imgEmail" runat="server" alt="Envie-nos um email" src="imagens/EMAIL.png" style="border:0;" />
                                                            </asp:HyperLink>
                                                         </td>
                                                      </tr>
                                                  </table>                                             
                                              </td>
                                           </tr>
                                           <tr>
                                              <td class="bord-baixa" align="center" colspan="3" valign="middle" style="margin:0;padding:0;">
                                                                               
                                              </td>
                                           </tr>
                                       </table>
                                                         
                                       
                                   </ItemTemplate>
                               </asp:DataList>
                                                                   
                  </td>
                 
               </tr>
               </table>
      
       </td>
       <td width="180px" align="center" valign="top" bgcolor="#FFFFDF">
          <table width="180px">
          <tr>
             <td align="center" valign="middle" bgcolor="#FFCC66" height="30px">
                <asp:Label ID="lblTituloPub" runat="server" Font-Bold="True" Font-Names="Verdana" 
                 Font-Size="14px" ForeColor="#FF6600">PUBLICIDADE</asp:Label>
                <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" 
                   SelectMethod="montabannerlateral" TypeName="WebService">
                   <SelectParameters>
                      <asp:Parameter DefaultValue="2" Name="localbanner" Type="String" />
                   </SelectParameters>
                </asp:ObjectDataSource>
                   
             
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
                                             <param name="wmode" value="transparent">
                                             <embed src='banners/<%# Eval("descricao") %>' quality='high' 
                                           pluginspage='http://www.macromedia.com/go/getflashplayer' 
                                           type='application/x-shockwave-flash' width='<%# Eval("largura") %>' 
                                           height='<%# Eval("altura") %>' wmode="transparent"></embed>
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
  
   <div align="center">
      <table width="760" height="70" border="0" style="border-collapse: collapse" bordercolor="#111111" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
            <tr>
                <td align="center" class="TextoCinzaEscuro2" valign="top">                          
                         
                    <asp:Label ID="lblCodigoCategoria" runat="server"></asp:Label>
                          
                    <asp:Label ID="lblDescricao" runat="server"></asp:Label>
                          
                    <asp:Label ID="lblCodigo" runat="server"></asp:Label>
                    
                    <asp:Panel ID="pnAnuncioCategoria" runat="server" BackColor="White" 
                                   Height="530px" Width="530px">
                                   <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
                                       <tr>
                                           <td>
                                               &nbsp;</td>
                                           <td>
                                               &nbsp;</td>
                                           <td align="right">
                                               <asp:ImageButton ID="btnFechar" runat="server" 
                                                   ImageUrl="~/imagens/fechar.gif" />
                                           </td>
                                       </tr>
                                       <tr>
                                           <td align="center" colspan="3">
                                               <iframe ID="ifCategoriaAnuncio" runat="server" align="middle" frameborder="0" 
                                                   height="500px" marginheight="0" marginwidth="0" scrolling="auto" 
                                                   width="520px">
                                               </iframe>
                                           </td>
                                       </tr>
                                       <tr>
                                           <td>
                                               &nbsp;</td>
                                           <td>
                                               &nbsp;</td>
                                           <td>
                                               &nbsp;</td>
                                       </tr>
                                   </table>
                               </asp:Panel>                   
                          
                   
                          
                </td>
            </tr>
            <tr>
                <td align="center" class="TextoCinzaEscuro2" valign="top">
                   <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="760" height="70" title="Base">
                      <param name="movie" value="imagens/base.swf">
                      <param name="quality" value="High">
                     <param name="_cx" value="20108">
                     <param name="_cy" value="1852">
                     <param name="FlashVars" value>
                     <param name="Src" value="imagens/base.swf">
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
                      <embed src="imagens/base.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="760" height="66"></embed></object>                                                        
                </td>
            </tr>
        </table>
   </div>
                
                
                
                </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="btnBusca" EventName="Click" />
                    </Triggers>
                </asp:UpdatePanel>
            </td>
        </tr>
        <tr>
            <td align="center" >
                <asp:UpdateProgress ID="UpdateProgress1" runat="server" 
                    AssociatedUpdatePanelID="UpdatePanel1">
                    <ProgressTemplate>
                        <img src="imagens/wait.gif" 
    style="width: 50px; height: 50px" />Aguarde...
                    </ProgressTemplate>
                </asp:UpdateProgress>
            </td>
        </tr>
    </table>    
  </form>
  </center>   
</body>
</html>