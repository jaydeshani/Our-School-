﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMst.Master" AutoEventWireup="true" CodeBehind="Teacher.aspx.cs" Inherits="Our_School.Admin.Teacher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div style ="background-image : url('../Image/gradient4.jpg'); width:100%; height : 150vh; background-repeat : no-repeat; background-size:cover; background-attachment : fixed; ">
        <div class ="container p-md-4 p-sm-4"> 
            <div>
                <asp:Label ID="lblMsg" runat="server"></asp:Label>

            </div>
            <h3 class ="text-center">Add Teacher</h3>

            <div class = "row mb-3 mr-lg-5 ml-lg-5 mt-md-5">
                <div class ="col-md-6 ">
                   <label for ="txtName">Name</label>
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder ="Enter Name" required> 
                    </asp:TextBox>
                   
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Name should be in characters" 
                        ForeColor="Red" ValidationExpression ="^[a-zA-Z\s]+$" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtName"></asp:RegularExpressionValidator>
                </div>
                <div class ="col-md-6 ">
                   <label for ="txtDoB">Date Of Birth</label>
                    <asp:TextBox ID="txtDoB" runat="server" CssClass="form-control" TextMode="Date" required> 
                    </asp:TextBox>
                </div>
            </div>


             <div class = "row mb-3 mr-lg-5 ml-lg-5 mt-md-5">
                <div class ="col-md-6 ">
                   <label for ="ddlGender">Gender</label>
                    <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control">
                        <asp:ListItem Value="0">Select Gender</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                 </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Gender Is Required" ForeColor="Red" ControlToValidate="ddlGender" Display="Dynamic" SetFocusOnError="true" InitialValue="Select Gender">
                    </asp:RequiredFieldValidator>
                </div>
                <div class ="col-md-6 ">
                   <label for ="txtMobile">Mobile</label>
                    <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" TextMode="Phone" placeholder="10 Digits Mobile No" required MaxLength="10"></asp:TextBox>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Mobile No." 
                        ForeColor="Red" ValidationExpression ="[0-9]{10}" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtMobile"></asp:RegularExpressionValidator>
                </div>
            </div>

            <div class = "row mb-3 mr-lg-5 ml-lg-5 mt-md-5">
                <div class ="col-md-6 ">
                   <label for ="txtEmail">Email</label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder ="Enter Email" TextMode="Email" required> 
                    </asp:TextBox>
                   
                    
                </div>
                <div class ="col-md-6 ">
                   <label for ="txtPassword">Password</label>
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder ="Enter Password" TextMode="Password" required> 
                    </asp:TextBox>
                </div>
            </div>

            <div class = "row mb-3 mr-lg-5 ml-lg-5 mt-md-5">
                <div class ="col-md-12 ">
                   <label for ="txtAddress">Address</label>
                    <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" placeholder ="Enter Address" TextMode="Multiline" required> 
                    </asp:TextBox>    
                </div>
            </div>
                      <div class = "row mb-3 mr-lg-5 ml-lg-5">
                 <div class ="col-md-3 col-md-offset-2 mb-3">
                     <asp:Button ID="btnsave" runat="server" CssClass="btn btn-primary btn-block" BackColor="#808080" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Text="Add Teacher" OnClick="btnsave_Click" />
                 </div>
            </div>

            <div class = "row mb-3 mr-lg-5 ml-lg-5">
                <div class ="col-md-12 ">
                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-bordered" EmptyDataText="No Record to display!" 
                        AutoGenerateColumns="False" AllowPaging ="True" PageSize ="4" DataKeyNames ="TeacherId"
                        OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" 
                        OnRowUpdating="GridView1_RowUpdating" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDeleting="GridView1_RowDeleting" >
                        <Columns>
                            <asp:BoundField DataField="Sr.No" HeaderText="Sr.No" ReadOnly="True">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtName" runat="server" Text='<%# Eval("Name") %>' CssClass="form-control"
                                        Width="100px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Mobile">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtMobile" runat="server" Text='<%# Eval("Mobile") %>' CssClass="form-control"
                                        Width="100px" ></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblMobile" runat="server" Text='<%# Eval("Mobile") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>

                              <asp:TemplateField HeaderText="Email">
                                 <ItemTemplate>
                                    <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>

                              <asp:TemplateField HeaderText="Password">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtPassword" runat="server" Text='<%# Eval("Password") %>' CssClass="form-control"
                                        Width="100px" ></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblPassword" runat="server" Text='<%# Eval("Password") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>

                              <asp:TemplateField HeaderText="Address">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtAddress" runat="server" Text='<%# Eval("Address") %>' CssClass="form-control"
                                        Width="100px" TextMode="MultiLine" ></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblAddress" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>

                            <asp:CommandField CausesValidation="false" HeaderText="Operation" ShowEditButton="True" ShowDeleteButton ="true">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:CommandField>
                        </Columns>
                        <HeaderStyle BackColor="#6C757D" ForeColor="White"/>
                    </asp:GridView>
                 </div>
                </div>
        </div>
    </div>

</asp:Content>
