.class public Lcom/android/settingslib/bluetooth/A2dpProfile;
.super Ljava/lang/Object;
.source "A2dpProfile.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;
    }
.end annotation


# static fields
.field static final SINK_UUIDS:[Landroid/os/ParcelUuid;

.field private static V:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private mIsProfileReady:Z

.field private final mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mService:Landroid/bluetooth/BluetoothA2dp;

.field private mServiceWrapper:Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settingslib/bluetooth/A2dpProfile;->V:Z

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/os/ParcelUuid;

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    aput-object v2, v1, v0

    sput-object v1, Lcom/android/settingslib/bluetooth/A2dpProfile;->SINK_UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iput-object p3, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    iput-object p4, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    new-instance v1, Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;-><init>(Lcom/android/settingslib/bluetooth/A2dpProfile;Lcom/android/settingslib/bluetooth/A2dpProfile$1;)V

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/settingslib/bluetooth/A2dpProfile;->V:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settingslib/bluetooth/A2dpProfile;)Landroid/bluetooth/BluetoothA2dp;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settingslib/bluetooth/A2dpProfile;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/settingslib/bluetooth/A2dpProfile;Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;)Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mServiceWrapper:Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settingslib/bluetooth/A2dpProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settingslib/bluetooth/A2dpProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settingslib/bluetooth/A2dpProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settingslib/bluetooth/A2dpProfile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mIsProfileReady:Z

    return p1
.end method

.method static synthetic lambda$getHighQualityAudioOptionLabel$0(Landroid/bluetooth/BluetoothCodecConfig;Landroid/bluetooth/BluetoothCodecConfig;)I
    .locals 2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecPriority()I

    move-result v0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecPriority()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/settingslib/bluetooth/Utils;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "A2dpProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connect :: device : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0

    :cond_2
    sget-boolean v0, Lcom/android/settingslib/bluetooth/Utils;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "A2dpProfile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connect :: Can\'t process connect, device("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") is connecting already"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-boolean v0, Lcom/android/settingslib/bluetooth/Utils;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "A2dpProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 3

    sget-boolean v0, Lcom/android/settingslib/bluetooth/A2dpProfile;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "A2dpProfile"

    const-string v1, "finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "A2dpProfile"

    const-string v2, "Error cleaning up A2DP proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public getActiveDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothA2dp;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
    .end array-data
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    const-string v0, "A2dpProfile"

    const-string v1, "getConnectionStatus :: BluetoothProfile.STATE_DISCONNECTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const-string v1, "A2dpProfile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConnectionStatus :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 1

    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_sound_accessory_default:I

    return v0
.end method

.method public getHighQualityAudioOptionLabel(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 11

    sget v0, Lcom/android/settingslib/R$string;->bluetooth_profile_a2dp_high_quality_unknown_codec:I

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->supportsHighQualityAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mServiceWrapper:Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;

    invoke-virtual {v2, p1}, Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mServiceWrapper:Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;

    invoke-virtual {v2, p1}, Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecsSelectableCapabilities()[Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v1

    sget-object v2, Lcom/android/settingslib/bluetooth/-$$Lambda$A2dpProfile$exPXCssgW4cryyr_RqCY5K-rQFI;->INSTANCE:Lcom/android/settingslib/bluetooth/-$$Lambda$A2dpProfile$exPXCssgW4cryyr_RqCY5K-rQFI;

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    array-length v4, v1

    if-ge v4, v3, :cond_2

    goto :goto_0

    :cond_2
    aget-object v4, v1, v2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothCodecConfig;->isMandatoryCodec()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v5

    goto :goto_3

    :cond_5
    :goto_2
    const v5, 0xf4240

    :goto_3
    const/4 v6, -0x1

    packed-switch v5, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    const/4 v6, 0x5

    goto :goto_4

    :pswitch_1
    const/4 v6, 0x4

    goto :goto_4

    :pswitch_2
    const/4 v6, 0x3

    goto :goto_4

    :pswitch_3
    const/4 v6, 0x2

    goto :goto_4

    :pswitch_4
    const/4 v6, 0x1

    nop

    :goto_4
    if-gez v6, :cond_6

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_6
    iget-object v7, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/settingslib/R$string;->bluetooth_profile_a2dp_high_quality:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/settingslib/R$array;->bluetooth_a2dp_codec_titles:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v6

    aput-object v9, v3, v2

    invoke-virtual {v7, v8, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_7
    :goto_5
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLdacEnabled(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothA2dp;->getCodecEnabled(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    sget v0, Lcom/android/settingslib/R$string;->bluetooth_profile_a2dp:I

    return v0
.end method

.method public getOrdinal()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    sget v0, Lcom/android/settingslib/R$string;->bluetooth_a2dp_profile_summary_use_for:I

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v1

    return v1

    :cond_1
    sget v1, Lcom/android/settingslib/R$string;->bluetooth_a2dp_profile_summary_connected:I

    return v1

    :cond_2
    sget v1, Lcom/android/settingslib/R$string;->bluetooth_a2dp_profile_summary_use_for:I

    return v1
.end method

.method isA2dpPlaying()Z
    .locals 4

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothA2dp;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    return v1
.end method

.method public isAbsoluteVolumeControlDeviceActive()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->isAvrcpAbsoluteVolumeDeviceActive()Z

    move-result v0

    return v0
.end method

.method public isAbsoluteVolumeControlEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->semIsAbsoluteVolumeControl()Z

    move-result v0

    return v0
.end method

.method public isAutoConnectable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isDualPlayModeEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->semIsDualPlayMode()Z

    move-result v0

    return v0
.end method

.method public isHighQualityAudioEnabled(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mServiceWrapper:Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;->getOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->supportsHighQualityAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mServiceWrapper:Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;

    invoke-virtual {v4, p1}, Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mServiceWrapper:Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;

    invoke-virtual {v4, p1}, Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v3

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothCodecConfig;->isMandatoryCodec()Z

    move-result v1

    xor-int/2addr v1, v2

    return v1

    :cond_4
    return v1
.end method

.method public isNeedConnectionBlock(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "9C:8D:7C"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CADILLAC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mContext:Landroid/content/Context;

    const-string v2, "com.google.android.projection.gearhead"

    invoke-static {v1, v2}, Lcom/android/settingslib/bluetooth/Utils;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "A2dpProfile"

    const-string v2, "isNeedConnectionBlock :: device is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const-string v1, "A2dpProfile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNeedConnectionBlock :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public isProfileReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mIsProfileReady:Z

    return v0
.end method

.method public isSupportLdac(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    const/4 v2, 0x4

    invoke-virtual {v1, p1, v2}, Landroid/bluetooth/BluetoothA2dp;->getSupportCodec(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    :cond_0
    sget-boolean v1, Lcom/android/settingslib/bluetooth/A2dpProfile;->V:Z

    if-eqz v1, :cond_1

    const-string v1, "A2dpProfile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportLdac "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setAbsoluteVolumeControlMode(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->setAbsoluteVolumeControl(Z)Z

    move-result v0

    return v0
.end method

.method public setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method setBluetoothA2dpWrapper(Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mServiceWrapper:Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;

    return-void
.end method

.method public setDualPlayMode(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->setDualPlayMode(Z)Z

    move-result v0

    return v0
.end method

.method public setEnableLdacMode(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 3

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/settingslib/bluetooth/A2dpProfile;->V:Z

    if-eqz v1, :cond_1

    const-string v1, "A2dpProfile"

    const-string v2, "setEnableLdacMode mService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    const/4 v2, 0x4

    invoke-virtual {v1, p1, v0, v2}, Landroid/bluetooth/BluetoothA2dp;->setCodecEnabled(Landroid/bluetooth/BluetoothDevice;II)V

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    sget-boolean v1, Lcom/android/settingslib/bluetooth/A2dpProfile;->V:Z

    if-eqz v1, :cond_3

    const-string v1, "A2dpProfile"

    const-string v2, "setEnableLdacMode not connected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1, p1, p2}, Landroid/bluetooth/BluetoothA2dp;->setEnableLdacMode(Landroid/bluetooth/BluetoothDevice;Z)V

    return-void
.end method

.method public setHighQualityAudioEnabled(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 3

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mServiceWrapper:Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;

    invoke-virtual {v1, p1, v0}, Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;->setOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;I)V

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothA2dp;->enableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothA2dp;->disableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)V

    :goto_1
    return-void
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public supportsHighQualityAudio(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mServiceWrapper:Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;->supportsOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "A2DP"

    return-object v0
.end method
