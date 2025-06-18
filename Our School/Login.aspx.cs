using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Our_School.Models.CommonFn;

namespace Our_School
{
    public partial class Login : System.Web.UI.Page
    {
        Commonfnx fn = new Commonfnx();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = inputEmail.Text.Trim();
            string password = inputPassword.Text.Trim();
            DataTable dt = fn.Fetch("Select * from Teacher where Email = '" + email + "' and password='" + password + "' ");
            if (email == "admin123@gmail.com" && password == "123")
            {
                Session["admin"] = email;
                Response.Redirect("Admin/AdminHome.aspx");
            }
            else if (dt.Rows.Count > 0)
            {
                Session["admin"] = email;
                Response.Redirect("Admin/AdminHome.aspx");
            }
            else
            {
               errorMessage.Text = "Login Failed";
               errorMessage.ForeColor = System.Drawing.Color.Red;
                
            }
        }
    }
 }
