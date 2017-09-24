using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ATI.Web.Email
{
    public partial class EmailTemplate : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void UpdateAlert(String _content)
        {
            content.Text = _content;
        }
    }
}