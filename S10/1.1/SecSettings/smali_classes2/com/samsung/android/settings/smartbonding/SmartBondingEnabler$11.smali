.class Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$11;
.super Ljava/lang/Object;
.source "SmartBondingEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->showNotificationDialog()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$11;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$11;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->access$000(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_bonding"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    move v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$11;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->access$200(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$11;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->access$200(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$11;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->access$300(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)Landroid/support/v7/preference/SwitchPreferenceCompat;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$11;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->access$300(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)Landroid/support/v7/preference/SwitchPreferenceCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    :cond_2
    return-void
.end method
