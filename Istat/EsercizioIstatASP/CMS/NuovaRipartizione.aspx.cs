using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NuovaRipartizione : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void dvNew_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        lblRisultato.Text = "Operazione andata a buon fine";
    }
}