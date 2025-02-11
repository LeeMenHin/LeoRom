.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "SLMonitorExtendedInterruptRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner$ContextValIndex;
    }
.end annotation


# static fields
.field private static final DEFAULT_DEVICE_TYPE:I = 0x1

.field private static final DEFAULT_STEP_LEVEL_DURATION:I = 0x12c

.field private static final DEFAULT_STEP_TYPE:I = 0x1


# instance fields
.field private mDeviceType:I

.field private mDuration:I

.field private mNotiCount:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->mDuration:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->mNotiCount:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->mDeviceType:I

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    return-void
.end method

.method public final disable()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    return-void
.end method

.method public final enable()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SL_MONITOR_EXTENDED_INTERRUPT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    const-string v0, "InactiveStatus"

    const-string v1, "IsTimeOut"

    const-string v2, "InactiveTimeDuration"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 8

    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    iget v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->mDeviceType:I

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    aput-byte v4, v0, v6

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->mDeviceType:I

    if-ne v3, v5, :cond_1

    aput-byte v5, v0, v6

    :cond_1
    :goto_0
    iget v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->mDuration:I

    invoke-static {v3, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    aget-byte v7, v3, v2

    aput-byte v7, v0, v5

    aget-byte v7, v3, v6

    aput-byte v7, v0, v1

    const/4 v1, 0x4

    iget v7, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->mNotiCount:I

    invoke-static {v7, v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v7

    aget-byte v7, v7, v2

    aput-byte v7, v0, v1

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getUtcTime()[I

    move-result-object v1

    aget v7, v1, v2

    invoke-static {v7, v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v7

    aget-byte v7, v7, v2

    aput-byte v7, v0, v4

    const/4 v4, 0x6

    aget v7, v1, v6

    invoke-static {v7, v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v7

    aget-byte v7, v7, v2

    aput-byte v7, v0, v4

    const/4 v4, 0x7

    aget v5, v1, v5

    invoke-static {v5, v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v5

    aget-byte v2, v5, v2

    aput-byte v2, v0, v4

    return-object v0
.end method

.method protected final getDataPacketToUnregisterLib()[B
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    const/16 v0, 0x2c

    return v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    return-object p0
.end method

.method protected final getTimeChangeObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;
    .locals 0

    return-object p0
.end method

.method public final parse([BI)I
    .locals 9

    move v0, p2

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parse:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    array-length v2, p1

    sub-int/2addr v2, v0

    const/4 v3, 0x6

    if-ge v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "packet len:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " tmpNext:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v2, -0x1

    return v2

    :cond_0
    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p1, v0

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    const/4 v4, 0x1

    if-nez v2, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    const/4 v6, 0x4

    new-array v6, v6, [B

    const/4 v7, 0x0

    add-int/lit8 v8, v3, 0x1

    aget-byte v3, p1, v3

    aput-byte v3, v6, v7

    add-int/lit8 v3, v8, 0x1

    aget-byte v7, p1, v8

    aput-byte v7, v6, v4

    const/4 v4, 0x2

    add-int/lit8 v7, v3, 0x1

    aget-byte v3, p1, v3

    aput-byte v3, v6, v4

    const/4 v3, 0x3

    add-int/lit8 v4, v7, 0x1

    aget-byte v7, p1, v7

    aput-byte v7, v6, v3

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner$ContextValIndex;->InactiveStatus:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner$ContextValIndex;

    invoke-static {v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner$ContextValIndex;)I

    move-result v7

    aget-object v7, v1, v7

    invoke-virtual {v6, v7, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner$ContextValIndex;->IsTimeOut:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner$ContextValIndex;

    invoke-static {v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner$ContextValIndex;)I

    move-result v7

    aget-object v7, v1, v7

    invoke-virtual {v6, v7, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner$ContextValIndex;->Duration:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner$ContextValIndex;

    invoke-static {v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner$ContextValIndex;)I

    move-result v7

    aget-object v7, v1, v7

    invoke-virtual {v6, v7, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    return v4
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/16 v2, 0x2c

    const/16 v3, 0x17

    const/16 v4, 0x3b

    if-ne p1, v4, :cond_0

    move-object v4, p2

    check-cast v4, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->mDuration:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duration = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->mDuration:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    const/4 v4, 0x5

    iget v5, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->mDuration:I

    invoke-static {v5, v1}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v1

    invoke-virtual {p0, v3, v2, v4, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    :cond_0
    const/16 v4, 0x3c

    if-ne p1, v4, :cond_1

    move-object v1, p2

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->mNotiCount:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notification count = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->mNotiCount:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->mNotiCount:I

    const/4 v4, 0x1

    invoke-static {v1, v4}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v1

    invoke-virtual {p0, v3, v2, v4, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    :cond_1
    const/16 v4, 0x39

    if-ne p1, v4, :cond_2

    move-object v1, p2

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->mDeviceType:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->mDeviceType:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v4, 0x37

    if-ne p1, v4, :cond_3

    move-object v4, p2

    check-cast v4, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Notification start = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    nop

    invoke-static {v4, v1}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v5

    invoke-virtual {p0, v3, v2, v1, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto :goto_0

    :cond_3
    const/16 v4, 0x38

    if-ne p1, v4, :cond_4

    move-object v4, p2

    check-cast v4, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Notification end = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    const/4 v5, 0x3

    invoke-static {v4, v1}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v1

    invoke-virtual {p0, v3, v2, v5, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
