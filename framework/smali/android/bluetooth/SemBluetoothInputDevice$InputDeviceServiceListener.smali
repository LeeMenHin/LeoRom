.class Landroid/bluetooth/SemBluetoothInputDevice$InputDeviceServiceListener;
.super Ljava/lang/Object;
.source "SemBluetoothInputDevice.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/SemBluetoothInputDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputDeviceServiceListener"
.end annotation


# instance fields
.field private final mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/SemBluetoothInputDevice$InputDeviceServiceListener;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 4

    iget-object v0, p0, Landroid/bluetooth/SemBluetoothInputDevice$InputDeviceServiceListener;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    new-instance v1, Landroid/bluetooth/SemBluetoothInputDevice;

    move-object v2, p2

    check-cast v2, Landroid/bluetooth/BluetoothHidHost;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/bluetooth/SemBluetoothInputDevice;-><init>(Landroid/bluetooth/BluetoothHidHost;Landroid/bluetooth/SemBluetoothInputDevice$1;)V

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/SemBluetoothInputDevice$InputDeviceServiceListener;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-interface {v0, p1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    return-void
.end method
