.class public final synthetic Lcom/android/server/desktopmode/-$$Lambda$StateManager$KjytMPcnxJxeK9yD-H2yV6_pqkE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/desktopmode/StateManager;

.field private final synthetic f$1:Lcom/android/server/desktopmode/State;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/desktopmode/-$$Lambda$StateManager$KjytMPcnxJxeK9yD-H2yV6_pqkE;->f$0:Lcom/android/server/desktopmode/StateManager;

    iput-object p2, p0, Lcom/android/server/desktopmode/-$$Lambda$StateManager$KjytMPcnxJxeK9yD-H2yV6_pqkE;->f$1:Lcom/android/server/desktopmode/State;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/-$$Lambda$StateManager$KjytMPcnxJxeK9yD-H2yV6_pqkE;->f$0:Lcom/android/server/desktopmode/StateManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/-$$Lambda$StateManager$KjytMPcnxJxeK9yD-H2yV6_pqkE;->f$1:Lcom/android/server/desktopmode/State;

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/StateManager;->lambda$setExternalDisplayUpdated$1(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    return-void
.end method
