.class Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$4;
.super Ljava/lang/Object;
.source "BtTetherSettings.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->setBluetoothTethering(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    iput-boolean p2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$4;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3

    const-string v0, "BtTetherSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bluetooth tethering : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$4;->val$enable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$4;->val$enable:Z

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$4;->val$enable:Z

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->access$900(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    const-string v0, "BtTetherSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBluetoothTethering ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$4;->val$enable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ") failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->access$900(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->access$800(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->access$800(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->access$800(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->access$500(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)V

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    const-string v0, "BtTetherSettings"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
