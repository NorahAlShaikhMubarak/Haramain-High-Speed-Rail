using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;


namespace Haramain_High_Speed_Rail
{
    public partial class Login : System.Web.UI.Page
    {
        private string abc = WebConfigurationManager.ConnectionStrings["HaramainRailwayConnectionString1"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(abc);
        }

        protected void lbLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(abc);//connection
            SqlCommand cmd = new SqlCommand("select UserId, UserEmail, Password from Users where UserEmail = @email and Password = @password", con);//select query with user information
            cmd.Parameters.AddWithValue("@email", txtLEmail.Text);
            cmd.Parameters.AddWithValue("@password", txtLPassword.Text);
            try
            {
                con.Open();//open the connection
                var rd = cmd.ExecuteReader();//read data in the table to find the requird record
                if (rd.HasRows)//if the table has rows then,
                {
                    while (rd.Read())//read the records to find the required one
                    {
                        Session["User"] = txtLEmail.Text;
                        Response.Redirect("ticket.aspx");//after find the required record, it opens the booking page
                        Response.Write("<script language='javascript'> alert('Your login has been done');</script>");//when the login is correct
                    }
                }
                else
                {
                    Response.Write("<script language='javascript'> alert('invalid username or password');</script>");
                }
            }
            catch (Exception er)
            {
                Response.Write("<script language='javascript'> alert('Connection now in probelm');</script>");//when there is a problem in the connection or cannot find the record
            }
            finally
            {
                con.Close();//close the connection
            }

        }
    }
}