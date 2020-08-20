using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Haramain_High_Speed_Rail
{
    public partial class reserved : System.Web.UI.Page
    {
        private string abc = WebConfigurationManager.ConnectionStrings["HaramainRailwayConnectionString1"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Display all the reserved tickets for a user
            string UserEmail = Session["user"].ToString();
            //Create a connection to the database :
            SqlConnection con = new SqlConnection(abc);
            SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM booking WHERE UserEmail='" + UserEmail + "'", con);
            //Create a virtual table 
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        //Update a ticket
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(abc);
            SqlCommand cmd = new SqlCommand("update booking set ticketnumber = @TicketNumber where bookingid=@BookingId", con);
            cmd.Parameters.AddWithValue("@ticketnumber", TextBox2.Text);
            cmd.Parameters.AddWithValue("@bookingid", TextBox3.Text);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Write("<script language='javascript'>alert('Your data has been Updated');</script>");
            }
            catch (Exception er)
            {
                Response.Write("<script language='javascript'>alert('Connection now in probelm');</script>");

            }
            finally
            {
                con.Close();
            }
        }

        //Delete a ticket
        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(abc);
            SqlCommand cmd = new SqlCommand("delete from booking where bookingid=@BookingId", con);
            cmd.Parameters.AddWithValue("@bookingid", TextBox3.Text);
            try
            {
                con.Open(); cmd.ExecuteNonQuery();
                Response.Write("<script language='javascript'> alert('Your data has been Deleted');</script>");
            }
            catch (Exception er)
            {
                Response.Write("<script language='javascript'> alert('Connection now in probelm');</script>");
            }

            finally
            {
                con.Close();
            }
        }
    }
}