using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contatti : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnInvia_Click(object sender, EventArgs e)
    {
        String msg = "Invio dati per email"
            + "<br>Data: " + DateTime.Now.ToString()
            + "<br>Nominativo: " + txtNominativo.Text
            + "<br>Email: " + txtEmail.Text
            + "<br>Oggetto: " + txtOggetto.Text
            + "<br>Messaggio: " + txtMessaggio.Text
            ;

        lblRisultato.Text = msg;
    }
}