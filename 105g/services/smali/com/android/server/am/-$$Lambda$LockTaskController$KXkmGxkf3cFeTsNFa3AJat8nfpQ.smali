.class public final synthetic Lcom/android/server/am/-$$Lambda$LockTaskController$KXkmGxkf3cFeTsNFa3AJat8nfpQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/LockTaskController;

.field private final synthetic f$1:Landroid/content/Intent;

.field private final synthetic f$2:Lcom/android/server/am/TaskRecord;

.field private final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/LockTaskController;Landroid/content/Intent;Lcom/android/server/am/TaskRecord;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$LockTaskController$KXkmGxkf3cFeTsNFa3AJat8nfpQ;->f$0:Lcom/android/server/am/LockTaskController;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$LockTaskController$KXkmGxkf3cFeTsNFa3AJat8nfpQ;->f$1:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/server/am/-$$Lambda$LockTaskController$KXkmGxkf3cFeTsNFa3AJat8nfpQ;->f$2:Lcom/android/server/am/TaskRecord;

    iput p4, p0, Lcom/android/server/am/-$$Lambda$LockTaskController$KXkmGxkf3cFeTsNFa3AJat8nfpQ;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$LockTaskController$KXkmGxkf3cFeTsNFa3AJat8nfpQ;->f$0:Lcom/android/server/am/LockTaskController;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$LockTaskController$KXkmGxkf3cFeTsNFa3AJat8nfpQ;->f$1:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/am/-$$Lambda$LockTaskController$KXkmGxkf3cFeTsNFa3AJat8nfpQ;->f$2:Lcom/android/server/am/TaskRecord;

    iget v3, p0, Lcom/android/server/am/-$$Lambda$LockTaskController$KXkmGxkf3cFeTsNFa3AJat8nfpQ;->f$3:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/am/LockTaskController;->lambda$setLockTaskMode$2(Lcom/android/server/am/LockTaskController;Landroid/content/Intent;Lcom/android/server/am/TaskRecord;I)V

    return-void
.end method
