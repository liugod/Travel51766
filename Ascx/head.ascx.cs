using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;


public partial class Ascx_head : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public string inTime
    {
        get
        {
           return   DateTime.Now.ToShortDateString();
        }
    }
    public string outTime
    {
        get
        {

          return   DateTime.Now.AddDays(1).ToShortDateString();
        }
    }
}
