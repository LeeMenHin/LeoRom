.class public Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ScreenModePreviewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field mDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;->setDescriptions()V

    return-void
.end method

.method private setDescriptions()V
    .locals 5

    new-instance v0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;

    invoke-direct {v0}, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;

    invoke-direct {v1}, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;-><init>()V

    new-instance v2, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;

    invoke-direct {v2}, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const v3, 0x7f080690

    iput v3, v0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;->animation:I

    const v3, 0x7f080691

    iput v3, v1, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;->animation:I

    const v3, 0x7f080692

    iput v3, v2, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;->animation:I

    goto :goto_0

    :cond_0
    const v3, 0x7f08068d

    iput v3, v0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;->animation:I

    const v3, 0x7f08068e

    iput v3, v1, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;->animation:I

    const v3, 0x7f08068f

    iput v3, v2, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;->animation:I

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Landroid/support/v4/view/ViewPager;

    move-object v1, p3

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d0258

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f0a05f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int p2, v2, p2

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;

    iget v2, v2, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;->animation:I

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;

    iget v2, v2, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;->animation:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    move-object v2, p1

    check-cast v2, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
