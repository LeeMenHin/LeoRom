.class Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;
.super Ljava/lang/Object;
.source "OneHandViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Description"
.end annotation


# instance fields
.field animation:I

.field key:Ljava/lang/String;

.field summary:I

.field title:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;->key:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;->animation:I

    iput v0, p0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;->title:I

    iput v0, p0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;->summary:I

    return-void
.end method
