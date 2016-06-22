using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace asp.net_Practice_L1
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            FullNameTb.Text = FirstNameTb.Text.ToString() + " " + LastNameTb.Text.ToString();
        }
    }
}