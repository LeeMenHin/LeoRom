.class Landroid/support/v4/widget/SeslHoverPopupWindowReflector$HoverPopupWindowApi24Impl;
.super Landroid/support/v4/widget/SeslHoverPopupWindowReflector$HoverPopupWindowApi21Impl;
.source "SeslHoverPopupWindowReflector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SeslHoverPopupWindowReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HoverPopupWindowApi24Impl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/widget/SeslHoverPopupWindowReflector$HoverPopupWindowApi21Impl;-><init>()V

    const-string v0, "com.samsung.android.widget.SemHoverPopupWindow"

    sput-object v0, Landroid/support/v4/widget/SeslHoverPopupWindowReflector$HoverPopupWindowApi24Impl;->mClassName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setGravity(Ljava/lang/Object;I)V
    .locals 4

    sget-object v0, Landroid/support/v4/widget/SeslHoverPopupWindowReflector$HoverPopupWindowApi24Impl;->mClassName:Ljava/lang/String;

    const-string/jumbo v1, "setGravity"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setOffset(Ljava/lang/Object;II)V
    .locals 7

    sget-object v0, Landroid/support/v4/widget/SeslHoverPopupWindowReflector$HoverPopupWindowApi24Impl;->mClassName:Ljava/lang/String;

    const-string/jumbo v1, "setOffset"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {p1, v0, v1}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public update(Ljava/lang/Object;)V
    .locals 4

    sget-object v0, Landroid/support/v4/widget/SeslHoverPopupWindowReflector$HoverPopupWindowApi24Impl;->mClassName:Ljava/lang/String;

    const-string/jumbo v1, "update"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
