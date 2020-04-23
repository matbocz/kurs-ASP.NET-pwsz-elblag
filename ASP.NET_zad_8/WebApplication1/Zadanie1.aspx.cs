using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Zadanie1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void obliczButton_Click(object sender, EventArgs e)
        {
            double wynik = 0;
            double pi = Math.PI;
            double wysokosc = double.Parse(wysokoscTextBox.Text);
            double promien = double.Parse(promienTextBox.Text);

            wynik = pi * wysokosc * (promien * promien);

            wynikLabel.Text = wynik.ToString();
            wynikLabel.Visible = true;
        }
    }
}