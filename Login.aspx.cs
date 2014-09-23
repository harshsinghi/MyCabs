using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows.Forms;
using System.Windows;
using System.Threading;
using System.Data;
public partial class Login : System.Web.UI.Page
{
    SqlConnection sconn = new SqlConnection("Data Source=HARSH-PC;Initial Catalog=cab;Integrated Security=True");

    int id, id2,g1,g2,g3;
    int count, count1;
    string SqlStr,var2;
    DataSet ds;
    SqlCommand cmd;
    SqlCommandBuilder cmdb;
    SqlDataAdapter da;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        con = new SqlConnection();
        con.ConnectionString = "Data Source=HARSH-PC; Initial Catalog=cab; Integrated Security=true";
        cmd = new SqlCommand("select * from temptable1", con);
        con.Open();
        da = new SqlDataAdapter(cmd);
        cmdb = new SqlCommandBuilder(da);
        ds = new DataSet();
        da.Fill(ds, "temptable1");

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtmobile.Text == "" || txtpassword.Text == "")
            {
                //Label3.Text = "missing fields";
                
            }
            else
            {

                    String mobiletext = txtmobile.Text;
                    string passtext = txtpassword.Text;
                    sconn.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * FROM login WHERE mobileno='" + txtmobile.Text + "' and password='" + txtpassword.Text + "'", sconn);
                    SqlDataReader dr = cmd.ExecuteReader();

                    while (dr.Read())
                    {
                        String var1;
                        //int mobno;
                        var1 = dr[2].ToString();
                        var2 = dr[0].ToString();
                       // mobno = Convert.ToInt32(var2);
                       // MessageBox.Show(""+mobno);  
                      
                        // var2 = dr.GetString(2);
                        //MessageBox.Show(var1);
                        if (var1 == "Admin")
                        {
                            Session["Value"] = 1;
                            //g1 = Convert.ToInt32(dr.GetValue(1));
                            //TextBox1.Text = Convert.ToString(g1);
                            //cmd = new SqlCommand("update temptable1 set Admin=1,Mobileno = '" + g1 + "'", con);
                            //cmd.ExecuteNonQuery();
                           // MessageBox.Show(var1);
                            //SqlCommand upd = new SqlCommand("Update temptable1 set Admin='+var2'",sconn);
                            //SqlDataReader sdr3 = upd.ExecuteReader();
                           
                            Session["mobileno"] = txtmobile.Text;
                            Response.Redirect("Admin_Home.aspx");

                        }
                        else if (var1 == "Manager")
                        {
                            
                            Session["mobileno"] = txtmobile.Text;

                            Response.Redirect("Manage_home.aspx");
                        }

                        else if (var1 == "Customer")
                        {
                            
                            Session["mobileno"] = txtmobile.Text;
                            Response.Redirect("User_Home.aspx");
                        }

                        else
                        {     
                            MessageBox.Show("Invalid login");
                            txtmobile.Text = "";
                            txtpassword.Text = "";
                            txtmobile.Focus();

                        }
                        dr.Close();
                }
            }
        }
        catch (Exception)
        {
        }
   

}
}
