.class Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;
.super Ljava/lang/Object;
.source "BluetoothControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActuallyCachedState"
.end annotation


# instance fields
.field private mBondState:I

.field private final mDevice:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxConnectionState:I

.field private final mUiHandler:Landroid/os/Handler;


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;->mBondState:I

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;->mMaxConnectionState:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;->mUiHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
