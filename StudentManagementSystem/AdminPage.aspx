﻿<%@ Page Title="" Language="C#" MasterPageFile="~/SMS.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="StudentManagementSystem.AdminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-color:white">
    <h4>Admin can get information, edit and remove subject, tutor and students details.</h4>
        </div>
   <br />
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server" Height="38px" Width="143px">
        <asp:ListItem>Coursetable</asp:ListItem>
        <asp:ListItem>student</asp:ListItem>
        <asp:ListItem>tutor</asp:ListItem>
    </asp:DropDownList>
    <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" OnClick="ButtonSubmit_Click" Height="38px" Width="143px" />
    <br />
<br />
    <asp:GridView ID="GdCourse" runat="server" DataKeyNames="Cid" AutoGenerateEditButton="True" AutoGenerateDeleteButton="True" OnRowCancelingEdit="GdCourse_RowCancelingEdit" OnRowDeleting="GdCourse_RowDeleting" OnRowEditing="GdCourse_RowEditing" OnRowUpdating="GdCourse_RowUpdating" CellPadding="4" Width="653px" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#333333" HorizontalAlign="Center" BackColor="#FFCC66" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
</asp:GridView>
    <asp:GridView ID="GdStudent" runat="server" DataKeyNames="Stid" AutoGenerateEditButton="True" AutoGenerateDeleteButton="True" OnRowCancelingEdit="GdStudent_RowCancelingEdit" OnRowDeleting="GdStudent_RowDeleting" OnRowEditing="GdStudent_RowEditing" OnRowUpdating="GdStudent_RowUpdating" CellPadding="4" Width="654px" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#333333" HorizontalAlign="Center" BackColor="#FFCC66" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
</asp:GridView>
    <asp:GridView ID="GdTutor" runat="server" DataKeyNames="Tid" AutoGenerateEditButton="True" AutoGenerateDeleteButton="True" OnRowCancelingEdit="GdTutor_RowCancelingEdit" OnRowDeleting="GdTutor_RowDeleting" OnRowEditing="GdTutor_RowEditing" OnRowUpdating="GdTutor_RowUpdating" CellPadding="4" Width="655px" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#333333" HorizontalAlign="Center" BackColor="#FFCC66" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
</asp:GridView>
</asp:Content>
