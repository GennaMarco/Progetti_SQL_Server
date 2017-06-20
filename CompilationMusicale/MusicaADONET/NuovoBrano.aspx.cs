using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NuovoBrano : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var dalC = new CompilationDAL();
        var elenco = dalC.GetAll();

        foreach(Compilation c in elenco)
            ddlCompilation.Items.Add(new ListItem(c.Titolo, c.Id.ToString()));   
    }

    protected void btnInvia_Click(object sender, EventArgs e)
    {
        var b = new Brano();
        b.IdCompilation = int.Parse(ddlCompilation.SelectedValue);
        b.Titolo = txtTitolo.Text;
        b.Durata = int.Parse(txtDurata.Text);

        var dalB = new BranoDAL();
        lblRisultato.Text = dalB.Add(b) ? "Operazione andata a buon fine" : "Operazione fallita";
    }
}