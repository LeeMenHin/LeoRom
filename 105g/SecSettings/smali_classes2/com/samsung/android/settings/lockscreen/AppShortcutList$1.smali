.class Lcom/samsung/android/settings/lockscreen/AppShortcutList$1;
.super Landroid/os/Handler;
.source "AppShortcutList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/AppShortcutList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/AppShortcutList;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/AppShortcutList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList$1;->this$0:Lcom/samsung/android/settings/lockscreen/AppShortcutList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList$1;->this$0:Lcom/samsung/android/settings/lockscreen/AppShortcutList;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->access$000(Lcom/samsung/android/settings/lockscreen/AppShortcutList;)Lcom/samsung/android/settings/lockscreen/AppShortcutList$LoadAppListTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList$LoadAppListTask;->add()V

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
