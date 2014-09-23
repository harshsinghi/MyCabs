using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class Admin_Assignemployee : System.Web.UI.Page
{
    private String strConnString = ConfigurationManager.ConnectionStrings["CabConnectionString"].ConnectionString;
    string sta = "unavailable";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
        }
    }

    private void BindData()
    {
        string strQuery = "select Cpid, Source, Destination, Date, cid, eid" +
                       " from carpoolcabs";
        SqlCommand cmd = new SqlCommand(strQuery);
      
        GridView1.DataSourceID = null;
        GridView1.DataSource = GetData(cmd);
        GridView1.DataBind();

    }
    private DataTable GetData(SqlCommand cmd)
    {
        DataTable dt = new DataTable();
        SqlConnection con = new SqlConnection(strConnString);
        SqlDataAdapter sda = new SqlDataAdapter();
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        con.Open();
        sda.SelectCommand = cmd;
        sda.Fill(dt);
        return dt;
    }

    protected void EditCab(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        BindData();


    }
    protected void CancelEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        BindData();
    }
    protected void UpdateCab(object sender, GridViewUpdateEventArgs e)
    {
        // assign a cab to employee
    
        String strcpid = ((Label)GridView1.Rows[e.RowIndex].FindControl("lblCpid")).Text;
        String strsource = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtsource")).Text;
        String strcid = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtcid")).Text;
        String strdestination = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtdestination")).Text;
        String txtdate = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtdate")).Text;
        String txteid = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txteid")).Text;
        
        SqlConnection con = new SqlConnection(strConnString);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update carpoolcabs set eid=@eid " +
         "where Cpid=@Cpid;" +
         "select Cpid, Source,Destination, Date, cid, eid from carpoolcabs";
        cmd.Parameters.Add("@Cpid", SqlDbType.VarChar).Value = strcpid;
        
        cmd.Parameters.Add("@eid", SqlDbType.VarChar).Value = txteid;
        
        
        
        GridView1.EditIndex = -1;
        GridView1.DataSource = GetData(cmd);
        GridView1.DataBind();
        con.Close();
        con.Open();
        string sqlstr22 = "update employee set Status='" + sta + "', cid='"+strcid+ "'  where eid='" + txteid + "'";
        SqlCommand cmd2 = new SqlCommand(sqlstr22,con);
        cmd2.ExecuteNonQuery();
        con.Close();


    }
}
