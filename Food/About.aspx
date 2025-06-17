<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="Food.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="padding: 24px; background-color: #f4f7fd; border-radius: 16px; font-family: 'Segoe UI', 'SamsungOne', sans-serif;">

        <h2 style="font-size: 26px; font-weight: 700; margin-bottom: 20px; color: #1c1c1e;">About FoodCorner</h2>

        <p style="font-size: 16px; color: #444; line-height: 1.6; max-width: 700px; margin-bottom: 30px;">
            FoodCorner is a modern fast-casual restaurant offering a fresh, affordable and delicious menu.
            Founded in 2010, we focus on delivering high-quality meals made with real ingredients — fast.
            Whether you're craving a burger, a refreshing drink or a sweet dessert, we've got you covered.
        </p>

        <img src="Images/team.jpg" alt="Our Team" style="width: 100%; max-width: 700px; border-radius: 16px; box-shadow: 0 4px 12px rgba(0,0,0,0.1); margin-bottom: 40px;" />

        <video controls width="100%" style="max-width: 700px; border-radius: 16px; box-shadow: 0 4px 12px rgba(0,0,0,0.1);">
            <source src="Images/kitchen-tour.mp4" type="video/mp4" />
            Your browser does not support the video tag.
        </video>
    </div>
</asp:Content>





