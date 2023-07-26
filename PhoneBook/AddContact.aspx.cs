using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace PhoneBook
{
    public partial class AddContact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_SaveNewContact_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();

            con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["PhoneBook"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "INSERT INTO Contacts(FirstName,LastName,Phone,Email) VALUES('" +txt_firstName.Text+"','"+txt_lastName.Text+"','" +txt_phone.Text+"','" +txt_email.Text+"')";
            con.Open();
            if (txt_phone.Text.Length!=9|| txt_firstName.Text == "" || txt_lastName.Text == "" ||txt_phone.Text == "" || txt_email.Text == "")
                lbl_massege.Text = "Error, try again later";
            else { 
                int rows = cmd.ExecuteNonQuery();
                if (rows == 1)
                    lbl_massege.Text = "Contact inserted successfuly!";
                else
                    lbl_massege.Text = "Error, try again later";
            }
           
            con.Close();    

        }


        protected void btn_Return_to_phone_book_Click(object sender, EventArgs e)
        {
            Server.Transfer("PhoneBook.aspx");
        }

        protected void txt_firstName_TextChanged(object sender, EventArgs e)
        {

        }
    }
}