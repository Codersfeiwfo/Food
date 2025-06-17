using System;
using System.Web.UI;

namespace Food
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["loggedIn"] == null)
            {
                Response.Redirect("Login.aspx");
                return;
            }

            // Остальной код (если есть) можно писать ниже
        }
    }
}
