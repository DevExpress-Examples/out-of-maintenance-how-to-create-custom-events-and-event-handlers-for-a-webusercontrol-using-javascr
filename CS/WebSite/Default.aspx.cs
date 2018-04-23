using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void cmbox2_Callback(object sender, DevExpress.Web.ASPxClasses.CallbackEventArgsBase e)
    {
        AccessDataSource1.SelectParameters["CategoryID"].DefaultValue = e.Parameter;
        cmbox2.DataBind();
    }
}