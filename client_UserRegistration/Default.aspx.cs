using client_UserRegistration.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace client_UserRegistration
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        ServiceReference1.Service1Client client = new ServiceReference1.Service1Client();
        protected void BtInsert_Click(object sender, EventArgs e)
        {
            InsertUser user = new InsertUser();
            user.Name = TextBox1.Text;
            user.Email = TextBox2.Text;

            string result = client.Insert(user);

            lblMsg.Text = result;
        }

        protected void BtSearch_Click(object sender, EventArgs e)
        {
            ServiceReference1.gettestdata g = new ServiceReference1.gettestdata();
            g = client.Getinfo();
            DataTable dt = new DataTable();
            dt = g.usertab;
            GvTable.DataSource = dt;
            GvTable.DataBind();
        }

        protected void BtUpdate_Click(object sender, EventArgs e)
        {
            UpdateUser update = new UpdateUser();
            update.UID = int.Parse(TextBox3.Text);
            update.Name = TextBox1.Text;
            update.Email = TextBox2.Text;

            string result = client.Update(update);
            lblMsg.Text = result;
        }

        protected void BtDelete_Click(object sender, EventArgs e)
        {
            DeleteUser delete = new DeleteUser();
            delete.UID = int.Parse(TextBox3.Text);

            string result = client.Delete(delete);
            lblMsg.Text = result;
        }
    }
}