    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web;
    using System.Web.UI;
    using System.Web.UI.WebControls;
    using System.Data.SqlClient;
    using System.Data.Sql;
    using System.Web.UI.HtmlControls;
    using System.IO.Compression;
    using System.Data;
    using System.Configuration;
using System.Windows.Forms;
    public partial class MahindraLogan : System.Web.UI.Page
    {
        private String strConnString = ConfigurationManager.ConnectionStrings["CabConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();
            }
            
        } 
        private void BindData()
        {
            string strQuery = "select * from Selfdrive_cab where Status = 'Available'";
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
        protected void send(object sender, EventArgs e)
        {
           
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            //var id1 = Convert.ToInt32(e.CommandArgument);
            //String cabid = Convert.ToInt32(((GridViewRow(((LinkButton)e.CommandSource).NamingContainer)).Cells[1].Text));
            //String cabname = ((GridViewRow(((LinkButton)e.CommandSource).NamingContainer)).Cells[2].Text;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string connstring = "Data Source=HARSH-PC;Initial Catalog=cab;Integrated Security=True";
            SqlConnection sqlcon = new SqlConnection(connstring);
            string str = txtsearch.Text;
            SqlCommand sqlcmd = new SqlCommand("select * from selfdrive_cab where source like '%" + str + "%'", sqlcon);
            SqlDataAdapter adp = new SqlDataAdapter(sqlcmd);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {

                GridView1.DataSource = ds.Tables[0];
                GridView1.DataSourceID = null;
                GridView1.DataBind();

            }
            else
            {
                MessageBox.Show("Source is not available");
                Response.Redirect("User_selfdrive1.aspx");
            }
        }
}
