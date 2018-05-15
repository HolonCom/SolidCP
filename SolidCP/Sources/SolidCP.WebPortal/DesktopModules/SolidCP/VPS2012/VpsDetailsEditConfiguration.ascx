﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="VpsDetailsEditConfiguration.ascx.cs" Inherits="SolidCP.Portal.VPS2012.VpsDetailsEditConfiguration" %>
<%@ Register Src="../UserControls/SimpleMessageBox.ascx" TagName="SimpleMessageBox" TagPrefix="scp" %>
<%@ Register Src="UserControls/ServerTabs.ascx" TagName="ServerTabs" TagPrefix="scp" %>
<%@ Register Src="UserControls/Menu.ascx" TagName="Menu" TagPrefix="scp" %>
<%@ Register Src="UserControls/Breadcrumb.ascx" TagName="Breadcrumb" TagPrefix="scp" %>
<%@ Register Src="UserControls/FormTitle.ascx" TagName="FormTitle" TagPrefix="scp" %>
<%@ Register Src="../UserControls/CollapsiblePanel.ascx" TagName="CollapsiblePanel" TagPrefix="scp" %>
<%@ Register Src="../UserControls/EnableAsyncTasksSupport.ascx" TagName="EnableAsyncTasksSupport" TagPrefix="scp" %>
<%@ Register TagPrefix="scp" TagName="DynamicMemoryControl" Src="UserControls/DynamicMemoryControl.ascx" %>

<scp:EnableAsyncTasksSupport id="asyncTasks" runat="server"/>

	    <div class="Content">
		    <div class="Center">
			    <div class="panel-body form-horizontal">
			        <scp:ServerTabs id="tabs" runat="server" SelectedTab="vps_config" />	
                    <scp:SimpleMessageBox id="messageBox" runat="server" />
                    
		            <p class="SubTitle">
		                <asp:Localize ID="locSubTitle" runat="server" meta:resourcekey="locSubTitle" Text="Edit Configuration" />
		            </p>

                    <asp:ValidationSummary ID="validatorsSummary" runat="server" 
                        ValidationGroup="Vps" ShowMessageBox="True" ShowSummary="False" />
                    
                    <scp:CollapsiblePanel id="secResources" runat="server"
                        TargetControlID="ResourcesPanel" meta:resourcekey="secResources" Text="Resources">
                    </scp:CollapsiblePanel>
                    <asp:Panel ID="ResourcesPanel" runat="server" Height="0" style="overflow:hidden;padding:10px;width:400px;">
                        <table cellpadding="3">
                            <tr>
                                <td style="width:60px;"><asp:Label ID="lblCpu" runat="server" AssociatedControlID="ddlCpu"
                                        meta:resourcekey="lblCpu" Text="CPU:" CssClass="Medium" /></td>
                                <td>
                                    <asp:DropDownList ID="ddlCpu" runat="server" CssClass="form-control">
                                    </asp:DropDownList>
                                </td>
                                <td><asp:Localize ID="locCores" runat="server" meta:resourcekey="locCores" Text="cores"/></td>
                            </tr>
                        </table>
                        <table cellpadding="3">
                            <tr>
                                <td style="width:60px;"><asp:Label ID="lblRam" runat="server" AssociatedControlID="txtRam"
                                        meta:resourcekey="lblRam" Text="RAM:" CssClass="Medium" /></td>
                                <td>
                                    <asp:TextBox ID="txtRam" runat="server" CssClass="form-control" Width="70"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequireRamValidator" runat="server" Text="*" Display="Dynamic"
                                        ControlToValidate="txtRam" meta:resourcekey="RequireRamValidator" SetFocusOnError="true"
                                        ValidationGroup="Vps">*</asp:RequiredFieldValidator>
                                </td>
                                <td><asp:Localize ID="locMB" runat="server" meta:resourcekey="locMB" Text="MB"/></td>
                            </tr>
                        </table>
                        <table cellpadding="3">
                            <tr>
                                <td style="width:60px;"><asp:Label ID="lblHdd" runat="server" AssociatedControlID="txtHdd"
                                        meta:resourcekey="lblHdd" Text="HDD:" CssClass="Medium" /></td>
                                <td>
                                    <asp:TextBox ID="txtHdd" runat="server" CssClass="form-control" Width="70"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequireHddValidator" runat="server" Text="*" Display="Dynamic"
                                        ControlToValidate="txtHdd" meta:resourcekey="RequireHddValidator" SetFocusOnError="true"
                                        ValidationGroup="Vps">*</asp:RequiredFieldValidator>
                                </td>
                                <td><asp:Localize ID="locGB" runat="server" meta:resourcekey="locGB" Text="GB"/></td>
                            </tr>
                        </table>
                    </asp:Panel>

                    <scp:CollapsiblePanel id="secHddQOS" runat="server" IsCollapsed="true"
                        TargetControlID="QOSManag" meta:resourcekey="secHddQOS" Text="Virtual Hard Disk Drive Quality of Service management">
                    </scp:CollapsiblePanel>
                    <asp:Panel ID="QOSManag" runat="server" Height="0" style="overflow:hidden;padding:10px;width:400px;">
                        <p>
		                <asp:Localize ID="locHddIOPSTitle" runat="server" meta:resourcekey="locHddIOPSTitle" 
                            Text="Specify Quality of Service management for this virtual hard disk. Minimum and maximum IOPS are measured in 8KB increments. Default value is 0." />
		                </p>
                        <table cellpadding="3">
                            <tr>
                                <td style="width:60px;"><asp:Label ID="lblHddMinIOPS" runat="server" AssociatedControlID="txtHddMinIOPS"
                                        meta:resourcekey="lblHddMinIOPS" Text="Minimum:" CssClass="Medium" /></td>
                                <td>
                                    <asp:TextBox ID="txtHddMinIOPS" runat="server" CssClass="form-control" Width="70"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequireHddMinIOPSValidator" runat="server" Text="*" Display="Dynamic"
                                        ControlToValidate="txtHddMinIOPS" meta:resourcekey="RequireHddMinIOPSValidator" SetFocusOnError="true"
                                        ValidationGroup="Vps">*</asp:RequiredFieldValidator>
                                </td>      
                                <td><asp:Localize ID="locHddMinIOPS" runat="server" meta:resourcekey="locHddMinIOPS" Text="IOPS"/></td>                          
                            </tr>
                        </table>
                        <table cellpadding="3">
                            <tr>
                                <td style="width:60px;"><asp:Label ID="lblHddMaxIOPS" runat="server" AssociatedControlID="txtHddMaxIOPS"
                                        meta:resourcekey="lblHddMaxIOPS" Text="Maximum:" CssClass="Medium" /></td>
                                <td>
                                    <asp:TextBox ID="txtHddMaxIOPS" runat="server" CssClass="form-control" Width="70"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequireHddMaxIOPSValidator" runat="server" Text="*" Display="Dynamic"
                                        ControlToValidate="txtHddMaxIOPS" meta:resourcekey="RequireHddMaxIOPSValidator" SetFocusOnError="true"
                                        ValidationGroup="Vps">*</asp:RequiredFieldValidator>
                                </td>   
                                <td><asp:Localize ID="locHddMaxIOPS" runat="server" meta:resourcekey="locHddMaxIOPS" Text="IOPS"/></td>                             
                            </tr>
                        </table>
                    </asp:Panel>

                    
                    <scp:DynamicMemoryControl runat="server" ID="DynamicMemorySetting" Mode="Edit"/>
                    
                    <scp:CollapsiblePanel id="secSnapshots" runat="server"
                        TargetControlID="SnapshotsPanel" meta:resourcekey="secSnapshots" Text="Snapshots">
                    </scp:CollapsiblePanel>
                    <asp:Panel ID="SnapshotsPanel" runat="server" Height="0" style="overflow:hidden;padding:5px;">
                        <table>
                            <tr>
                                <td class="FormLabel150"><asp:Localize ID="locSnapshots" runat="server"
                                    meta:resourcekey="locSnapshots" Text="Number of snapshots:"></asp:Localize></td>
                                <td>
                                    <asp:TextBox ID="txtSnapshots" runat="server" CssClass="form-control" Width="50"></asp:TextBox>
                                    
                                    <asp:RequiredFieldValidator ID="SnapshotsValidator" runat="server" Text="*" Display="Dynamic"
                                        ControlToValidate="txtSnapshots" meta:resourcekey="SnapshotsValidator" SetFocusOnError="true"
                                        ValidationGroup="Vps">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                    
                    <scp:CollapsiblePanel id="secDvd" runat="server"
                        TargetControlID="DvdPanel" meta:resourcekey="secDvd" Text="DVD">
                    </scp:CollapsiblePanel>
                    <asp:Panel ID="DvdPanel" runat="server" Height="0" style="overflow:hidden;padding:5px;">
                        <table>
                            <tr>
                                <td>
                                    <asp:CheckBox ID="chkDvdInstalled" runat="server" Checked="true"
                                        Text="DVD drive installed" meta:resourcekey="chkDvdInstalled" />
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                    
                    <scp:CollapsiblePanel id="secBios" runat="server"
                        TargetControlID="BiosPanel" meta:resourcekey="secBios" Text="BIOS">
                    </scp:CollapsiblePanel>
                    <asp:Panel ID="BiosPanel" runat="server" Height="0" style="overflow:hidden;padding:5px;">
                        <table>
                            <tr>
                                <td style="width:200px;">
                                    <asp:CheckBox ID="chkBootFromCd" runat="server" Text="Boot from CD" meta:resourcekey="chkBootFromCd" />
                                </td>
                                <td>
                                    <asp:CheckBox ID="chkNumLock" runat="server" Text="Num Lock enabled" meta:resourcekey="chkNumLock" />
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                    
                    <scp:CollapsiblePanel id="secActions" runat="server"
                        TargetControlID="ActionsPanel" meta:resourcekey="secActions" Text="Allowed actions">
                    </scp:CollapsiblePanel>
                    <asp:Panel ID="ActionsPanel" runat="server" Height="0" style="overflow:hidden;padding:5px;">
                        <table style="width:400px;">
                            <tr>
                                <td style="width:200px;">
                                    <asp:CheckBox ID="chkStartShutdown" runat="server" Text="Start, Turn off and Shutdown" meta:resourcekey="chkStartShutdown" />
                                </td>
                                <td>
                                    <asp:CheckBox ID="chkReset" runat="server" Text="Reset" meta:resourcekey="chkReset" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:CheckBox ID="chkPauseResume" runat="server" Text="Pause, Resume" meta:resourcekey="chkPauseResume" />
                                </td>
                                <td>
                                    <asp:CheckBox ID="chkReinstall" runat="server" Text="Re-install" meta:resourcekey="chkReinstall" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:CheckBox ID="chkReboot" runat="server" Text="Reboot" meta:resourcekey="chkReboot" />
                                </td>
                                <td>
                                    
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                    
                    <scp:CollapsiblePanel id="secNetwork" runat="server"
                        TargetControlID="NetworkPanel" meta:resourcekey="secNetwork" Text="Network">
                    </scp:CollapsiblePanel>
                    <asp:Panel ID="NetworkPanel" runat="server" Height="0" style="overflow:hidden;padding:5px;">
                        <table cellspacing="5">
                            <tr>
                                <td>
                                    <asp:CheckBox ID="chkExternalNetworkEnabled" runat="server"
                                             meta:resourcekey="chkExternalNetworkEnabled" Text="External network enabled" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:CheckBox ID="chkPrivateNetworkEnabled" runat="server"
                                                    meta:resourcekey="chkPrivateNetworkEnabled" Text="Private network enabled" />
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                    
                    <p>
                        <CPCC:StyleButton id="btnCancel" CssClass="btn btn-warning" runat="server" CausesValidation="False" OnClick="btnCancel_Click"> <i class="fa fa-times">&nbsp;</i>&nbsp;<asp:Localize runat="server" meta:resourcekey="btnCancel"/> </CPCC:StyleButton>&nbsp;
                        <CPCC:StyleButton id="btnUpdate" CssClass="btn btn-success" runat="server" OnClick="btnUpdate_Click" ValidationGroup="Vps" OnClientClick="if(!confirm('Before applying new configuration VPS will be stopped.\n\nAfter the configuration is changed it will be started again automatically.\n\nDo you want to proceed?')) return false; ShowProgressDialog('Updating configuration...');"> <i class="fa fa-refresh">&nbsp;</i>&nbsp;<asp:Localize runat="server" meta:resourcekey="btnUpdateText"/> </CPCC:StyleButton>
                    </p>
			    </div>
		    </div>
	    </div>