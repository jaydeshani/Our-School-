﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMst.Master" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="Our_School.Admin.Student" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div style ="background-image : url('../Image/bg1.jpg'); width:100%; height : 100vh; background-repeat : no-repeat; background-size:cover; background-attachment : fixed; ">
        <div class ="container p-md-4 p-sm-4"> 
            <div>
                <asp:Label ID="lblMsg" runat="server"></asp:Label>

            </div>
            <h3 class ="text-center">Add Student</h3>

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
                   <label for ="txtRoll">Roll No</label>
                    <asp:TextBox ID="txtRoll" runat="server" CssClass="form-control" placeholder ="Enter Roll No" required> 
                    </asp:TextBox>
                   
                    
                </div>
                <div class ="col-md-6 ">
                   <label for ="ddlClass">Class</label>
                    <asp:DropDownList ID="ddlClass" runat="server"  CssClass="form-control"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Class is required." 
                        ControlToValidate="ddlClass" Display="Dynamic" ForeColor="Red" InitialValue="Select Class" SetFocusOnError="True">
                    </asp:RequiredFieldValidator>
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
                     <asp:Button ID="btnsave" runat="server" CssClass="btn btn-primary btn-block" BackColor="#808080" Text="Add Student" OnClick="btnsave_Click" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px"/>
                 </div>
            </div>

            <div class = "row mb-3 mr-lg-5 ml-lg-5">
                <div class ="col-md-12 ">
                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-bordered" EmptyDataText="No Record to display!" 
                        AutoGenerateColumns="False" AllowPaging ="True" PageSize ="4" DataKeyNames ="StudentId"
                        OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" 
                        OnRowUpdating="GridView1_RowUpdating" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDataBound="GridView1_RowDataBound">
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

                              <asp:TemplateField HeaderText="Roll No">
                                  <EditItemTemplate>
                                    <asp:TextBox ID="txtRollNo" runat="server" Text='<%# Eval("RollNo") %>' CssClass="form-control"
                                        Width="100px" ></asp:TextBox>
                                </EditItemTemplate>
                                 <ItemTemplate>
                                    <asp:Label ID="lblRollNo" runat="server" Text='<%# Eval("RollNo") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>

                              <asp:TemplateField HeaderText="Class">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="ddlClass" runat="server" CssClass="form-control" Width="120px"></asp:DropDownList>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblClass" runat="server" Text='<%# Eval("ClassName") %>'></asp:Label>
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

                            <asp:CommandField CausesValidation="false" HeaderText="Operation" ShowEditButton="True" >
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
