.class Lcom/android/systemui/keyguard/WorkLockActivityController$1;
.super Lcom/android/systemui/recents/misc/SysUiTaskStackChangeListener;
.source "WorkLockActivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/WorkLockActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/WorkLockActivityController;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/WorkLockActivityController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/WorkLockActivityController$1;->this$0:Lcom/android/systemui/keyguard/WorkLockActivityController;

    invoke-direct {p0}, Lcom/android/systemui/recents/misc/SysUiTaskStackChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskProfileLocked(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivityController$1;->this$0:Lcom/android/systemui/keyguard/WorkLockActivityController;

    invoke-static {v0}, Lcom/android/systemui/keyguard/WorkLockActivityController;->access$000(Lcom/android/systemui/keyguard/WorkLockActivityController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSepLiteDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivityController$1;->this$0:Lcom/android/systemui/keyguard/WorkLockActivityController;

    invoke-static {v0, p1, p2}, Lcom/android/systemui/keyguard/WorkLockActivityController;->access$100(Lcom/android/systemui/keyguard/WorkLockActivityController;II)V

    :cond_0
    return-void
.end method
