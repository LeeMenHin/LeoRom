.class public Lcom/android/settings/bluetooth/AlwaysDiscoverable;
.super Landroid/content/BroadcastReceiver;
.source "AlwaysDiscoverable.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field mStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;)V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getScanMode()I

    move-result v1

    const/16 v2, 0x17

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    :cond_1
    return-void
.end method

.method public start()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->mStarted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->mStarted:Z

    iget-object v0, p0, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getScanMode()I

    move-result v0

    const/16 v1, 0x17

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->mStarted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->mStarted:Z

    iget-object v0, p0, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    return-void
.end method
