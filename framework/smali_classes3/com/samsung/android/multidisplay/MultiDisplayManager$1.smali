.class Lcom/samsung/android/multidisplay/MultiDisplayManager$1;
.super Landroid/util/Singleton;
.source "MultiDisplayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multidisplay/MultiDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/samsung/android/multidisplay/IMultiDisplayManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/samsung/android/multidisplay/IMultiDisplayManager;
    .locals 2

    const-string/jumbo v0, "multidisplay"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multidisplay/IMultiDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multidisplay/IMultiDisplayManager;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/multidisplay/MultiDisplayManager$1;->create()Lcom/samsung/android/multidisplay/IMultiDisplayManager;

    move-result-object v0

    return-object v0
.end method
