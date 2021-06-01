using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Models;

namespace TrainBookingSystem.Admin
{
    public partial class Admin_ManageUser_EditUser : System.Web.UI.Page
    {
        int i = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if(i == 0)
                {
                    i = 1;
                    initUser();
                }
            }
        }
        private void initUser()
        {
            Users user = UserManager.GetUserInfo(Session["usernameEdit"].ToString());
            username.Text = user.Username.ToString().Trim();
            password.Text = user.Password.ToString().Trim();
            name.Text = user.Name.ToString().Trim();
            id.Text = user.Id.ToString().Trim();
            question.Text = user.Question.ToString().Trim();
            answer.Text = user.Answer.ToString().Trim();
            balance.Text = user.Balance.ToString().Trim();
        }

        protected void Save_Click(object sender, EventArgs e)
        {
            Session["usernameEdit"] = username.Text.Trim();
            int result = UserManager.ModifyUser(username.Text.Trim(), password.Text.Trim(), name.Text.Trim(), id.Text.Trim(), question.Text.Trim(), answer.Text.Trim(), Convert.ToInt32(balance.Text.Trim()));
            if(result > 0)
            {
                initUser();
            }
        }

        protected void Reset_Click(object sender, EventArgs e)
        {
            initUser();
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            UserManager.RemoveUser(Session["usernameEdit"].ToString());
            username.Text = "";
            password.Text = "";
            name.Text = "";
            id.Text = "";
            question.Text = "";
            answer.Text = "";
            balance.Text = "";
            Delete.CssClass = "btn btn-danger btn-md btn-block disabled";
            Save.CssClass = "btn btn-success btn-md btn-block disabled";
            Reset.CssClass = "btn btn-info btn-md btn-block disabled";
        }
    }
}