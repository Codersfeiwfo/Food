<%@ Page Title="Menu" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="Food.Menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="padding: 20px; background-color: #f3f6fd; border-radius: 16px;">
        <h2 style="font-size: 26px; font-weight: 600; margin-bottom: 20px; color: #1c1c1e;">Our Menu</h2>

        <asp:ScriptManager ID="ScriptManager1" runat="server" />

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:DropDownList ID="ddlCategory" runat="server" AutoPostBack="true"
                    OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged"
                    style="margin-bottom: 28px; padding: 8px 14px; font-size: 15px; border-radius: 8px; border: 1px solid #ccc;">
                    <asp:ListItem Text="All" Value="All" />
                    <asp:ListItem Text="Drinks" Value="Drinks" />
                    <asp:ListItem Text="Main Dishes" Value="Main" />
                    <asp:ListItem Text="Desserts" Value="Desserts" />
                </asp:DropDownList>

                <div style="display: grid; grid-template-columns: repeat(auto-fill, minmax(240px, 1fr)); gap: 20px;">
                    <asp:Repeater ID="rptMenu" runat="server">
                        <ItemTemplate>
                            <div style="background: #ffffff; border-radius: 16px; padding: 16px;
                                         box-shadow: 0 4px 12px rgba(0,0,0,0.06); transition: transform 0.2s ease;
                                         display: flex; flex-direction: column; align-items: center;">
                                <img src='<%# Eval("ImagePath") %>' alt='<%# Eval("Name") %>' 
                                     style="width: 100%; max-height: 160px; object-fit: cover;
                                            border-radius: 12px; margin-bottom: 12px;" />
                                <h4 style="margin: 4px 0 4px; font-size: 18px; color: #2c3e50;"><%# Eval("Name") %></h4>
                                <p style="font-size: 14px; color: #666; margin: 0 0 6px; text-align: center;"><%# Eval("Description") %></p>
                                <span style="font-weight: bold; color: #2e7d32;">$<%# Eval("Price") %></span>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>






