.class final enum Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList$51;
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

    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_EXERCISE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getObject()Lcom/samsung/android/contextaware/manager/ContextComponent;
    .locals 6

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$31700()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList$51;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-instance v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$31800()I

    move-result v2

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$31900()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$32000()Landroid/os/Looper;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$32100()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    move-object v0, v1

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$32200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList$51;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList$51;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList$51;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList$51;->setOptionForLib(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;->access$32300()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator$SensorHubRunnerList$51;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/manager/ContextComponent;

    return-object v0
.end method
