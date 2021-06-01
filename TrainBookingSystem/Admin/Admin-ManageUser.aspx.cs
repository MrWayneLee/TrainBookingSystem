using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace TrainBookingSystem.Admin
{
    public partial class Admin_ManageUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                UserDataBind();
            }
        }
        private void UserDataBind()
        {
            PagedDataSource pdsUsers = new PagedDataSource();
            pdsUsers.DataSource = UserManager.GetAllUsers();
            UserList.DataSource = pdsUsers;
            UserList.DataBind();
        }
        protected void Edit_Click(object sender, EventArgs e)
        {
            Button btn = sender as Button;
            Session["usernameEdit"] = btn.Attributes["key"].ToString();
            Response.Redirect("Admin-ManageUser-EditUser.aspx");
        }
        protected void Delete_Click(object sender, EventArgs e)
        {
            Button btn = sender as Button;
            string username = btn.Attributes["key"].ToString();
            UserManager.RemoveUser(username);
            UserDataBind();
        }
    }
}