using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class Editemployee : System.Web.UI.Page
{

    private String strConnString = ConfigurationManager.ConnectionStrings["CabConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection sconn = new SqlConnection("Data Source=HARSH-PC;Initial Catalog=cab;Integrated Security=True");
        var s = HttpContext.Current.Session["mobileno"];
        Label1.Text = s.ToString();

        sconn.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM login WHERE mobileno='" + Label1.Text + "'", sconn);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            var var2 = dr[1].ToString(); ;
            Label2.Text = var2.ToString();

        }

        dr.Close();
        if (!IsPostBack)
        {
            BindData();
        }
    }

    private void BindData()
    {
        string strQuery = "select eid, mobile, dname, age, Designation, Status, email" +
                       " from employee";
        SqlCommand cmd = new SqlCommand(strQuery);
        //    GridView1.DataSource = null;
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
    protected void OnPaging(object sender, GridViewPageEventArgs e)
    {
        BindData();
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }

    protected void Editemploy(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        BindData();
    }
    protected void CancelEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        BindData();
    }
    protected void UpdateEmployee(object sender, GridViewUpdateEventArgs e)
    {
        String eid = ((Label)GridView1.Rows[e.RowIndex].FindControl("lbleid")).Text;
        //String mobile = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtmobile")).Text;
        String dname = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtdname")).Text;
        //String age = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtage")).Text;
        String designation = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtdesignation")).Text;
       
        String Status = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtStatus")).Text;
        String email = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtemail")).Text;
        SqlConnection con = new SqlConnection(strConnString);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update employee set dname=@dname,Designation=@Designation,Status=@Status, email=@email " +
         "where eid=@eid;" +
         "select eid,mobile,dname,age,Designation,Status,email from employee";
        cmd.Parameters.Add("@eid", SqlDbType.VarChar).Value = eid;
       // cmd.Parameters.Add("@mobile", SqlDbType.VarChar).Value = mobile;
        cmd.Parameters.Add("@dname", SqlDbType.VarChar).Value = dname;
       // cmd.Parameters.Add("@age", SqlDbType.VarChar).Value = age;
        cmd.Parameters.Add("@Designation", SqlDbType.VarChar).Value = designation;
        cmd.Parameters.Add("@Status", SqlDbType.VarChar).Value = Status;
        cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = email;
        GridView1.EditIndex = -1;
        GridView1.DataSource = GetData(cmd);
        GridView1.DataBind();
    }

}
