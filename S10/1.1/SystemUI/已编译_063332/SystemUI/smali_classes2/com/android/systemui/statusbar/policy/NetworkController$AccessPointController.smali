.class public interface abstract Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;
.super Ljava/lang/Object;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AccessPointController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;,
        Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$WifiApBleStateChangeCallback;
    }
.end annotation


# virtual methods
.method public abstract addAccessPointCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;)V
.end method

.method public abstract addWifiApBleStateChangeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$WifiApBleStateChangeCallback;)V
.end method

.method public abstract canConfigWifi()Z
.end method

.method public abstract connect(Lcom/samsung/android/settingslib/wifi/AccessPoint;)Z
.end method

.method public abstract getIcon(Lcom/samsung/android/settingslib/wifi/AccessPoint;)I
.end method

.method public abstract getSmartTetheringIcon(Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;)I
.end method

.method public abstract getWifiApBleScanList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWifiApBleStatus(Ljava/lang/String;)I
.end method

.method public abstract removeAccessPointCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;)V
.end method

.method public abstract removeWifiApBleStateChangeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$WifiApBleStateChangeCallback;)V
.end method

.method public abstract scanForAccessPoints()V
.end method

.method public abstract startSettings(Lcom/samsung/android/settingslib/wifi/AccessPoint;)V
.end method

.method public abstract triggerWifiApBleConnection(Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;)Z
.end method
