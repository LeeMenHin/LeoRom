.class Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$1;
.super Landroid/database/ContentObserver;
.source "BrightnessSeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->access$002(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;I)I

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "brightness_pms_marker_screen"

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->access$102(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;I)I

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "high_brightness_mode_pms_enter"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    nop

    :cond_0
    invoke-static {v0, v3}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->access$202(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;Z)Z

    const-string v0, "BrightnessSeekBarPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPMSBrightnessMarkerObserver mPmsBrightness : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-static {v2}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->access$100(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mAutomaticMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-static {v2}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->access$300(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->access$300(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->onBrightnessChanged()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->access$400(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->access$200(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->access$300(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->access$200(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->access$100(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->access$400(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    return-void
.end method
