.class Landroid/net/dhcp/DhcpClient$DhcpRenewingState;
.super Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DhcpRenewingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method public constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .locals 1

    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    const-string v0, "Renewed"

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->mLeaseMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected packetDestination()Ljava/net/Inet4Address;
    .locals 1

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$3500(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    move-result-object v0

    iget-object v0, v0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$3500(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    move-result-object v0

    iget-object v0, v0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/net/dhcp/DhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    :goto_0
    return-object v0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    invoke-super {p0, p1}, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->processMessage(Landroid/os/Message;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const v2, 0x30069

    if-eq v0, v2, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->access$4200(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    return v1
.end method
