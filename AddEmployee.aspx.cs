using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;
public partial class AddEmployee : System.Web.UI.Page
{
    int count, count1;
    SqlConnection scon;
    String SqlStr, SqlStr2;
    protected void Page_Load(object sender, EventArgs e)
    {
        count = 100;
        scon = new SqlConnection("Data Source=HARSH-PC;Initial Catalog=cab;Integrated Security=True");
        scon.Open();
        DataSet ds = new DataSet();
        string SQLCommand = "select * from employee";
        SqlDataAdapter Adapter = new SqlDataAdapter(SQLCommand, scon);
        Adapter.Fill(ds, "employee");
        Adapter.SelectCommand.Connection.Close();
        count1 = ds.Tables["employee"].Rows.Count;
        count = count + count1;
        Label1.Text = Convert.ToString(count);
        Label1.Enabled = false;
        scon.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtpassword.Text == txtrepassword.Text)
            {
                String usertype = "Manager";
                String name = txtname.Text;
                String email = txtemail.Text;
                String mobile = txtmobile.Text;
                String password = txtpassword.Text;
                String cfnpassword = txtrepassword.Text;
                String status = txtstatus.Text;
                String desig = txtdesignation.Text;
                String age = txtage.Text;
                
                SqlCommand cmd = new SqlCommand();
                SqlDataReader dr;
                SqlConnection scon = new SqlConnection("Data Source=HARSH-PC;Initial Catalog=cab;Integrated Security=True");
                scon.Open();
                cmd.Connection = scon;
                cmd.CommandText = "select * from login where mobileno='" + txtmobile.Text + "'";
                dr = cmd.ExecuteReader();
                dr.Read();

                if (dr.HasRows)
                {
                    MessageBox.Show("This record is already present");
                    return;
                }
                scon.Close();
                SqlConnection scon1 = new SqlConnection("Data Source=HARSH-PC;Initial Catalog=cab;Integrated Security=True");
                
                scon1.Open();

                SqlStr = "insert into login(mobileno,name,usertype,email,password) Values(";
                SqlStr = SqlStr + "'" + txtmobile.Text + "','" + txtname.Text + "','" + usertype + "','" + txtemail.Text + "','" + txtpassword.Text + "')";
                //MessageBox.Show(SqlStr);
                SqlCommand cmd2 = new SqlCommand(SqlStr, scon1);
                cmd2.ExecuteNonQuery();
                scon1.Close();
                Response.Redirect("RegSuccessful.aspx");
               
            }
            
        }
        catch (Exception e1)
        {
            // MessageBox.Show("" + e1.Message);
        }
        finally
        {

        }
    }
}
