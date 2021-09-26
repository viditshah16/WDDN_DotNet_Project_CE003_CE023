<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="StudentManagementSystem.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            width: 209px;
            height: 87px;
        }
        .auto-style4 {
            height: 87px;
            width: 233px;
        }
        .auto-style7 {
            width: 472px;
            height: 258px;
        }
        .auto-style10 {
            width: 209px;
            height: 79px;
        }
        .auto-style11 {
            height: 79px;
            width: 233px;
        }
    </style>
</head>
<body style="background-image:url('Static/13.jpg'); background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;">
    <form id="form1" runat="server">
        <div>
            <center>
                <h1>Student Management System</h1>
                <hr style="height:2px;border-width:0;color:black;background-color:black"/>
                
                <table  class="auto-style7">
                    <tr>
                        <td class="auto-style3"><h2>Admin User Id</h2></td>
                        <td class="auto-style4"><asp:TextBox ID="TxtAdminId" runat="server" Width="196px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style10"><h2>Password</h2></td>
                        <td class="auto-style11"><asp:TextBox ID="TxtPwdAdmin" runat="server" TextMode="Password" Width="196px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style10">
                            <asp:Button ID="ButtonLogin" runat="server" Text="Login" OnClick="ButtonLogin_Click" Height="38px" Width="128px" /></td>
                        <td class="auto-style11">
                            <h2><asp:Label ID="Labelmsg" runat="server" ForeColor="Red"></asp:Label></h2></td>
                    </tr>
                </table>
                
            </center>
        </div>
    </form>
</body>
</html>
