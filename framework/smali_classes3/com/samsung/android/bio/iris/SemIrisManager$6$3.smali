.class Lcom/samsung/android/bio/iris/SemIrisManager$6$3;
.super Ljava/lang/Object;
.source "SemIrisManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/bio/iris/SemIrisManager$6;->onAuthenticationFailed(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/bio/iris/SemIrisManager$6;


# direct methods
.method constructor <init>(Lcom/samsung/android/bio/iris/SemIrisManager$6;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$6$3;->this$1:Lcom/samsung/android/bio/iris/SemIrisManager$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$6$3;->this$1:Lcom/samsung/android/bio/iris/SemIrisManager$6;

    iget-object v0, v0, Lcom/samsung/android/bio/iris/SemIrisManager$6;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->access$900(Lcom/samsung/android/bio/iris/SemIrisManager;)V

    return-void
.end method
