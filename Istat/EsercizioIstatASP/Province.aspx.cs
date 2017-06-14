using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Province : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }


    protected void ddlRipartizioni_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlRegioni.Items.Clear();
        ddlRegioni.Items.Add(new ListItem("Tutti", "0"));
    }
}