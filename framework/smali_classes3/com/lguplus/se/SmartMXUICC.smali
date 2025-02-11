.class public Lcom/lguplus/se/SmartMXUICC;
.super Ljava/lang/Object;
.source "SmartMXUICC.java"


# static fields
.field static final DBG:Z = true

.field public static final EXTRA_ID:Ljava/lang/String; = "android.nfc.extra.ID"

.field public static final RESPONSE_MAX_SIZE:I = 0x106

.field public static final SMARTCARD_IO_ERROR_ATR_BUFFER:I = -0x6

.field public static final SMARTCARD_IO_ERROR_CARD_NOT_EXIST:I = -0x2

.field public static final SMARTCARD_IO_ERROR_OPEN_CHANNEL:I = -0x1

.field public static final SMARTCARD_IO_ERROR_RESPONSE_BUFFER:I = -0x5

.field public static final SMARTCARD_IO_ERROR_TRANSMIT_BUFFER:I = -0x4

.field public static final SMARTCARD_IO_INVALID_CHANNEL:I = -0x3

.field public static final SMARTCARD_IO_SUCCESS:I = 0x0

.field public static final SMART_MX_ID:Ljava/lang/String; = "android.nfc.smart_mx.ID"

.field public static final UICC_ID:Ljava/lang/String; = "android.nfc.uicc.ID"

.field private static handleId:[I = null

.field static final mLogTag:Ljava/lang/String; = "SmartMXUICC"

.field private static pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

.field static random:Ljava/util/Random;

.field private static sInstance:Lcom/lguplus/se/SmartMXUICC;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/lguplus/se/SmartMXUICC;->sInstance:Lcom/lguplus/se/SmartMXUICC;

    sput-object v0, Lcom/lguplus/se/SmartMXUICC;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lguplus/se/SmartMXUICC;->handleId:[I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/lguplus/se/SmartMXUICC;->random:Ljava/util/Random;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SmartMXUICC"

    const-string v1, "SmartMXUICC"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/internal/telephony/IccPcscProvider;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccPcscProvider;-><init>()V

    sput-object v0, Lcom/lguplus/se/SmartMXUICC;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    sget-object v0, Lcom/lguplus/se/SmartMXUICC;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    if-nez v0, :cond_0

    const-string v0, "SmartMXUICC"

    const-string v1, "SmartMXUICC pcscInstance return null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "SmartMXUICC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmartMXUICC pcscInstance retrun : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/lguplus/se/SmartMXUICC;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static createSmartMXUICC()Lcom/lguplus/se/SmartMXUICC;
    .locals 3

    const-class v0, Lcom/lguplus/se/SmartMXUICC;

    monitor-enter v0

    :try_start_0
    const-string v1, "SmartMXUICC"

    const-string v2, "Making an Instance..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/lguplus/se/SmartMXUICC;->sInstance:Lcom/lguplus/se/SmartMXUICC;

    if-nez v1, :cond_0

    new-instance v1, Lcom/lguplus/se/SmartMXUICC;

    invoke-direct {v1}, Lcom/lguplus/se/SmartMXUICC;-><init>()V

    sput-object v1, Lcom/lguplus/se/SmartMXUICC;->sInstance:Lcom/lguplus/se/SmartMXUICC;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/lguplus/se/SmartMXUICC;->sInstance:Lcom/lguplus/se/SmartMXUICC;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private openLogicalChannel()I
    .locals 4

    sget-object v0, Lcom/lguplus/se/SmartMXUICC;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPcscProvider;->connect()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const-string v1, "SmartMXUICC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "openLogicalChannel channel["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-string v1, "SmartMXUICC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "openLogicalChannel Failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method


# virtual methods
.method public closeSecureElementConnection(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move v0, p1

    const-string v1, "SmartMXUICC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeSecureElementConnection channel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const-string v1, "SmartMXUICC"

    const-string v2, "closeSecureElementConnection channel is wrong"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v1, Lcom/lguplus/se/SmartMXUICC;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/IccPcscProvider;->disconnect(I)I

    const-string v1, "SmartMXUICC"

    const-string v2, "closeSecureElementConnection done!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public exchangeAPDU(I[B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, p1

    const/16 v2, 0x106

    new-array v2, v2, [B

    const/4 v3, 0x0

    const-string v4, "SmartMXUICC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exchangeAPDU channel : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    aget-byte v5, p2, v4

    or-int/2addr v5, v1

    int-to-byte v5, v5

    aput-byte v5, p2, v4

    sget-object v5, Lcom/lguplus/se/SmartMXUICC;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    invoke-virtual {v5, v1, p2, v2}, Lcom/android/internal/telephony/IccPcscProvider;->transmit(I[B[B)I

    move-result v0

    if-lez v0, :cond_0

    new-array v3, v0, [B

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_0
    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    const-string v4, "SmartMXUICC"

    const-string v5, "exchangeAPDU return null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/IOException;

    const-string v5, "Response is NULL"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getATR()[B
    .locals 7

    const/4 v0, 0x0

    const/16 v1, 0x106

    new-array v1, v1, [B

    const/4 v2, 0x0

    move-object v3, v2

    :try_start_0
    sget-object v4, Lcom/lguplus/se/SmartMXUICC;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/IccPcscProvider;->getATR([B)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v4

    nop

    if-lez v0, :cond_0

    new-array v3, v0, [B

    const/4 v2, 0x0

    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_0
    return-object v3

    :catch_0
    move-exception v4

    const-string v5, "SmartMXUICC"

    const-string v6, "getATR Errors"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public getSecureElementTechList(I)[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSecureElementUid(I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public isSmartMX()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public openSecureElementConnection(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, -0x2

    goto :goto_0

    :cond_0
    const-string v1, "android.nfc.uicc.ID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/lguplus/se/SmartMXUICC;->openLogicalChannel()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    const-string v1, "SmartMXUICC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "openSecureElementConnection, retVal:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    return v0

    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Fail to open channel"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "seType must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
