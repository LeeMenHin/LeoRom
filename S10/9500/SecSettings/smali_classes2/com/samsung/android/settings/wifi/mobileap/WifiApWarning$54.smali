.class Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$54;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

.field final synthetic val$cr:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$54;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$54;->val$cr:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x4d

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "feature"

    const-string v3, "MHWS"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    :try_start_0
    const-string v3, "WifiApWarning"

    const-string v4, " Wifi Sharing Select Option 1 "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$54;->val$cr:Landroid/content/ContentResolver;

    const-string v4, "wifi_ap_wifi_sharing"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.intent.action.UPDATE_OPTIONS_MENU"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$54;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->access$400(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v4, "extra"

    const-string v5, "ON"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$54;->val$cr:Landroid/content/ContentResolver;

    const-string v4, "wifi_ap_wifi_sharing"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v3, "extra"

    const-string v4, "OFF"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string v3, "WifiApWarning"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "provider value after ok button "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$54;->val$cr:Landroid/content/ContentResolver;

    const-string v6, "wifi_ap_wifi_sharing"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    nop

    const-string v4, "WifiApWarning"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in getting provider value"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$54;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->access$900(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const-string v3, "WifiApWarning"

    const-string v4, "DIALOG_WIFI_SHARING_FIRST_TIME positive button clicked"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$54;->val$cr:Landroid/content/ContentResolver;

    const-string v4, "wifi_ap_first_time_wifi_sharing_dialog"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$54;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->access$1600(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    goto :goto_3

    :catch_1
    move-exception v2

    const-string v3, "WifiApWarning"

    const-string v4, "Wifi Sharing SettingNotFoundException"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method
