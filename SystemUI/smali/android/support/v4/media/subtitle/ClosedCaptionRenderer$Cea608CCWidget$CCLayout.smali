.class Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLayout;
.super Landroid/widget/LinearLayout;
.source "ClosedCaptionRenderer.java"

# interfaces
.implements Landroid/support/v4/media/subtitle/ClosedCaptionWidget$ClosedCaptionLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CCLayout"
.end annotation


# instance fields
.field private final mLineBoxes:[Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 13

    sub-int v0, p4, p2

    sub-int v1, p5, p3

    mul-int/lit8 v2, v0, 0x3

    mul-int/lit8 v3, v1, 0x4

    if-lt v2, v3, :cond_0

    mul-int/lit8 v2, v1, 0x4

    div-int/lit8 v2, v2, 0x3

    move v3, v1

    goto :goto_0

    :cond_0
    move v2, v0

    mul-int/lit8 v3, v0, 0x3

    div-int/lit8 v3, v3, 0x4

    :goto_0
    int-to-float v4, v2

    const v5, 0x3f666666    # 0.9f

    mul-float/2addr v4, v5

    float-to-int v2, v4

    int-to-float v4, v3

    mul-float/2addr v4, v5

    float-to-int v3, v4

    sub-int v4, v0, v2

    div-int/lit8 v4, v4, 0x2

    sub-int v5, v1, v3

    div-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    :goto_1
    const/16 v7, 0xf

    if-ge v6, v7, :cond_1

    move-object v8, p0

    iget-object v9, v8, Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLayout;->mLineBoxes:[Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;

    aget-object v9, v9, v6

    mul-int v10, v3, v6

    div-int/2addr v10, v7

    add-int/2addr v10, v5

    add-int v11, v4, v2

    add-int/lit8 v12, v6, 0x1

    mul-int/2addr v12, v3

    div-int/2addr v12, v7

    add-int v7, v5, v12

    invoke-virtual {v9, v4, v10, v11, v7}, Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->layout(IIII)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    move-object v8, p0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLayout;->getMeasuredHeight()I

    move-result v1

    mul-int/lit8 v2, v0, 0x3

    mul-int/lit8 v3, v1, 0x4

    if-lt v2, v3, :cond_0

    mul-int/lit8 v2, v1, 0x4

    div-int/lit8 v0, v2, 0x3

    goto :goto_0

    :cond_0
    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v1, v2, 0x4

    :goto_0
    int-to-float v2, v0

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v2, v3

    float-to-int v0, v2

    int-to-float v2, v1

    mul-float/2addr v2, v3

    float-to-int v1, v2

    div-int/lit8 v2, v1, 0xf

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/4 v5, 0x0

    :goto_1
    const/16 v6, 0xf

    if-ge v5, v6, :cond_1

    iget-object v6, p0, Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLayout;->mLineBoxes:[Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;

    aget-object v6, v6, v5

    invoke-virtual {v6, v3, v4}, Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->measure(II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLayout;->mLineBoxes:[Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setFontScale(F)V
    .locals 0

    return-void
.end method
