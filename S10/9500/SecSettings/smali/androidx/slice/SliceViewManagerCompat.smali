.class Landroidx/slice/SliceViewManagerCompat;
.super Landroidx/slice/SliceViewManagerBase;
.source "SliceViewManagerCompat.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/slice/SliceViewManagerBase;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/slice/SliceViewManagerCompat;->mContext:Landroid/content/Context;

    sget-object v1, Landroidx/slice/widget/SliceLiveData;->SUPPORTED_SPECS:Ljava/util/Set;

    invoke-static {v0, p1, v1}, Landroidx/slice/compat/SliceProviderCompat;->bindSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Set;)Landroidx/slice/Slice;

    move-result-object v0

    return-object v0
.end method

.method public getSliceDescendants(Landroid/net/Uri;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/slice/SliceViewManagerCompat;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/slice/compat/SliceProviderCompat;->getSliceDescendants(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public pinSlice(Landroid/net/Uri;)V
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/slice/SliceViewManagerCompat;->mContext:Landroid/content/Context;

    sget-object v1, Landroidx/slice/widget/SliceLiveData;->SUPPORTED_SPECS:Ljava/util/Set;

    invoke-static {v0, p1, v1}, Landroidx/slice/compat/SliceProviderCompat;->pinSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Set;)V

    return-void
.end method

.method public unpinSlice(Landroid/net/Uri;)V
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/slice/SliceViewManagerCompat;->mContext:Landroid/content/Context;

    sget-object v1, Landroidx/slice/widget/SliceLiveData;->SUPPORTED_SPECS:Ljava/util/Set;

    invoke-static {v0, p1, v1}, Landroidx/slice/compat/SliceProviderCompat;->unpinSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Set;)V

    return-void
.end method
