.class Lcom/android/settings/display/ScreenZoomSettings$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "ScreenZoomSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/ScreenZoomSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
