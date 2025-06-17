using System;
using System.Collections.Generic;
using System.Web.UI;

namespace Food
{
    public partial class Menu : Page
    {
        public class MenuItem
        {
            public string Name { get; set; }
            public string Description { get; set; }
            public string ImagePath { get; set; }
            public decimal Price { get; set; }
            public string Category { get; set; }
        }

        private static List<MenuItem> allItems = new List<MenuItem>
        {
                new MenuItem { Name = "Lemonade", Description = "Fresh lemon drink", Price = 2.49m, Category = "Drinks", ImagePath = "Images/lemonade.jpg" },
                new MenuItem { Name = "Iced Tea", Description = "Black tea with ice", Price = 2.29m, Category = "Drinks", ImagePath = "Images/icedtea.jpg" },
                new MenuItem { Name = "Cola", Description = "Chilled drink", Price = 1.99m, Category = "Drinks", ImagePath = "Images/cola.jpg" },
                new MenuItem { Name = "Orange Juice", Description = "Freshly squeezed orange juice", Price = 2.99m, Category = "Drinks", ImagePath = "Images/orangejuice.jpg" },

                new MenuItem { Name = "Burger", Description = "Beef burger with cheese", Price = 5.99m, Category = "Main", ImagePath = "Images/burger.jpg" },
                new MenuItem { Name = "Chicken Wrap", Description = "Grilled chicken wrap", Price = 6.49m, Category = "Main", ImagePath = "Images/wrap.jpg" },
                new MenuItem { Name = "Veggie Pizza", Description = "Vegetarian pizza", Price = 7.99m, Category = "Main", ImagePath = "Images/pizza.jpg" },
                new MenuItem { Name = "Pasta Alfredo", Description = "Creamy chicken pasta", Price = 8.99m, Category = "Main", ImagePath = "Images/pasta.jpg" },

                new MenuItem { Name = "Ice Cream", Description = "Vanilla scoop", Price = 2.49m, Category = "Desserts", ImagePath = "Images/icecream.jpg" },
                new MenuItem { Name = "Chocolate Cake", Description = "Rich chocolate slice", Price = 3.49m, Category = "Desserts", ImagePath = "Images/cake.jpg" },
                new MenuItem { Name = "Fruit Salad", Description = "Fresh fruits mix", Price = 2.99m, Category = "Desserts", ImagePath = "Images/fruitsalad.jpg" },
                new MenuItem { Name = "Donut", Description = "Glazed donut", Price = 1.89m, Category = "Desserts", ImagePath = "Images/donut.jpg" }
        };

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                rptMenu.DataSource = allItems;
                rptMenu.DataBind();
            }
        }

        protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selected = ddlCategory.SelectedValue;
            if (selected == "All")
                rptMenu.DataSource = allItems;
            else
                rptMenu.DataSource = allItems.FindAll(i => i.Category == selected);

            rptMenu.DataBind();
        }
    }
}


