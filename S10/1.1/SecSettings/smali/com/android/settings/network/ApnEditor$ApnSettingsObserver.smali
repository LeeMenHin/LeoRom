.class Lcom/android/settings/network/ApnEditor$ApnSettingsObserver;
.super Landroid/database/ContentObserver;
.source "ApnEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/ApnEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApnSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/ApnEditor;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/ApnEditor;Landroid/os/Handler;)V
    .locals 2

    iput-object p1, p0, Lcom/android/settings/network/ApnEditor$ApnSettingsObserver;->this$0:Lcom/android/settings/network/ApnEditor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    invoke-static {p1}, Lcom/android/settings/network/ApnEditor;->access$000(Lcom/android/settings/network/ApnEditor;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p1, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v1}, Lcom/android/settings/network/ApnEditor$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/android/settings/network/ApnEditor;->access$100(Lcom/android/settings/network/ApnEditor;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {p1}, Lcom/android/settings/network/ApnEditor$ApnData;->getUri()Landroid/net/Uri;

    move-result-object p1

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor$ApnSettingsObserver;->this$0:Lcom/android/settings/network/ApnEditor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/network/ApnEditor;->access$202(Lcom/android/settings/network/ApnEditor;Z)Z

    :cond_0
    return-void
.end method
