.class final enum Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList$33;
.super Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList;
.source "SensorHubRunnerConcreteCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$1;)V

    return-void
.end method


# virtual methods
.method protected getKey()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_ACTIVITY_TRACKER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getObject()Lcom/samsung/android/contextaware/manager/ContextComponent;
    .locals 7

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$20100()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList$33;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$20600()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList$33;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerRunner;

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$20200()I

    move-result v3

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$20300()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$20400()Landroid/os/Looper;

    move-result-object v5

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$20500()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerRunner;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList$33;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList$33;->getSubKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList$33;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList$33;->setOptionForLib(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$20700()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList$33;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/manager/ContextComponent;

    return-object v0
.end method

.method protected getSubKey()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->NORMAL_MODE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
