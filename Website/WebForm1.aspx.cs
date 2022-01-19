using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Website
{
    public partial class WebForm1 : System.Web.UI.Page
    {

         protected void Page_Load(object sender, EventArgs e)
    {

    }

        protected void btnregistration_Click(object sender, EventArgs e)
        {
            lblmsg.Text = "";
            SqlConnection SQLConn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString());
            SqlDataAdapter SQLAdapter = new SqlDataAdapter("insert into Employee values('" + txtfname.Text + "','" + txtlname.Text + "','" + txtcity.Text + "','" + txtemail.Text + "','" + txtdep.Text + "')", SQLConn);
            DataTable DT = new DataTable();
            SQLAdapter.Fill(DT);


            SqlDataAdapter SQLAAdapter = new SqlDataAdapter("select * from Employee", SQLConn);
            DataTable DTT = new DataTable();
            SQLAAdapter.Fill(DTT);

            GridView1.DataSource = DTT;
            GridView1.DataBind();

            lblmsg.Text = "Below are the Employee Details:!!";
            txtfname.Text = "";
            txtlname.Text = "";
            txtemail.Text = "";
            txtcity.Text = "";
            txtfname.Focus();

        }
    }
}