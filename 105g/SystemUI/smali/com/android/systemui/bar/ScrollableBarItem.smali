.class public abstract Lcom/android/systemui/bar/ScrollableBarItem;
.super Lcom/android/systemui/bar/BarItem;
.source "ScrollableBarItem.java"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bar/BarItem;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bar/ScrollableBarItem;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getScrollableBarItemView(Landroid/view/ViewGroup;)Lcom/android/systemui/bar/ScrollableBarItemView;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bar/ScrollableBarItem;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d01d3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bar/ScrollableBarItemView;

    return-object v0
.end method
