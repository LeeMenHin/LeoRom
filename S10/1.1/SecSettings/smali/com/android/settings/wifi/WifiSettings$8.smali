.class Lcom/android/settings/wifi/WifiSettings$8;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$8;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$8;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->submit(Lcom/android/settings/wifi/WifiConfigController;)V

    return-void
.end method

.method public onDisable(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$8;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->access$800(Lcom/android/settings/wifi/WifiSettings;)V

    return-void
.end method

.method public onEdit(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$8;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->access$700(Lcom/android/settings/wifi/WifiSettings;)V

    return-void
.end method

.method public onForget(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$8;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->forget()V

    return-void
.end method

.method public onSave(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->isNeedToReconnect()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings$8;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiSettings;->access$500(Lcom/android/settings/wifi/WifiSettings;)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings$8;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v2, v1}, Lcom/android/settings/wifi/WifiSettings;->access$600(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings$8;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings$8;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v2, v1}, Lcom/android/settings/wifi/WifiSettings;->access$600(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)V

    :cond_1
    :goto_0
    return-void
.end method
