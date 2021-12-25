using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SendBulkEmailToSelectedCustomer
{
    public partial class index : System.Web.UI.Page
    {
        FunctionClass fun = new FunctionClass();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            if (!Page.IsPostBack)
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from CustomerList";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                r1.DataSource = dt;
                r1.DataBind();
            }
        }

        protected void bttnsubmit_Click(object sender, EventArgs e)
        {

            string value = "";
            foreach (RepeaterItem item in r1.Items)
            {
                var checkbox = item.FindControl("rbt_details") as CheckBox;
                if (checkbox.Checked)
                {
                    //value += checkbox.Text + ",";
                    value += fun.sendEmail(checkbox.Text, "Send Bulk Email to Selected Customers in Asp.Net C#", "Bulk Email Testing") + " , ";

                }
            }
            lblMessage.Text = "<b>" + value + "</b>";

        }
    }
}