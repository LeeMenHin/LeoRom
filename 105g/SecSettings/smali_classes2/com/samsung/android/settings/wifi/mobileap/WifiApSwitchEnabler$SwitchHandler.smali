.class Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;
.super Landroid/os/Handler;
.source "WifiApSwitchEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwitchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const v2, 0x7f121e52

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$900(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$1800(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$900(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$1800(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    nop

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
