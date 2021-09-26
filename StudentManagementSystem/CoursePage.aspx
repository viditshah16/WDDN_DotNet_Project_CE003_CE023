<%@ Page Title="" Language="C#" MasterPageFile="~/SMS.Master" AutoEventWireup="true" CodeBehind="CoursePage.aspx.cs" Inherits="StudentManagementSystem.CoursePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-color:white">
    <h4>Provide details of subject opted for and fees paid for the course.</h4>
    </div>
    
    <table style="height: 338px; width: 475px; margin-left: 0px">
        <tr>
            <td style="height: 56px"><h5>CourseName</h5></td>
            <td style="height: 56px; width: 269px">
                <asp:TextBox ID="TextCoursename" runat="server" ></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextCoursename" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 52px"><h5>Course Duration</h5></td>
            <td style="height: 52px; width: 269px">
                <asp:TextBox ID="TextDuration" runat="server" ></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextDuration" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 58px"><h5>Course fees</h5></td>
            <td style="height: 58px; width: 269px">
                <asp:TextBox ID="TextFees" runat="server" ></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="TextFees">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 58px">
                <asp:Button ID="ButtonCourse" runat="server" Text="Insert New Course" OnClick="ButtonCourse_Click" BackColor="#00FF99" BorderColor="Red" BorderStyle="Double" Height="41px" /></td>
            <td style="height: 58px; width: 269px">
                <asp:Label ID="LabelMsg" runat="server" Text="" ForeColor="greenyellow"></asp:Label></td>
        </tr>
    </table>
        
        
</asp:Content>
