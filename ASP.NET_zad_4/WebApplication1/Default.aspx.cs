﻿using System;
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

        }

        protected void szukajButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Pracownicy.aspx?p_etat=" +
            Server.UrlEncode(etatDropDownList.Text) +
            "&p_dolny=" + dolnyTextBox.Text +
            "&p_gorny=" + gornyTextBox.Text);
        }
    }
}