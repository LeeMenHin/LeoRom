.class public Landroid/support/v4/view/SeslViewReflector$SeslMeasureSpecReflector;
.super Ljava/lang/Object;
.source "SeslViewReflector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/SeslViewReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SeslMeasureSpecReflector"
.end annotation


# static fields
.field private static final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/view/View$MeasureSpec;

    sput-object v0, Landroid/support/v4/view/SeslViewReflector$SeslMeasureSpecReflector;->mClass:Ljava/lang/Class;

    return-void
.end method

.method public static makeSafeMeasureSpec(II)I
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-static {p0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    return v1
.end method
