.class public final Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;
.super Ljava/lang/Object;
.source "BluetoothRestoredDevice.java"


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mAppearance:I

.field private mBondState:I

.field private mCod:I

.field private final mContext:Landroid/content/Context;

.field private mLinkType:I

.field private mManufacturerData:[B

.field private mName:Ljava/lang/String;

.field private mTimeStamp:J

.field private mUuids:[Landroid/os/ParcelUuid;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mLinkType:I

    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mAddress:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getAppearance()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mAppearance:I

    return v0
.end method

.method public getCod()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mCod:I

    return v0
.end method

.method public getLinkType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mLinkType:I

    return v0
.end method

.method public getManufacturerData()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mManufacturerData:[B

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mTimeStamp:J

    return-wide v0
.end method

.method public getUuids()[Landroid/os/ParcelUuid;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mUuids:[Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public setAppearance(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mAppearance:I

    return-void
.end method

.method public setBondState(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mBondState:I

    return-void
.end method

.method public setCod(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mCod:I

    return-void
.end method

.method public setLinkType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mLinkType:I

    return-void
.end method

.method public setManufacturerData([B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mManufacturerData:[B

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mName:Ljava/lang/String;

    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mTimeStamp:J

    return-void
.end method

.method public setUuids(Ljava/lang/String;)V
    .locals 2

    const-string v0, ","

    invoke-static {p1, v0}, Lcom/android/settingslib/bluetooth/Utils;->getStringToken(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/Utils;->makeParcelUuids([Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mUuids:[Landroid/os/ParcelUuid;

    :cond_0
    return-void
.end method
