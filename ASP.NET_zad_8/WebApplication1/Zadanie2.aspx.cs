using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Zadanie2 : System.Web.UI.Page
    {
        double objetosc = 0;
        double pole = 0;
        double pi = Math.PI;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void obliczButton_Click(object sender, EventArgs e)
        {
            double wysokosc, promien, tworzaca;

            if (wyborDropDownList.SelectedValue == "w")
            {
                wysokosc = double.Parse(wysokoscTextBox.Text);
                promien = double.Parse(promienTextBox.Text);

                objetosc = pi * wysokosc * (promien * promien);
                pole = (2 * pi * (promien * promien)) + (2 * pi * promien * wysokosc);
            }
            else if (wyborDropDownList.SelectedValue == "k")
            {
                promien = double.Parse(promienTextBox.Text);

                objetosc = (4 / 3) * pi * (promien * promien * promien);
                pole = 4 * pi * (promien * promien);
            }
            else
            {
                wysokosc = double.Parse(wysokoscTextBox.Text);
                promien = double.Parse(promienTextBox.Text);
                tworzaca = double.Parse(tworzacaTextBox.Text);

                objetosc = (1 / 3) * pi * (promien * promien) * wysokosc;
                pole = (pi * (promien * promien)) + (pi * promien * tworzaca);
            }

            objetoscLabel.Text = "Objętośc: " + objetosc.ToString();
            objetoscLabel.Visible = true;

            poleLabel.Text = "Pole: " + pole.ToString();
            poleLabel.Visible = true;
        }

        protected void wyborDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (wyborDropDownList.SelectedValue == "w")
            {
                wysokoscLabel.Visible = true;
                wysokoscTextBox.Visible = true;

                promienLabel.Visible = true;
                promienTextBox.Visible = true;

                tworzacaLabel.Visible = false;
                tworzacaTextBox.Visible = false;

                figuraImage.ImageUrl = "~/walec.png";
            }
            else if (wyborDropDownList.SelectedValue == "k")
            {
                wysokoscLabel.Visible = false;
                wysokoscTextBox.Visible = false;

                promienLabel.Visible = true;
                promienTextBox.Visible = true;

                tworzacaLabel.Visible = false;
                tworzacaTextBox.Visible = false;

                figuraImage.ImageUrl = "~/kula.png";
            }
            else
            {
                wysokoscLabel.Visible = true;
                wysokoscTextBox.Visible = true;

                promienLabel.Visible = true;
                promienTextBox.Visible = true;

                tworzacaLabel.Visible = true;
                tworzacaTextBox.Visible = true;

                figuraImage.ImageUrl = "~/stozek.png";
            }
        }
    }
}