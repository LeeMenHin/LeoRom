.class Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;
.super Ljava/lang/Object;
.source "ChooseLockDirection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->attachListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->access$600(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->access$600(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->access$1000(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/Button;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->access$900(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->access$700(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    if-ne v0, v3, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getMinimumSupportedPassLength()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->access$1100(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1204bc

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->access$1100(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1204bb

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->access$1200(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->access$1100(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->access$1100(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f12072e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->access$1100(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12071e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->access$1200(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->access$1100(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->access$1100(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f12072d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->access$1100(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->access$1100(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1204c6

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v6}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f120734

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->access$1300(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->access$700(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->access$3200(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->access$3300(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "ChooseLockDirection"

    const-string v1, "Setting with help image when reset is clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->access$3200(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->access$3300(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->access$3200(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->access$3400(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->access$600(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->invalidate()V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->access$600(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    :cond_5
    :goto_2
    return-void
.end method
