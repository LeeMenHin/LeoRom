.class Lcom/android/settings/wifi/details/WifiIpSettingsController$2;
.super Ljava/lang/Object;
.source "WifiIpSettingsController.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/details/WifiIpSettingsController;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/details/WifiIpSettingsController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/details/WifiIpSettingsController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController$2;->this$0:Lcom/android/settings/wifi/details/WifiIpSettingsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController$2;->this$0:Lcom/android/settings/wifi/details/WifiIpSettingsController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->access$100(Lcom/android/settings/wifi/details/WifiIpSettingsController;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121e20

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onSuccess()V
    .locals 0

    return-void
.end method
