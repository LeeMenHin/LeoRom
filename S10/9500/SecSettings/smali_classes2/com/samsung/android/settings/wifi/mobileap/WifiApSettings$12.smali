.class Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$12;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->onCreateDialog(I)Landroid/app/Dialog;
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

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$12;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$12;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$2800(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$12;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$1302(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$12;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$1402(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$12;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$2900(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;I)V

    return-void
.end method
