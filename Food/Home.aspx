<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Food.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="padding: 40px; background: linear-gradient(to bottom right, #e3f2fd, #f9f9f9); border-radius: 12px; font-family: 'Segoe UI', sans-serif;">

        <h2 style="font-size: 28px; font-weight: 700; color: #1976D2; text-align: center; margin-bottom: 12px;">
            Welcome to <span style="color: #0d47a1;">FoodCorner</span>
        </h2>

        <p style="text-align: center; font-size: 17px; color: #444; margin-bottom: 28px;">
            Your one-stop destination for delicious fast food, refreshing drinks, and delightful desserts.
        </p>

        <div style="text-align: center; margin-bottom: 30px;">
            <img src="Images/food-banner.jpg" alt="Food Banner" style="max-width: 90%; border-radius: 14px; box-shadow: 0 8px 20px rgba(0,0,0,0.05);" />
        </div>

        <div style="text-align: center; margin-bottom: 40px;">
            <video controls width="720" style="border-radius: 14px; box-shadow: 0 4px 14px rgba(0,0,0,0.1);">
                <source src="Images/promo-video.mp4" type="video/mp4" />
                Your browser does not support the video tag.
            </video>
        </div>

        <div style="display: flex; flex-wrap: wrap; justify-content: center; gap: 30px; margin-bottom: 50px;">
            <div style="flex: 1 1 250px; background: #fff; border-radius: 16px; box-shadow: 0 6px 14px rgba(0,0,0,0.06); padding: 24px; text-align: center;">
                <img src="Images/delivery-icon.png" alt="Delivery" style="width: 64px;" />
                <h4 style="margin-top: 12px;">Fast Delivery</h4>
                <p style="color: #666;">Get your food fresh in under 30 minutes!</p>
            </div>
            <div style="flex: 1 1 250px; background: #fff; border-radius: 16px; box-shadow: 0 6px 14px rgba(0,0,0,0.06); padding: 24px; text-align: center;">
                <img src="Images/fresh-icon.png" alt="Fresh" style="width: 64px;" />
                <h4 style="margin-top: 12px;">Fresh Ingredients</h4>
                <p style="color: #666;">Only premium organic ingredients in every meal.</p>
            </div>
            <div style="flex: 1 1 250px; background: #fff; border-radius: 16px; box-shadow: 0 6px 14px rgba(0,0,0,0.06); padding: 24px; text-align: center;">
                <img src="Images/support-icon.png" alt="Support" style="width: 64px;" />
                <h4 style="margin-top: 12px;">24/7 Support</h4>
                <p style="color: #666;">Friendly staff always ready to help.</p>
            </div>
        </div>

        <div style="text-align: center;">
            <asp:Button ID="btnOrderNow" runat="server" Text="Order Now"
                PostBackUrl="~/Order.aspx"
                CssClass="btn-accent"
                style="padding: 14px 32px; font-size: 18px; background-color: #43a047; color: white;
                border: none; border-radius: 8px; cursor: pointer; box-shadow: 0 4px 10px rgba(0,0,0,0.1);" />
        </div>
    </div>
</asp:Content>



