using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace TrainBookingSystem
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string u = username.Text.Trim();
            string p = password.Text.Trim();

            if (UserManager.IsPasswordCorrect(u, p))
            {
                Session["username"] = u;
                Response.Redirect("./Index.aspx");
            }
            else
            {
                Response.Redirect("./Login.aspx");
            }
        }
    }
}