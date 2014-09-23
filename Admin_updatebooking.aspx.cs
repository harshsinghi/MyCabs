using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;
using System.IO.Compression;
public partial class Admin_updatebooking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       // string strid ="null";
        string strbookid = Request.QueryString["Cpid"];
        string strsource = Request.QueryString["Source"];

        string strdest = Request.QueryString["Destination"];
        string strstatus = Request.QueryString["Status"];

        txtbookid.Text = strbookid;

        txtsource.Text = strsource;
        txtdest.Text = strdest;
        txtstatus.Text = strstatus;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection scon2 = new SqlConnection("Data Source=HARSH-PC;Initial Catalog=cab;Integrated Security=True");
        
        //string Status = txtstatus.Text;
        string bookid = txtbookid.Text;
        string strstatus = txtstatus.Text;
        SqlCommand scom = new SqlCommand("Update carpoolcabs Set Status=@Status Where Cpid=@strbookid",scon2);
        scom.Parameters.Add("@strbookid", SqlDbType.VarChar).Value = bookid;
        scom.Parameters.Add("@Status", SqlDbType.VarChar).Value = strstatus;
        scon2.Open();
        scom.ExecuteNonQuery();
        scon2.Close();

      
        MessageBox.Show("Updated");
        
       
        Response.Redirect("Admin_Home.aspx");
    }
}
