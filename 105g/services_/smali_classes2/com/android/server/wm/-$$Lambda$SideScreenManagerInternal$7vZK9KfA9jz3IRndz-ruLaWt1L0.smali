.class public final synthetic Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$7vZK9KfA9jz3IRndz-ruLaWt1L0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/SideScreenManagerInternal;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SideScreenManagerInternal;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$7vZK9KfA9jz3IRndz-ruLaWt1L0;->f$0:Lcom/android/server/wm/SideScreenManagerInternal;

    iput p2, p0, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$7vZK9KfA9jz3IRndz-ruLaWt1L0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$7vZK9KfA9jz3IRndz-ruLaWt1L0;->f$0:Lcom/android/server/wm/SideScreenManagerInternal;

    iget v1, p0, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$7vZK9KfA9jz3IRndz-ruLaWt1L0;->f$1:I

    invoke-static {v0, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->lambda$setAdjustedForIme$7(Lcom/android/server/wm/SideScreenManagerInternal;I)V

    return-void
.end method
