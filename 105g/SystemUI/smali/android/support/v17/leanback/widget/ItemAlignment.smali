.class Landroid/support/v17/leanback/widget/ItemAlignment;
.super Ljava/lang/Object;
.source "ItemAlignment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/ItemAlignment$Axis;
    }
.end annotation


# instance fields
.field public final horizontal:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

.field private mMainAxis:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

.field private mOrientation:I

.field private mSecondAxis:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

.field public final vertical:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/ItemAlignment;->mOrientation:I

    new-instance v1, Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/support/v17/leanback/widget/ItemAlignment$Axis;-><init>(I)V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/ItemAlignment;->vertical:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    new-instance v1, Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    invoke-direct {v1, v0}, Landroid/support/v17/leanback/widget/ItemAlignment$Axis;-><init>(I)V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/ItemAlignment;->horizontal:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemAlignment;->horizontal:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ItemAlignment;->mMainAxis:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemAlignment;->vertical:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ItemAlignment;->mSecondAxis:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    return-void
.end method


# virtual methods
.method public final mainAxis()Landroid/support/v17/leanback/widget/ItemAlignment$Axis;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemAlignment;->mMainAxis:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    return-object v0
.end method

.method public final setOrientation(I)V
    .locals 1

    iput p1, p0, Landroid/support/v17/leanback/widget/ItemAlignment;->mOrientation:I

    iget v0, p0, Landroid/support/v17/leanback/widget/ItemAlignment;->mOrientation:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemAlignment;->horizontal:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ItemAlignment;->mMainAxis:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemAlignment;->vertical:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ItemAlignment;->mSecondAxis:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemAlignment;->vertical:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ItemAlignment;->mMainAxis:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemAlignment;->horizontal:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ItemAlignment;->mSecondAxis:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    :goto_0
    return-void
.end method
