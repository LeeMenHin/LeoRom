.class Lcom/android/server/pm/AutoDisableHandler$AutoDisableThread;
.super Ljava/lang/Thread;
.source "AutoDisableHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/AutoDisableHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoDisableThread"
.end annotation


# instance fields
.field mPriority:I

.field final synthetic this$0:Lcom/android/server/pm/AutoDisableHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/AutoDisableHandler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/AutoDisableHandler$AutoDisableThread;->this$0:Lcom/android/server/pm/AutoDisableHandler;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/pm/AutoDisableHandler$AutoDisableThread;->mPriority:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/AutoDisableHandler;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/AutoDisableHandler$AutoDisableThread;->this$0:Lcom/android/server/pm/AutoDisableHandler;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput p3, p0, Lcom/android/server/pm/AutoDisableHandler$AutoDisableThread;->mPriority:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, Lcom/android/server/pm/AutoDisableHandler$AutoDisableThread;->mPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/android/server/pm/AutoDisableHandler$AutoDisableThread;->this$0:Lcom/android/server/pm/AutoDisableHandler;

    new-instance v1, Lcom/android/server/pm/AutoDisableHandler$ADHandler;

    iget-object v2, p0, Lcom/android/server/pm/AutoDisableHandler$AutoDisableThread;->this$0:Lcom/android/server/pm/AutoDisableHandler;

    invoke-direct {v1, v2}, Lcom/android/server/pm/AutoDisableHandler$ADHandler;-><init>(Lcom/android/server/pm/AutoDisableHandler;)V

    iput-object v1, v0, Lcom/android/server/pm/AutoDisableHandler;->mAutoDisableHandler:Lcom/android/server/pm/AutoDisableHandler$ADHandler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
