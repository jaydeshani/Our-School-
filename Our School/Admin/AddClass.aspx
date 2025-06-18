<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMst.Master" AutoEventWireup="true" CodeBehind="AddClass.aspx.cs" Inherits="Our_School.Admin.AddClass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div style ="background-image : url('../Image/gradient4.jpg'); width:100%; height : 100vh; background-repeat : no-repeat; background-size:cover; background-attachment : fixed; ">
        <div class ="container p-md-4 p-sm-4"> 
            <div>
                <asp:Label ID="lblMsg" runat="server"></asp:Label>

            </div>
            <h3 class ="text-center">New Class</h3>

            <div class = "row mb-3 mr-lg-5 ml-lg-5 mt-md-5">
                <div class ="col-md-6 ">
                   <label for ="txtClass">Class Name</label>
                    <asp:TextBox ID="txtClass" runat="server" CssClass="form-control" placeholder ="Enter Class Name" required> </asp:TextBox>
                </div>
            </div>
            <div class = "row mb-3 mr-lg-5 ml-lg-5">
                 <div class ="col-md-3 col-md-offset-2 mb-3">
                     <asp:Button ID="btnsave" runat="server" CssClass="btn btn-primary btn-block" BackColor="#808080" Text="Add Class" OnClick="btnsave_Click" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px"/>
                 </div>
            </div>

            <div class = "row mb-3 mr-lg-5 ml-lg-5">
                <div class ="col-md-6 ">
                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-bordered" DataKeyNames="ClassID" AutoGenerateColumns="False" 
                        EmptyDataText="No Record To Display!" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" 
                        OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" AllowPaging="True" PageSize="4" >
                        <Columns>
                            <asp:BoundField DataField="Sr.No" HeaderText="Sr.No" ReadOnly="True">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Class ">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtClassEdit" runat="server" Text='<%# Eval("ClassName") %>' CssClass="form-control"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblClassName" runat="server" Text='<%# Eval("ClassName") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center"/>
                            </asp:TemplateField>
                            <asp:CommandField CausesValidation="False" HeaderText="Operation" ShowEditButton="True" >
                            <ItemStyle HorizontalAlign="Center"/>
                                </asp:CommandField>
                        </Columns>
                        <HeaderStyle BackColor="#6C757D" ForeColor="White"/>
                    </asp:GridView>
                 </div>
                </div>
        </div>
    </div>

</asp:Content>

