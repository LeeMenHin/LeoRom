.class Lcom/android/settings/wifi/details/WifiConnectPrefController$9;
.super Ljava/lang/Object;
.source "WifiConnectPrefController.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/details/WifiConnectPrefController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/details/WifiConnectPrefController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$9;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 2

    const-string v0, "WifiConnectPrefController"

    const-string v1, "mSaveListener - onFailure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess()V
    .locals 0

    return-void
.end method
