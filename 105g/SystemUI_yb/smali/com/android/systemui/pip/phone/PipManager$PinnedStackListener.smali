.class Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;
.super Landroid/view/IPinnedStackListener$Stub;
.source "PipManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PinnedStackListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipManager;


# direct methods
.method private constructor <init>(Lcom/android/systemui/pip/phone/PipManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-direct {p0}, Landroid/view/IPinnedStackListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/pip/phone/PipManager;Lcom/android/systemui/pip/phone/PipManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;-><init>(Lcom/android/systemui/pip/phone/PipManager;)V

    return-void
.end method

.method public static synthetic lambda$onActionsChanged$5(Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;Landroid/content/pm/ParceledListSlice;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$300(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipMenuActivityController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->setAppActions(Landroid/content/pm/ParceledListSlice;)V

    return-void
.end method

.method public static synthetic lambda$onImeVisibilityChanged$1(Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;ZI)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$100(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipTouchHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->onImeVisibilityChanged(ZI)V

    return-void
.end method

.method public static synthetic lambda$onListenerRegistered$0(Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;Landroid/view/IPinnedStackController;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$100(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipTouchHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->setPinnedStackController(Landroid/view/IPinnedStackController;)V

    return-void
.end method

.method public static synthetic lambda$onMinimizedStateChanged$3(Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$100(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipTouchHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->setMinimizedState(ZZ)V

    return-void
.end method

.method public static synthetic lambda$onMovementBoundsChanged$4(Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZI)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$100(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipTouchHandler;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/pip/phone/PipTouchHandler;->onMovementBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZI)V

    return-void
.end method

.method public static synthetic lambda$onShelfVisibilityChanged$2(Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;ZI)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$100(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipTouchHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->onShelfVisibilityChanged(ZI)V

    return-void
.end method


# virtual methods
.method public onActionsChanged(Landroid/content/pm/ParceledListSlice;)V
    .locals 2

    const-string v0, "PipManager"

    const-string v1, "[Pip] onActionsChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$800(Lcom/android/systemui/pip/phone/PipManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$JU_-Gjrp-L4fTB-9HLmwOZwFKXw;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$JU_-Gjrp-L4fTB-9HLmwOZwFKXw;-><init>(Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;Landroid/content/pm/ParceledListSlice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onImeVisibilityChanged(ZI)V
    .locals 3

    const-string v0, "PipManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Pip] onImeVisibilityChanged - imeVisible : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " imeHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$800(Lcom/android/systemui/pip/phone/PipManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$VBLjn70VeOT58ISp8JJdGGwiLRI;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$VBLjn70VeOT58ISp8JJdGGwiLRI;-><init>(Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onListenerRegistered(Landroid/view/IPinnedStackController;)V
    .locals 2

    const-string v0, "PipManager"

    const-string v1, "[Pip] onListenerRegistered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/pip/phone/PipManager;->access$702(Lcom/android/systemui/pip/phone/PipManager;Z)Z

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$800(Lcom/android/systemui/pip/phone/PipManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$fsM0yPTeQnwLCmc8K2TS4ZFeBWc;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$fsM0yPTeQnwLCmc8K2TS4ZFeBWc;-><init>(Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;Landroid/view/IPinnedStackController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMinimizedStateChanged(Z)V
    .locals 3

    const-string v0, "PipManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Pip] onMinimizedStateChanged - isMinimized : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$800(Lcom/android/systemui/pip/phone/PipManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$BUR7BmLfjK0NpOw2OLHQV6xTO5k;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$BUR7BmLfjK0NpOw2OLHQV6xTO5k;-><init>(Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMovementBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZI)V
    .locals 11

    const-string v0, "PipManager"

    const-string v1, "[Pip] onMovementBoundsChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    iget-object v1, v0, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipManager;->access$800(Lcom/android/systemui/pip/phone/PipManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v10, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$qj7-lqmu1a4XOuu8emxk_Cwvcxo;

    move-object v2, v10

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$qj7-lqmu1a4XOuu8emxk_Cwvcxo;-><init>(Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZI)V

    invoke-virtual {v1, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onShelfVisibilityChanged(ZI)V
    .locals 3

    const-string v0, "PipManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Pip] onShelfVisibilityChanged - shelfVisible : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  shelfHeight : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$800(Lcom/android/systemui/pip/phone/PipManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$bf4e5rlYRO_U_i4UtAT1QucT53g;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$bf4e5rlYRO_U_i4UtAT1QucT53g;-><init>(Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
