using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Windows.Forms;
using System.Web.UI.WebControls;
using System.ComponentModel.DataAnnotations;

namespace PhoneBook
{
    public partial class PhoneBook : System.Web.UI.Page
    {
        public List<ContactsInfo> listContacts = new List<ContactsInfo>();
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["PhoneBook"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = System.Data.CommandType.Text;
            con.Open();
            if (con.State==ConnectionState.Open) 
            {
                con.Close();
            }
            con.Open();


            Disp_data();
            con.Close();
        }
        public void Disp_data()
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Contacts";
            cmd.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter("select * from Contacts",con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        public class ContactsInfo
        {
            public string first_name;
            public string last_name;
            public int phone;
            public string email;


        }
protected void Btn_Add_Click(object sender, EventArgs e)
        {
            Server.Transfer("AddContact.aspx");

        }

        protected void Btn_Search_Click(object sender, EventArgs e)
        {
            con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["PhoneBook"].ConnectionString;
            con.Open();
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            if (txt_fo_search_id.Text != "")
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select FirstName, LastName, Phone, Email FROM Contacts WHERE PKID = '" + txt_fo_search_id.Text + "'";
                cmd.ExecuteNonQuery();
                SqlDataAdapter da = new SqlDataAdapter("select FirstName, LastName, Phone, Email FROM Contacts WHERE PKID = '" + txt_fo_search_id.Text + "'", con);
                cmd.Parameters.AddWithValue("@PKID", int.Parse(txt_fo_search_id.Text));
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else
                Disp_data();
        }

        protected void Btn_Update_Click(object sender, EventArgs e)
        {
            Server.Transfer("UpdateContact.aspx");
        }
    }
}