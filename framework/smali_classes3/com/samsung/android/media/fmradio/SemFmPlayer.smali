.class public Lcom/samsung/android/media/fmradio/SemFmPlayer;
.super Ljava/lang/Object;
.source "SemFmPlayer.java"


# static fields
.field public static final AUDIO_MODE_MONO:I = 0x8

.field public static final AUDIO_MODE_STEREO:I = 0x9

.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "FmPlayer"

.field public static final OFF_AIRPLANE_MODE_SET:I = 0x3

.field public static final OFF_BATTERY_LOW:I = 0x7

.field public static final OFF_CALL_ACTIVE:I = 0x1

.field public static final OFF_DEVICE_SHUTDOWN:I = 0x6

.field public static final OFF_EAR_PHONE_DISCONNECT:I = 0x2

.field public static final OFF_NORMAL:I = 0x0

.field public static final OFF_PAUSE_COMMAND:I = 0x5

.field public static final OFF_STOP_COMMAND:I = 0x4

.field static mContext:Landroid/content/Context;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mContext:Landroid/content/Context;

    const-string v0, "FMPlayer"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mAudioManager:Landroid/media/AudioManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Player created :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->log(Ljava/lang/String;)V

    return-void
.end method

.method private checkBusy()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->isBusy()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-direct {p0, v1}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/samsung/android/media/fmradio/SemFmPlayerScanningException;

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "Player is busy in scanning. Use cancelScan to stop scanning"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v3, "Player is scanning channel"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/media/fmradio/SemFmPlayerScanningException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private checkOnStatus()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->isRadioEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/samsung/android/media/fmradio/SemFmPlayerNotEnabledException;

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "Player is not ON. use method on() to switch on FM player"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v3, "Player is not ON.Call on() method to start player"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/media/fmradio/SemFmPlayerNotEnabledException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private remoteError(Landroid/os/RemoteException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    new-instance v0, Lcom/samsung/android/media/fmradio/SemFmPlayerNotEnabledException;

    invoke-virtual {p1}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, "Radio service is not running restart the phone."

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/media/fmradio/SemFmPlayerNotEnabledException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public addListener(Lcom/samsung/android/media/fmradio/SemFmEventListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    iget-object v1, p1, Lcom/samsung/android/media/fmradio/SemFmEventListener;->callback:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setListener(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public cancelAFSwitching()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->cancelAFSwitching()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public cancelScan()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->cancelScan()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    return v0
.end method

.method public cancelSeek()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->cancelSeek()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public disableRadio()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->off()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-direct {p0, v1}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    :goto_0
    return v0
.end method

.method public enableRadio()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "factory"

    const-string/jumbo v2, "ro.factory.factory_binary"

    const-string v3, "Unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->isAirPlaneMode()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/samsung/android/media/fmradio/SemAirPlaneModeEnabledException;

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "AirPlane mode is on."

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v4, "AirPlane mode is on."

    invoke-direct {v2, v4, v3}, Lcom/samsung/android/media/fmradio/SemAirPlaneModeEnabledException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->on_in_testmode()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-direct {p0, v2}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    :goto_1
    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->isTvOutPlugged()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->isHeadsetPlugged()Z

    move-result v2

    if-eqz v2, :cond_4

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->on()Z

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v2

    goto :goto_2

    :catch_1
    move-exception v2

    invoke-direct {p0, v2}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->isBatteryLow()Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    :cond_3
    new-instance v2, Lcom/samsung/android/media/fmradio/SemLowBatteryException;

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "Batterys is low."

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v4, "Battery is low."

    invoke-direct {v2, v4, v3}, Lcom/samsung/android/media/fmradio/SemLowBatteryException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_4
    new-instance v2, Lcom/samsung/android/media/fmradio/SemHeadsetNotConnectedException;

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "Headset is not presents."

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v4, "Headset is not presents."

    invoke-direct {v2, v4, v3}, Lcom/samsung/android/media/fmradio/SemHeadsetNotConnectedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_5
    new-instance v2, Lcom/samsung/android/media/fmradio/SemTvOutConnectedException;

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "TV out is on."

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v4, "TV out is on"

    invoke-direct {v2, v4, v3}, Lcom/samsung/android/media/fmradio/SemTvOutConnectedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mAudioManager:Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    return-void
.end method

.method public getCurrentChannel()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkBusy()V

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->getCurrentChannel()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getLastScanResult()[J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->isScanning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->getLastScanResult()[J

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    return-object v1
.end method

.method public getMaxVolume()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->getMaxVolume()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getPlayedFreq()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->getPlayedFreq()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getTunningParameter(Ljava/lang/String;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    move v0, p2

    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->isRadioEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->getIntegerTunningParameter(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-direct {p0, v1}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    :cond_0
    :goto_0
    return v0
.end method

.method public getTunningParameter(Ljava/lang/String;J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    move-wide v0, p2

    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->isRadioEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->getLongTunningParameter(Ljava/lang/String;J)J

    move-result-wide v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-direct {p0, v2}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    :cond_0
    :goto_0
    return-wide v0
.end method

.method public getTunningParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    move-object v0, p2

    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->isRadioEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->getStringTunningParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-direct {p0, v1}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public getVolume()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->getVolume()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public isAirPlaneMode()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->isAirPlaneMode()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isAlternateFrequencyEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->isAFEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isBatteryLow()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->isBatteryLow()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isHeadsetPlugged()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->isHeadsetPlugged()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isRadioDataSystemEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->isRDSEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isRadioDomainNameSystemEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->isDNSEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isRadioEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->isOn()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isScanning()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->isScanning()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isSeeking()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->isSeeking()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isSoftmuteEnabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->getSoftMuteMode()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-direct {p0, v1}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    :goto_0
    return v0
.end method

.method public isTvOutPlugged()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->isTvOutPlugged()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "FmPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeListener(Lcom/samsung/android/media/fmradio/SemFmEventListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    iget-object v1, p1, Lcom/samsung/android/media/fmradio/SemFmEventListener;->callback:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->removeListener(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public searchAll()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkBusy()V

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->searchAll()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public searchDown()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkBusy()V

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->searchDown()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public searchUp()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkBusy()V

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->searchUp()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public seekDown()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkBusy()V

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->seekDown()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public seekUp()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkBusy()V

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->seekUp()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public setAlternateFrequencyEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->enableAF()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->disableAF()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_2

    :goto_1
    nop

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    :goto_2
    return-void
.end method

.method public setAudioMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setStereo()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setMono()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    nop

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_2

    :cond_1
    :goto_1
    nop

    :goto_2
    return-void
.end method

.method public setBand(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0, p1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setBand(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public setChannelSpacing(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0, p1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setChannelSpacing(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public setFMIntenna(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0, p1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setFMIntenna(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public setInternetStreamingEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0, p1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setInternetStreamingMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public setMuteEnabled(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0, p1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->mute(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    return v0
.end method

.method public setRadioDataSystemEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->enableRDS()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->disableRDS()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_2

    :goto_1
    nop

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    :goto_2
    return-void
.end method

.method public setRadioDomainNameSystemEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->enableDNS()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->disableDNS()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_2

    :goto_1
    nop

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    :goto_2
    return-void
.end method

.method public setRecordMode(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0, p1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setRecordMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public setSoftmuteEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0, p1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setSoftmute(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public setSpeakerEnabled(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setting speakerOn = :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->log(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0, p1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setSpeakerOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    :goto_0
    const/4 v0, 0x2

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->semSetRadioOutputPath(I)Z

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->semSetRadioOutputPath(I)Z

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->semGetRadioOutputPath()I

    move-result v1

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public setTunningParameter(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setIntegerTunningParameter(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public setTunningParameter(Ljava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setLongTunningParameter(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public setTunningParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setStringTunningParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public setVolume(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setVolume(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public startScan()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkBusy()V

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->scan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public tune(J)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->tune(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    return v0
.end method
