using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;
using System.Configuration;
public partial class Delete_employee : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        
        SqlConnection con = new SqlConnection("Data Source=HARSH-PC;Initial Catalog=cab;Integrated Security=True ");
        con.Open();
        SqlCommand com = new SqlCommand("select mobile from employee where mobile=@mobile", con);
        com.Parameters.Add(new SqlParameter("@mobile", TextBox1.Text));
        SqlDataReader dr = com.ExecuteReader();

        Boolean b = (Boolean)dr.HasRows;
        if (b == false)
        {
            MessageBox.Show("Invalid Mobile no..Re enter");
            TextBox1.Text = "";
        }
        else
        {
            con.Close();
            con.Open();
            SqlCommand cm = new SqlCommand("DELETE employee WHERE mobile = @mobile", con);
            cm.Parameters.Add(new SqlParameter("@mobile", TextBox1.Text));
            cm.ExecuteNonQuery();
            cm.Dispose();
            con.Close();

            con.Open();
            
            // Delete Employee
            
            SqlCommand cm1 = new SqlCommand("DELETE login WHERE mobileno = '"+TextBox1.Text+"'", con);
            
            cm1.ExecuteNonQuery();
            cm1.Dispose();
            con.Close();

            //clearAll();
            MessageBox.Show("Deleted");
        }
    }
}
