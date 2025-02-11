.class public Lcom/android/systemui/FontSizeUtils;
.super Ljava/lang/Object;
.source "FontSizeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateFontSize(Landroid/view/View;II)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, p2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    return-void
.end method

.method public static updateFontSize(Landroid/widget/TextView;I)V
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method public static updateFontSize(Landroid/widget/TextView;IFF)V
    .locals 8

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v1, p2, p3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v2, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    invoke-virtual {v2}, Landroid/util/TypedValue;->getComplexUnit()I

    move-result v6

    const/4 v7, 0x0

    if-ne v6, v4, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    invoke-virtual {p0, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/util/TypedValue;->getComplexUnit()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v0

    mul-float/2addr v4, v1

    invoke-virtual {p0, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    :goto_0
    return-void
.end method
