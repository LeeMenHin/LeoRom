.class Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiApSmartCallback;
.super Ljava/lang/Object;
.source "AccessPointControllerImpl.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$SemWifiApSmartCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiApSmartCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiApSmartCallback;->this$0:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiApSmartCallback;-><init>(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)V

    return-void
.end method


# virtual methods
.method public onStateChanged(ILjava/lang/String;)V
    .locals 3

    const-string v0, "AccessPointController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiApSmartCallback`s onStateChanged() : mhsMac -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " state -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiApSmartCallback;->this$0:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    invoke-static {v0, p1, p2}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;ILjava/lang/String;)V

    return-void
.end method
