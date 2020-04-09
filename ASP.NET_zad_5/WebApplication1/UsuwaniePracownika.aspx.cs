using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class UsuwaniePracownika : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void usunButton_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Delete();
            GridView1.DataBind();
        }
    }
}