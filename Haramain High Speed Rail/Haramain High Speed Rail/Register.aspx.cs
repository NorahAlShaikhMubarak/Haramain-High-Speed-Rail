using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Text.RegularExpressions;

namespace Haramain_High_Speed_Rail
{
    public partial class Register : System.Web.UI.Page
    {
        private string abc = WebConfigurationManager.ConnectionStrings["HaramainRailwayConnectionString1"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(abc);
        }

        //After checking all the inputs, insert a new account
        protected void lbInsertUsers_Click(object sender, EventArgs e)
        {
            if (txtRUsername.Text != "" && txtRPassword.Text != "" && txtREmail.Text != "")
            {
                string email = txtREmail.Text;
                Regex regex = new Regex(@"\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*");//valid email format
                Match match = regex.Match(email);//check the valid email
                if (match.Success)//if it is correct then ecxecut the following commands
                {
                    SqlConnection con = new SqlConnection(abc);
                    SqlCommand cmd = new SqlCommand("insert into Users (UserName,UserEmail,Password) values(@UserName, @UserEmail, @Password)", con);
                    cmd.Parameters.AddWithValue("@UserName", txtRUsername.Text);
                    cmd.Parameters.AddWithValue("@UserEmail", txtREmail.Text);
                    cmd.Parameters.AddWithValue("@Password", txtRPassword.Text);
                    try
                    {
                        con.Open();
                        cmd.ExecuteNonQuery();
                        Response.Write("<script language='javascript'> alert('Your data has been entered');</script>");
                    }
                    catch (Exception er)
                    {
                        Response.Write("<script language='javascript'> alert('Connection now in probelm');</script>");
                    }
                    finally
                    {
                        con.Close();
                        Response.Redirect("Login.aspx");
                    }
                }

            }
        }
    }
}