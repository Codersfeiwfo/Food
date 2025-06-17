<%@ Page Title="Order" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="Food.Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="padding: 24px; background-color: #f4f7fd; border-radius: 16px; font-family: 'Segoe UI', 'SamsungOne', sans-serif;">

        <h2 style="font-size: 26px; font-weight: 700; margin-bottom: 20px; color: #1c1c1e;">Place Your Order</h2>

        <asp:ScriptManager ID="ScriptManager1" runat="server" />

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>

                <div style="display: grid; grid-template-columns: repeat(auto-fill, minmax(240px, 1fr)); gap: 16px; margin-bottom: 24px;">
                    <asp:CheckBoxList ID="chkItems" runat="server" RepeatDirection="Vertical" RepeatColumns="1" CssClass="order-list"
                        style="font-size: 15px; font-family: 'Segoe UI', 'SamsungOne', sans-serif;">
                        <asp:ListItem Text="Cola - $1.99" Value="1.99" />
                        <asp:ListItem Text="Lemonade - $2.49" Value="2.49" />
                        <asp:ListItem Text="Iced Tea - $2.29" Value="2.29" />
                        <asp:ListItem Text="Orange Juice - $2.99" Value="2.99" />
                        <asp:ListItem Text="Burger - $5.99" Value="5.99" />
                        <asp:ListItem Text="Chicken Wrap - $6.49" Value="6.49" />
                        <asp:ListItem Text="Veggie Pizza - $7.99" Value="7.99" />
                        <asp:ListItem Text="Pasta Alfredo - $8.99" Value="8.99" />
                        <asp:ListItem Text="Ice Cream - $2.49" Value="2.49" />
                        <asp:ListItem Text="Chocolate Cake - $3.49" Value="3.49" />
                        <asp:ListItem Text="Fruit Salad - $2.99" Value="2.99" />
                        <asp:ListItem Text="Donut - $1.89" Value="1.89" />
                    </asp:CheckBoxList>
                </div>

                <asp:Button ID="btnCalculate" runat="server" Text="Calculate Total"
                    CssClass="btn-accent"
                    style="padding: 10px 24px; background-color: #43a047; color: white; border: none;
                    font-size: 16px; font-family: 'Segoe UI', 'SamsungOne', sans-serif;
                    border-radius: 8px; cursor: pointer;" OnClick="btnCalculate_Click" />

                <br /><br />

                <asp:Label ID="lblTotal" runat="server" Text="Total: $0.00"
                    style="font-weight: bold; font-size: 18px; color: #2e7d32; font-family: 'Segoe UI', 'SamsungOne', sans-serif;" />

            </ContentTemplate>
        </asp:UpdatePanel>

        <hr style="margin: 30px 0;" />

        <div style="display: flex; flex-direction: column; gap: 20px; max-width: 400px;">

            <div>
                <asp:Label Text="Your Name:" AssociatedControlID="txtName" runat="server"
                    style="font-size: 14px; font-weight: 500;" />
                <asp:TextBox ID="txtName" runat="server" CssClass="textbox"
                    style="padding: 10px; font-size: 15px; font-family: 'Segoe UI'; width: 100%; border-radius: 8px; border: 1px solid #ccc;" />
                <asp:RequiredFieldValidator ControlToValidate="txtName" ErrorMessage="* Required"
                    runat="server" ForeColor="Red" Display="Dynamic" />
            </div>

            <div>
                <asp:Label Text="Phone (10 digits):" AssociatedControlID="txtPhone" runat="server"
                    style="font-size: 14px; font-weight: 500;" />
                <asp:TextBox ID="txtPhone" runat="server" CssClass="textbox"
                    style="padding: 10px; font-size: 15px; font-family: 'Segoe UI'; width: 100%; border-radius: 8px; border: 1px solid #ccc;" />
                <asp:RegularExpressionValidator ControlToValidate="txtPhone"
                    ValidationExpression="^\d{10}$" ErrorMessage="* Enter 10 digits"
                    runat="server" ForeColor="Red" Display="Dynamic" />
            </div>

            <asp:Button ID="btnSubmit" runat="server" Text="Submit Order"
                CssClass="btn-accent"
                style="padding: 10px 24px; background-color: #1976D2; color: white; border: none;
                font-size: 16px; font-family: 'Segoe UI', 'SamsungOne', sans-serif;
                border-radius: 8px; cursor: pointer;" />
        </div>
    </div>
</asp:Content>







