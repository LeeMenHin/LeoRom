.class Lcom/android/internal/widget/AdapterHelper;
.super Ljava/lang/Object;
.source "AdapterHelper.java"

# interfaces
.implements Lcom/android/internal/widget/OpReorderer$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/AdapterHelper$Callback;,
        Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final POSITION_TYPE_INVISIBLE:I = 0x0

.field static final POSITION_TYPE_NEW_OR_LAID_OUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AHT"


# instance fields
.field final mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

.field final mDisableRecycler:Z

.field private mExistingUpdateTypes:I

.field mOnItemProcessedCallback:Ljava/lang/Runnable;

.field final mOpReorderer:Lcom/android/internal/widget/OpReorderer;

.field final mPendingUpdates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field final mPostponedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateOpPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool<",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/internal/widget/AdapterHelper$Callback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/AdapterHelper;-><init>(Lcom/android/internal/widget/AdapterHelper$Callback;Z)V

    return-void
.end method

.method constructor <init>(Lcom/android/internal/widget/AdapterHelper$Callback;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mUpdateOpPool:Landroid/util/Pools$Pool;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/AdapterHelper;->mExistingUpdateTypes:I

    iput-object p1, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    iput-boolean p2, p0, Lcom/android/internal/widget/AdapterHelper;->mDisableRecycler:Z

    new-instance v0, Lcom/android/internal/widget/OpReorderer;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/OpReorderer;-><init>(Lcom/android/internal/widget/OpReorderer$Callback;)V

    iput-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mOpReorderer:Lcom/android/internal/widget/OpReorderer;

    return-void
.end method

.method private applyAdd(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    return-void
.end method

.method private applyMove(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    return-void
.end method

.method private applyRemove(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V
    .locals 11

    iget v0, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v1, 0x0

    iget v2, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v2, v3

    const/4 v3, -0x1

    iget v4, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x2

    if-ge v4, v2, :cond_5

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    invoke-interface {v8, v4}, Lcom/android/internal/widget/AdapterHelper$Callback;->findViewHolder(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v8

    const/4 v9, 0x1

    if-nez v8, :cond_2

    invoke-direct {p0, v4}, Lcom/android/internal/widget/AdapterHelper;->canFindInPreLayout(I)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_1

    :cond_0
    if-ne v3, v9, :cond_1

    invoke-virtual {p0, v6, v0, v1, v5}, Lcom/android/internal/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/widget/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    const/4 v7, 0x1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    if-nez v3, :cond_3

    invoke-virtual {p0, v6, v0, v1, v5}, Lcom/android/internal/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    const/4 v7, 0x1

    :cond_3
    const/4 v3, 0x1

    :goto_2
    if-eqz v7, :cond_4

    sub-int/2addr v4, v1

    sub-int/2addr v2, v1

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    :goto_3
    add-int/2addr v4, v9

    goto :goto_0

    :cond_5
    iget v4, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v1, v4, :cond_6

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/AdapterHelper;->recycleUpdateOp(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    invoke-virtual {p0, v6, v0, v1, v5}, Lcom/android/internal/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    :cond_6
    if-nez v3, :cond_7

    invoke-direct {p0, p1}, Lcom/android/internal/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    goto :goto_4

    :cond_7
    invoke-direct {p0, p1}, Lcom/android/internal/widget/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    :goto_4
    return-void
.end method

.method private applyUpdate(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V
    .locals 9

    iget v0, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v1, 0x0

    iget v2, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v2, v3

    const/4 v3, -0x1

    iget v4, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    :goto_0
    const/4 v5, 0x4

    if-ge v4, v2, :cond_4

    iget-object v6, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    invoke-interface {v6, v4}, Lcom/android/internal/widget/AdapterHelper$Callback;->findViewHolder(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v6, :cond_2

    invoke-direct {p0, v4}, Lcom/android/internal/widget/AdapterHelper;->canFindInPreLayout(I)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    :cond_0
    if-ne v3, v7, :cond_1

    iget-object v8, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v5, v0, v1, v8}, Lcom/android/internal/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/widget/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    const/4 v1, 0x0

    move v0, v4

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    if-nez v3, :cond_3

    iget-object v8, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v5, v0, v1, v8}, Lcom/android/internal/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    const/4 v1, 0x0

    move v0, v4

    :cond_3
    const/4 v3, 0x1

    :goto_2
    add-int/2addr v1, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    iget v4, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v1, v4, :cond_5

    iget-object v4, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/AdapterHelper;->recycleUpdateOp(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    invoke-virtual {p0, v5, v0, v1, v4}, Lcom/android/internal/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    :cond_5
    if-nez v3, :cond_6

    invoke-direct {p0, p1}, Lcom/android/internal/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    goto :goto_3

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/internal/widget/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    :goto_3
    return-void
.end method

.method private canFindInPreLayout(I)Z
    .locals 8

    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    iget v4, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    iget v4, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/widget/AdapterHelper;->findPositionOffset(II)I

    move-result v4

    if-ne v4, p1, :cond_2

    return v6

    :cond_0
    iget v4, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v4, v6, :cond_2

    iget v4, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v4, v5

    iget v5, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    :goto_1
    if-ge v5, v4, :cond_2

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p0, v5, v7}, Lcom/android/internal/widget/AdapterHelper;->findPositionOffset(II)I

    move-result v7

    if-ne v7, p1, :cond_1

    return v6

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private dispatchAndUpdateViewHolders(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V
    .locals 13

    iget v0, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    iget v0, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v2, 0x8

    if-eq v0, v2, :cond_a

    iget v0, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-direct {p0, v0, v2}, Lcom/android/internal/widget/AdapterHelper;->updatePositionWithPostponed(II)I

    move-result v0

    const/4 v2, 0x1

    iget v3, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-eq v4, v5, :cond_1

    if-ne v4, v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "op should be remove or update."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v4, 0x0

    nop

    :goto_0
    nop

    move v7, v3

    move v3, v0

    move v0, v1

    :goto_1
    iget v8, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v0, v8, :cond_8

    iget v8, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    mul-int v9, v4, v0

    add-int/2addr v8, v9

    iget v9, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-direct {p0, v8, v9}, Lcom/android/internal/widget/AdapterHelper;->updatePositionWithPostponed(II)I

    move-result v9

    const/4 v10, 0x0

    iget v11, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v12, 0x0

    if-eq v11, v5, :cond_4

    if-eq v11, v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v11, v3, 0x1

    if-ne v9, v11, :cond_3

    move v12, v1

    nop

    :cond_3
    move v10, v12

    goto :goto_2

    :cond_4
    if-ne v9, v3, :cond_5

    move v12, v1

    nop

    :cond_5
    move v10, v12

    :goto_2
    if-eqz v10, :cond_6

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    iget v11, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    iget-object v12, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v11, v3, v2, v12}, Lcom/android/internal/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    move-result-object v11

    invoke-virtual {p0, v11, v7}, Lcom/android/internal/widget/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Lcom/android/internal/widget/AdapterHelper$UpdateOp;I)V

    invoke-virtual {p0, v11}, Lcom/android/internal/widget/AdapterHelper;->recycleUpdateOp(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    iget v12, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v12, v6, :cond_7

    add-int/2addr v7, v2

    :cond_7
    move v3, v9

    const/4 v2, 0x1

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    iget-object v0, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/AdapterHelper;->recycleUpdateOp(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    if-lez v2, :cond_9

    iget v1, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/android/internal/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    move-result-object v1

    invoke-virtual {p0, v1, v7}, Lcom/android/internal/widget/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Lcom/android/internal/widget/AdapterHelper$UpdateOp;I)V

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/AdapterHelper;->recycleUpdateOp(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    :cond_9
    return-void

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "should not dispatch add or move for pre layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private postponeAndUpdateViewHolders(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown update op type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    iget v1, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/widget/AdapterHelper$Callback;->offsetPositionsForRemovingLaidOutOrNewView(II)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    iget v1, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/widget/AdapterHelper$Callback;->offsetPositionsForAdd(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    iget v1, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/widget/AdapterHelper$Callback;->offsetPositionsForMove(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    iget v1, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v3, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/widget/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updatePositionWithPostponed(II)I
    .locals 8

    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    const/16 v2, 0x8

    const/4 v3, 0x1

    if-ltz v1, :cond_e

    iget-object v4, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    iget v5, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v6, 0x2

    if-ne v5, v2, :cond_9

    iget v2, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v2, v5, :cond_0

    iget v2, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_1

    :cond_0
    iget v2, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    :goto_1
    if-lt p1, v2, :cond_6

    if-gt p1, v5, :cond_6

    iget v7, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v2, v7, :cond_3

    if-ne p2, v3, :cond_1

    iget v6, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v6, v3

    iput v6, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_2

    :cond_1
    if-ne p2, v6, :cond_2

    iget v6, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v6, v3

    iput v6, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    :cond_2
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_3
    if-ne p2, v3, :cond_4

    iget v6, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v6, v3

    iput v6, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_3

    :cond_4
    if-ne p2, v6, :cond_5

    iget v6, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v6, v3

    iput v6, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    :cond_5
    :goto_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    :cond_6
    iget v7, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge p1, v7, :cond_8

    if-ne p2, v3, :cond_7

    iget v6, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v6, v3

    iput v6, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v6, v3

    iput v6, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_4

    :cond_7
    if-ne p2, v6, :cond_8

    iget v6, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v6, v3

    iput v6, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v6, v3

    iput v6, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    :cond_8
    :goto_4
    goto :goto_5

    :cond_9
    iget v2, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v2, p1, :cond_b

    iget v2, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v2, v3, :cond_a

    iget v2, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v2

    goto :goto_5

    :cond_a
    iget v2, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v2, v6, :cond_d

    iget v2, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v2

    goto :goto_5

    :cond_b
    if-ne p2, v3, :cond_c

    iget v2, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v2, v3

    iput v2, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_5

    :cond_c
    if-ne p2, v6, :cond_d

    iget v2, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v2, v3

    iput v2, v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    :cond_d
    :goto_5
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    :cond_e
    iget-object v1, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_6
    if-ltz v1, :cond_12

    iget-object v3, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    iget v4, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v4, v2, :cond_10

    iget v4, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-eq v4, v5, :cond_f

    iget v4, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gez v4, :cond_11

    :cond_f
    iget-object v4, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/AdapterHelper;->recycleUpdateOp(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    goto :goto_7

    :cond_10
    iget v4, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gtz v4, :cond_11

    iget-object v4, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/AdapterHelper;->recycleUpdateOp(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    :cond_11
    :goto_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_12
    return p1
.end method


# virtual methods
.method varargs addUpdateOp([Lcom/android/internal/widget/AdapterHelper$UpdateOp;)Lcom/android/internal/widget/AdapterHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method

.method public applyPendingUpdatesToPosition(I)I
    .locals 5

    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    iget-object v2, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, p1, :cond_4

    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v4

    if-le v3, p1, :cond_0

    const/4 v4, -0x1

    return v4

    :cond_0
    iget v4, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v4

    goto :goto_1

    :pswitch_1
    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, p1, :cond_4

    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v3

    goto :goto_1

    :cond_1
    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v3, p1, :cond_2

    iget p1, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_1

    :cond_2
    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v3, p1, :cond_3

    add-int/lit8 p1, p1, -0x1

    :cond_3
    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v3, p1, :cond_4

    add-int/lit8 p1, p1, 0x1

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method consumePostponedUpdates()V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    iget-object v4, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    invoke-interface {v3, v4}, Lcom/android/internal/widget/AdapterHelper$Callback;->onDispatchSecondPass(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    iput v1, p0, Lcom/android/internal/widget/AdapterHelper;->mExistingUpdateTypes:I

    return-void
.end method

.method consumeUpdatesInOnePass()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/internal/widget/AdapterHelper;->consumePostponedUpdates()V

    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    iget v4, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    invoke-interface {v4, v3}, Lcom/android/internal/widget/AdapterHelper$Callback;->onDispatchSecondPass(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    iget-object v4, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    iget v5, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v4, v5, v6}, Lcom/android/internal/widget/AdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    goto :goto_1

    :pswitch_1
    iget-object v4, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    invoke-interface {v4, v3}, Lcom/android/internal/widget/AdapterHelper$Callback;->onDispatchSecondPass(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    iget-object v4, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    iget v5, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v4, v5, v6}, Lcom/android/internal/widget/AdapterHelper$Callback;->offsetPositionsForAdd(II)V

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    invoke-interface {v4, v3}, Lcom/android/internal/widget/AdapterHelper$Callback;->onDispatchSecondPass(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    iget-object v4, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    iget v5, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v4, v5, v6}, Lcom/android/internal/widget/AdapterHelper$Callback;->offsetPositionsForMove(II)V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    invoke-interface {v4, v3}, Lcom/android/internal/widget/AdapterHelper$Callback;->onDispatchSecondPass(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    iget-object v4, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    iget v5, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v7, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/widget/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    nop

    :goto_1
    iget-object v4, p0, Lcom/android/internal/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    iput v1, p0, Lcom/android/internal/widget/AdapterHelper;->mExistingUpdateTypes:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method dispatchFirstPassAndUpdateViewHolders(Lcom/android/internal/widget/AdapterHelper$UpdateOp;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/AdapterHelper$Callback;->onDispatchFirstPass(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    iget v0, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    iget v1, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v2, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v0, p2, v1, v2}, Lcom/android/internal/widget/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "only remove and update ops can be dispatched in first pass"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    iget v1, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, p2, v1}, Lcom/android/internal/widget/AdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    nop

    :goto_0
    return-void
.end method

.method findPositionOffset(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/AdapterHelper;->findPositionOffset(II)I

    move-result v0

    return v0
.end method

.method findPositionOffset(II)I
    .locals 5

    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, p1

    move p1, p2

    :goto_0
    if-ge p1, v0, :cond_6

    iget-object v2, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v3, v1, :cond_0

    iget v1, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_1

    :cond_0
    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v3, v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    :cond_1
    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v3, v1, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, v1, :cond_5

    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v4

    if-ge v1, v3, :cond_3

    const/4 v3, -0x1

    return v3

    :cond_3
    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v1, v3

    goto :goto_1

    :cond_4
    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v3

    :cond_5
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_6
    return v1
.end method

.method hasAnyUpdateTypes(I)Z
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/AdapterHelper;->mExistingUpdateTypes:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasPendingUpdates()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasUpdates()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mUpdateOpPool:Landroid/util/Pools$Pool;

    invoke-interface {v0}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/internal/widget/AdapterHelper$UpdateOp;-><init>(IIILjava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    iput p1, v0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    iput p2, v0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iput p3, v0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iput-object p4, v0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method onItemRangeChanged(IILjava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_0

    return v0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-virtual {p0, v3, p1, p2, p3}, Lcom/android/internal/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lcom/android/internal/widget/AdapterHelper;->mExistingUpdateTypes:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/widget/AdapterHelper;->mExistingUpdateTypes:I

    iget-object v2, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_1

    move v0, v1

    nop

    :cond_1
    return v0
.end method

.method onItemRangeInserted(II)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_0

    return v0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, p1, p2, v3}, Lcom/android/internal/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lcom/android/internal/widget/AdapterHelper;->mExistingUpdateTypes:I

    or-int/2addr v2, v1

    iput v2, p0, Lcom/android/internal/widget/AdapterHelper;->mExistingUpdateTypes:I

    iget-object v2, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_1

    move v0, v1

    nop

    :cond_1
    return v0
.end method

.method onItemRangeMoved(III)Z
    .locals 5

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p3, v1, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-virtual {p0, v4, p1, p2, v3}, Lcom/android/internal/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lcom/android/internal/widget/AdapterHelper;->mExistingUpdateTypes:I

    or-int/2addr v2, v4

    iput v2, p0, Lcom/android/internal/widget/AdapterHelper;->mExistingUpdateTypes:I

    iget-object v2, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_1

    move v0, v1

    nop

    :cond_1
    return v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Moving more than 1 item is not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method onItemRangeRemoved(II)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_0

    return v0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {p0, v4, p1, p2, v3}, Lcom/android/internal/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lcom/android/internal/widget/AdapterHelper;->mExistingUpdateTypes:I

    or-int/2addr v2, v4

    iput v2, p0, Lcom/android/internal/widget/AdapterHelper;->mExistingUpdateTypes:I

    iget-object v2, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_1

    move v0, v1

    nop

    :cond_1
    return v0
.end method

.method preProcess()V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mOpReorderer:Lcom/android/internal/widget/OpReorderer;

    iget-object v1, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/OpReorderer;->reorderOps(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, v2}, Lcom/android/internal/widget/AdapterHelper;->applyRemove(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/internal/widget/AdapterHelper;->applyAdd(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    goto :goto_1

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/internal/widget/AdapterHelper;->applyMove(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/internal/widget/AdapterHelper;->applyUpdate(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    nop

    :goto_1
    iget-object v3, p0, Lcom/android/internal/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public recycleUpdateOp(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/AdapterHelper;->mDisableRecycler:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mUpdateOpPool:Landroid/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method recycleUpdateOpsAndClearList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/AdapterHelper;->recycleUpdateOp(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method reset()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/AdapterHelper;->mExistingUpdateTypes:I

    return-void
.end method
