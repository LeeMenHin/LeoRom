.class Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$32;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->showNoHotspotModeWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$32;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$32;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$1000(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$32;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$6000(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$32;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$6102(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Z)Z

    return-void
.end method
