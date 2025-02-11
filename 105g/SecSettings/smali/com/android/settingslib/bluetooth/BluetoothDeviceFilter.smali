.class public final Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;
.super Ljava/lang/Object;
.source "BluetoothDeviceFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$HidFilter;,
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AudioAVFilter;,
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AudioAGFilter;,
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$NapFilter;,
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$PanuFilter;,
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$TransferFilter;,
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AudioFilter;,
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;,
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$SyncedDeviceFilter;,
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$RestoredDeviceFilter;,
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$UnbondedDeviceFilter;,
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$BondedDeviceFilter;,
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;,
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;
    }
.end annotation


# static fields
.field public static final ALL_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

.field public static final BONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

.field private static final FILTERS:[Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

.field public static final RESTORED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

.field public static final SYNCED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

.field public static final UNBONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;-><init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$1;)V

    sput-object v0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    new-instance v0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$BondedDeviceFilter;

    invoke-direct {v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$BondedDeviceFilter;-><init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$1;)V

    sput-object v0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    new-instance v0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$UnbondedDeviceFilter;

    invoke-direct {v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$UnbondedDeviceFilter;-><init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$1;)V

    sput-object v0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    new-instance v0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$RestoredDeviceFilter;

    invoke-direct {v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$RestoredDeviceFilter;-><init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$1;)V

    sput-object v0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->RESTORED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    new-instance v0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$SyncedDeviceFilter;

    invoke-direct {v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$SyncedDeviceFilter;-><init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$1;)V

    sput-object v0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->SYNCED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    sget-object v2, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-instance v2, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AudioFilter;

    invoke-direct {v2, v1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AudioFilter;-><init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$1;)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-instance v2, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$TransferFilter;

    invoke-direct {v2, v1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$TransferFilter;-><init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$1;)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-instance v2, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$PanuFilter;

    invoke-direct {v2, v1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$PanuFilter;-><init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$1;)V

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-instance v2, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$NapFilter;

    invoke-direct {v2, v1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$NapFilter;-><init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$1;)V

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-instance v2, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AudioAGFilter;

    invoke-direct {v2, v1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AudioAGFilter;-><init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$1;)V

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-instance v2, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AudioAVFilter;

    invoke-direct {v2, v1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AudioAVFilter;-><init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$1;)V

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-instance v2, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$HidFilter;

    invoke-direct {v2, v1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$HidFilter;-><init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$1;)V

    const/4 v1, 0x7

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->FILTERS:[Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    return-void
.end method

.method public static getFilter(I)Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;
    .locals 4

    move v0, p0

    const/16 v1, 0x69

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/16 v1, 0x6a

    if-ne v0, v1, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    if-ltz v0, :cond_2

    sget-object v1, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->FILTERS:[Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    sget-object v1, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->FILTERS:[Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    aget-object v1, v1, v0

    return-object v1

    :cond_2
    const-string v1, "BluetoothDeviceFilter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid filter type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for device picker"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    return-object v1
.end method
