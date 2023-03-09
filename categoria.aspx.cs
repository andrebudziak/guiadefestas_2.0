using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.Common;
using System.Text;
using System.IO;

public partial class categoria : System.Web.UI.Page
{
    private int vTipoCategoria = 0;
    private string vCategoria = "";
    private WebService ws = new WebService();

    protected void Page_Load(object sender, EventArgs e)
    {
        lblCodigoCategoria.Visible = false;
        lblDescricao.Visible = false;
        lblTituloCat.Visible = true;      
        

        if (!IsPostBack)
        {
            if (Request.QueryString["tipo_categoria"] != null)
            {

                lblCodigo.Visible = false;


                if (Request.QueryString["c"] == null)
                {
                    lblCodigoCategoria.Text = Request.QueryString["tipo_categoria"].ToString();
                    vTipoCategoria = Convert.ToInt32(Request.QueryString["tipo_categoria"].ToString());
                    lblDescricao.Text = "0";
                }
                else
                {
                    vTipoCategoria = 0;
                    lblCodigoCategoria.Text = "0";
                    lblDescricao.Text = Request.QueryString["c"].ToString();

                }

                DataSet dados = new DataSet();
                dados = ws.descricaoCategoria(Convert.ToString(vTipoCategoria));
                if(dados.Tables[0].Rows.Count !=0)
                {
                    lblTituloCat.Text = dados.Tables[0].Rows[0]["descricao"].ToString();
                    frTopo.Attributes["src"] = "topo.aspx?tipo_categoria=" + vTipoCategoria.ToString();
                    Page.Title = dados.Tables[0].Rows[0]["descricao"].ToString();

                    HtmlHead headTag = (HtmlHead)this.Header;
                    // Set the page title
                    headTag.Title = dados.Tables[0].Rows[0]["descricao"].ToString();
                    // Add a Description meta tag
                    HtmlMeta PagemetaTag = new HtmlMeta();
                    PagemetaTag.Name = dados.Tables[0].Rows[0]["descricao"].ToString() +"- Guia de Festas Curitiba";
                    PagemetaTag.Content = dados.Tables[0].Rows[0]["descricao"].ToString() + "- Guia de Festas Curitiba";
                    headTag.Controls.Add(PagemetaTag);
                    // Add a Keywords meta tag
                    DataSet dadoTag = ws.DadosTagClientes();
                    PagemetaTag = new HtmlMeta();
                    PagemetaTag.Name = "Keywords";
                    PagemetaTag.Content = dadoTag.Tables[0].Rows[0]["nomes"].ToString();
                    headTag.Controls.Add(PagemetaTag);

                }                

                ws.Dispose();

                txtValor.Attributes.Add("onkeydown", "if(event.which || event.keyCode){if ((event.which == 13) || (event.keyCode == 13)) {document.getElementById('" + btnBusca.UniqueID + "').click();return false;}} else {return true}; ");

            }
        }


    }

    protected void dlAnunciante_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        DataRowView dbr = (DataRowView)e.Item.DataItem;

        if (Convert.ToString(DataBinder.Eval(dbr, "logo")) != "")
        {

            ImageButton btn = (ImageButton)e.Item.FindControl("btnImgLogo");
            btn.ImageUrl = "logos/" + Convert.ToString(DataBinder.Eval(dbr, "logo"));
            btn.AlternateText = Convert.ToString(DataBinder.Eval(dbr, "nome_fantasia"));

            HyperLink lnk = (HyperLink)e.Item.FindControl("aSite");
            //lnk.Attributes["onclick"] = Convert.ToString(DataBinder.Eval(dbr, "site"));
            lnk.NavigateUrl = "http://" + Convert.ToString(DataBinder.Eval(dbr, "site"));
            //lnk.Attributes["onclick"] = "contaClicks()";

        }

        if (Convert.ToString(DataBinder.Eval(dbr, "bonus")) == "")
        {
            ImageButton btn = (ImageButton)e.Item.FindControl("imgBtnBonus");
            btn.ImageUrl = "imagens/SEMBONUS.png";
            //HyperLink lnk = (HyperLink)e.Item.FindControl("aBonus");
            //lnk.Attributes["onclick"] = "";          
        }
        else
        {
            ImageButton btn = (ImageButton)e.Item.FindControl("imgBtnBonus");
            btn.ImageUrl = "imagens/BONUS.png";
            //lnk.Attributes["onclick"] = "javascript:window.open('bonus.aspx?anunciante=" + Convert.ToString(DataBinder.Eval(dbr, "codigo")) + "', null, 'left = 400, top = 100, height = 480, width = 500, status = no, resizable = no, scrollbars = no, toolbar = no, location = no, menubar = no'); void(0)";
           //lnk.Attributes["onclick"] = "javascript:document.getElementById('ifCategoriaAnuncio').src = bonus.aspx?anunciante=" + Convert.ToString(DataBinder.Eval(dbr, "codigo"))+";";
           //ifCategoriaAnuncio.Attributes["src"] = "bonus.aspx?anunciante=" + Convert.ToString(DataBinder.Eval(dbr, "codigo"));
            

        }

        if (Convert.ToString(DataBinder.Eval(dbr, "site")) == "")
        {
            //HtmlImage btn = (HtmlImage)e.Item.FindControl("imgSite");
            ImageButton btn = (ImageButton)e.Item.FindControl("btnImgSite");

            btn.ImageUrl = "imagens/SEMWEB.png";
            HyperLink lnk = (HyperLink)e.Item.FindControl("aSite");
        }
        else
        {
            HyperLink lnk = (HyperLink)e.Item.FindControl("aSite");
            lnk.Attributes["href"] = "http://" + Convert.ToString(DataBinder.Eval(dbr, "site"));

            HyperLink lnk2 = (HyperLink)e.Item.FindControl("aLogo");

            string myScript = "window.open('" + "http://" + Convert.ToString(DataBinder.Eval(dbr, "site")) + "', null,''); void(0)";

            lnk2.Attributes["onclick"] = myScript;

            lnk.Attributes["onclick"] = myScript;
            
            //lnk2.Attributes["href"] = "http://" + Convert.ToString(DataBinder.Eval(dbr, "site"));
            //lnk.Attributes["title"] = Convert.ToString(DataBinder.Eval(dbr, "nome_fantasia"));

            
        }

        if (Convert.ToString(DataBinder.Eval(dbr, "email")) == "")
        {
            HtmlImage btn = (HtmlImage)e.Item.FindControl("imgEmail");
            btn.Src = "imagens/SEMEMAIL.png";
            HyperLink lnk = (HyperLink)e.Item.FindControl("aEmail");
        }
        else
        { 
            HyperLink lnk = (HyperLink)e.Item.FindControl("aEmail");
            lnk.Attributes["href"] = "mailto:"+Convert.ToString(DataBinder.Eval(dbr, "email"));       
        }

        if (Convert.ToString(DataBinder.Eval(dbr, "orkut")) == "")
        {
            HtmlImage btn = (HtmlImage)e.Item.FindControl("imgOrkut");
            btn.Src = "imagens/orkInativo.jpg";        
        }

        if (Convert.ToString(DataBinder.Eval(dbr, "facebook")) == "")
        {
            HtmlImage btn = (HtmlImage)e.Item.FindControl("imgFacebook");
            btn.Src = "imagens/facebInativo.jpg";               
        }

        if (Convert.ToString(DataBinder.Eval(dbr, "twitter")) == "")
        {
            HtmlImage btn = (HtmlImage)e.Item.FindControl("imgTwitter");
            btn.Src = "imagens/twitInativo.jpg";
        }

    }
    protected void btnBusca_Click(object sender, ImageClickEventArgs e)
    {
        if (txtValor.Text != "")
        {
            //Busca Anunciantes
            lblCodigoCategoria.Text = "0";
            lblDescricao.Text = txtValor.Text;
            ObjectDataSource1.Select();
            dlAnunciante.DataBind();
        }
        else
        {
           string myScript = @"alert('Digite um conteudo para pesquisa!');";
           ScriptManager.RegisterStartupScript(Page, Page.GetType(), "clientscript", "<script language='JavaScript'>" + myScript + "</script>", false);        
        }

    }

    protected void ObjectDataSource1_Selecting(object sender, ObjectDataSourceSelectingEventArgs e)
    {
        e.InputParameters["codigo_categoria"] = lblCodigoCategoria.Text;
        e.InputParameters["nome_fantasia"] = lblDescricao.Text;
        e.InputParameters["ordem"] = ddlFiltro.SelectedValue;
        
        
    }

    protected void ddlFiltro_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblDescricao.Text = "0";
//        dlAnunciante.Dispose();
//        ObjectDataSource1.Dispose();
        ObjectDataSource1.Select();
        dlAnunciante.DataBind();

    }

    protected void dlAnunciante_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "ContaClick") 
        {
            Label lnk1 = (Label)e.Item.FindControl("lblCodigoAnuncio"); 
            string key = lnk1.Text;
            ws.contaClicks(Convert.ToInt32(key));

            HyperLink lnk = (HyperLink)e.Item.FindControl("aLogo");            

            //string myScript = "window.open(URL,'" + lnk.NavigateUrl + "','type=fullWindow,status=no,maximized=yes,resizable=no,top=0,left=0,screenX=0,screenY=0);";
            
            //ScriptManager.RegisterStartupScript(Page, Page.GetType(), "clientscript", "<script language='JavaScript'>" + myScript + "</script>", false);

            //lnk.Attributes["onclick"] = myScript; 

        }

        if (e.CommandName == "AtualizaBonus")
        {
            Label lnk1 = (Label)e.Item.FindControl("lblCodigoAnuncio");
            string key = lnk1.Text;
            ifCategoriaAnuncio.Attributes["src"] = "bonus.aspx?anunciante=" + key;
            AjaxControlToolkit.ModalPopupExtender mp = (AjaxControlToolkit.ModalPopupExtender)e.Item.FindControl("btnAnuncioCategoria_ModalPopupExtender");
            mp.Show();
        }

    }
}
