using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PhoneBook
{
    public partial class UpdateContact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_ReturnPhoneBook_Click(object sender, EventArgs e)
        {
            Server.Transfer("PhoneBook.aspx");
        }

        protected void Btn_update_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["PhoneBook"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;   
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "UPDATE Contacts SET FirstName = '"+txt_firstName.Text+ "', LastName =  '"+txt_lastName.Text+ "', Phone = '"+txt_phone.Text+ "',Email = '"+txt_email.Text+ "' WHERE PKID= '"+txt_id_for_update.Text+"';";
            con.Open();
            int rows =cmd.ExecuteNonQuery();

            if (rows == 1)
                lbl_massege.Text = "Contact updated successfuly";
            else
                lbl_massege.Text = "Error, try again later";
        }

        protected void txt_id_for_update_TextChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["PhoneBook"].ConnectionString;
            con.Open();
            if (txt_id_for_update.Text != "")
            {

                SqlCommand cmd = new SqlCommand("select FirstName, LastName, Phone, Email FROM Contacts WHERE PKID = @PKID", con);
                cmd.Parameters.AddWithValue("@PKID", int.Parse(txt_id_for_update.Text));
                SqlDataReader da = cmd.ExecuteReader();
                while (da.Read())
                {
                    txt_firstName.Text = da.GetValue(0).ToString();
                    txt_lastName.Text = da.GetValue(1).ToString();
                    txt_phone.Text = da.GetValue(2).ToString();
                    txt_email.Text = da.GetValue(3).ToString();
                }
                con.Close();
            }

        }
    }
}