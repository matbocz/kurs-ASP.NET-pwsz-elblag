using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                mainMultiView.SetActiveView(ankietaGlowna);
                if (Request.QueryString["view"] == "nowy") ankietaMultiView.SetActiveView(nowyView);
                else if (Request.QueryString["view"] == "wycieczki") ankietaMultiView.SetActiveView(wycieczkiView);
                else Response.Redirect("~/Default.aspx");
            }
        }

        protected void wyswietlButton_Click(object sender, EventArgs e)
        {
            mainMultiView.SetActiveView(podsumowanie);
        }
    }
}