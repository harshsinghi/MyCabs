using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data;
using System.Configuration;
using System.Windows.Forms;
using System.Data.SqlClient;
public partial class Register : System.Web.UI.Page
{
    SqlConnection scon = new SqlConnection("Data Source=HARSH-PC;Initial Catalog=cab;Integrated Security=True");
    int id, id2;
    int count, count1;
    string SqlStr, SqlStr2;
    SqlCommand cmd;
    SqlCommandBuilder cmdb;
    SqlDataAdapter da;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        count = 100;
        scon = new SqlConnection("Data Source=HARSH-PC;Initial Catalog=cab;Integrated Security=True");
        scon.Open();
        DataSet ds = new DataSet();
        string SQLCommand = "select * from customer";
        SqlDataAdapter Adapter = new SqlDataAdapter(SQLCommand, scon);
        Adapter.Fill(ds, "customer");
        Adapter.SelectCommand.Connection.Close();
        count1 = ds.Tables["customer"].Rows.Count;
        count = count + count1;
        Label1.Text = Convert.ToString(count);
        Label1.Enabled = false;
        scon.Close();

       

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {
            if ((txtaddress.Text == "") || (txtemail.Text == "") || (txtmobile.Text == "") || (txtname.Text == "") || (txtpassword.Text == "") || (txtrepassword.Text == ""))
            {
                Button1.Enabled = false;
            }
        

                if (txtpassword.Text == txtrepassword.Text)
                {
                    String usertype = "Customer";
                    String name = txtname.Text;
                    String email = txtemail.Text;
                    String mobile = txtmobile.Text;
                    String password = txtpassword.Text;
                    String cfnpassword = txtrepassword.Text;
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
                        MessageBox.Show("This record is all ready present");
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

                    SqlStr2 = " insert into customer(cusid,name,mobile,address,email) Values(";
                    SqlStr2 = SqlStr2 + "'" + Label1.Text + "','" + txtname.Text + "','" + txtmobile.Text + "','" + txtaddress.Text + "','" + txtemail.Text + "')";
                    SqlCommand cmd3 = new SqlCommand(SqlStr2, scon1);
                    cmd3.ExecuteNonQuery();
                    scon1.Close();



                }
            
            Response.Redirect("RegSuccessful.aspx");
        }
        catch (Exception e1)
        {
           // MessageBox.Show("" + e1.Message);
        }
        finally
        {
            
        }
    }
    protected void txtname_TextChanged(object sender, EventArgs e)
    {
 
    }
}
