using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
using System.Xml.Linq;

namespace Food
{
    public partial class Order : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            decimal total = 0;

            foreach (ListItem item in chkItems.Items)
            {
                if (item.Selected)
                {
                    if (decimal.TryParse(item.Value, out decimal price))
                    {
                        total += price;
                    }
                }
            }

            lblTotal.Text = "Total: $" + total.ToString("0.00");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text.Trim();
            string phone = txtPhone.Text.Trim();

            StringBuilder selectedItems = new StringBuilder();
            decimal total = 0;

            foreach (ListItem item in chkItems.Items)
            {
                if (item.Selected)
                {
                    selectedItems.Append(item.Text.Split('-')[0].Trim() + ", ");
                    if (decimal.TryParse(item.Value, out decimal price))
                        total += price;
                }
            }

            if (selectedItems.Length > 2)
                selectedItems.Length -= 2;

            string date = DateTime.Now.ToString("yyyy-MM-dd HH:mm");
            string line = $"\"{name}\",\"{phone}\",\"{selectedItems}\",\"${total:0.00}\",\"{date}\"";

            string filePath = @"C:\Users\user\OneDrive\Desktop\VS\Food\Food\App_Data\Orders.csv";
            File.AppendAllText(filePath, line + Environment.NewLine, Encoding.UTF8);

            lblTotal.Text = "✔ Order saved to: " + filePath;
        }
    }
}




