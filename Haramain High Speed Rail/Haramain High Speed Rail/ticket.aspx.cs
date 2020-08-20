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
    public partial class ticket : System.Web.UI.Page
    {
        private string abc = WebConfigurationManager.ConnectionStrings["HaramainRailwayConnectionString1"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Reserve a ticket for a user and insert it into booking table
        protected void Done_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(abc);
            try
            {

                String UserEmail = Session["User"].ToString();
                SqlCommand cmd = new SqlCommand("insert into booking (UserEmail,TicketNumber) values(@UserEmail, @TicketNumber)", con);
                cmd.Parameters.AddWithValue("@UserEmail", UserEmail);
                cmd.Parameters.AddWithValue("@TicketNumber", DropDownList1.SelectedValue);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script language='javascript'> alert('Your booking has been done');</script>");
                Session["User"] = UserEmail;
                Response.Redirect("reserved.aspx");
              
            }      
            catch (NullReferenceException ex)
            {
               Response.Redirect("Login.aspx");
            }
         
          
        }
    }
    }