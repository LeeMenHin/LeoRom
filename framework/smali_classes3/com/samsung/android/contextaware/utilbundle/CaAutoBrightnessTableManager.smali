.class public Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;
.super Ljava/lang/Object;
.source "CaAutoBrightnessTableManager.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/IUtilManager;


# static fields
.field private static instance:Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;


# instance fields
.field private mOffsetTable:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;

    return-object v0
.end method


# virtual methods
.method public initializeManager(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public sendAutoBrightnessTableToSensorHub()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;->mOffsetTable:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;->mOffsetTable:[B

    array-length v0, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;->mOffsetTable:[B

    const/4 v3, 0x4

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v0

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v2

    if-eq v0, v2, :cond_1

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    :goto_0
    const-string v0, "Auto Brightness in sensorhub isn\'t supported so skip to send config data to sensorhub!!"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v1

    nop

    :array_0
    .array-data 1
        -0x3ft
        0x17t
        0x30t
        0x2t
    .end array-data
.end method

.method public setOffsetTable([B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;->mOffsetTable:[B

    return-void
.end method

.method public terminateManager()V
    .locals 0

    return-void
.end method
