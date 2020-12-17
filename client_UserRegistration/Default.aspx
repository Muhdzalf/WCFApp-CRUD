<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="client_UserRegistration._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <div style="color: #000000; background-color: #FF0000; text-align: center; font-size: larger;">
        <asp:label ID="labels" runat="server" text="User Registration Form" Font-Size="Large" ForeColor="White"></asp:label>
    </div>
    
    <br />
    <br />
    User ID&nbsp;
    <asp:TextBox ID="TextBox3" runat="server" Width="178px"></asp:TextBox>
    <br />

   <asp:label ID="name" runat="server" text="Name"></asp:label>
   &nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" Width="178px"></asp:TextBox>
   <br />
    <asp:label ID="email" runat="server" text="Email"></asp:label>
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" runat="server" Width="178px"></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="BtInsert" runat="server" Text="Insert" OnClick="BtInsert_Click" />
    <asp:Button ID="BtSearch" runat="server" Text="Search" OnClick="BtSearch_Click" />
    <asp:Button ID="BtUpdate" runat="server" OnClick="BtUpdate_Click" Text="Update" />
    <asp:Button ID="BtDelete" runat="server" OnClick="BtDelete_Click" Text="Delete" OnClientClick="return confirm('Are you sure want to delete this Data?');"/>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="#CC3300" Text="Msg"></asp:Label>
    <asp:GridView ID="GvTable" runat="server">
    </asp:GridView>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </asp:Content>
