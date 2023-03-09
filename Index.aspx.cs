using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class Index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           txtValor.Attributes.Add("onkeydown", "if(event.which || event.keyCode){if ((event.which == 13) || (event.keyCode == 13)) {document.getElementById('" + btnBusca.UniqueID + "').click();return false;}} else {return true}; ");
        }

    }
    protected void btnBusca_Click(object sender, ImageClickEventArgs e)
    {
        if (txtValor.Text != "")
        {
            Response.Redirect("categoria.aspx?tipo_categoria=0&c=" + txtValor.Text);
        }
        else
        {
            string myScript = @"alert('Digite um conteudo para pesquisa!');";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "clientscript", "<script language='JavaScript'>" + myScript + "</script>", false);
        }

    }


}
