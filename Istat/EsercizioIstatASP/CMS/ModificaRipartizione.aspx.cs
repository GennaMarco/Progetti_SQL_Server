using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ModificaRipartizione : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    

    protected void dvNew_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        lblRisultato.Text = "Operazione andata a buon fine";
    }
}