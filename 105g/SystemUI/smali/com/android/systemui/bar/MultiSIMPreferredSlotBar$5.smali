.class Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$5;
.super Landroid/database/ContentObserver;
.source "MultiSIMPreferredSlotBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$5;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$5;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$5;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$100(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "prefered_voice_call"

    const/4 v3, 0x1

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$2702(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;I)I

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$5;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    iget-object v1, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$5;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$100(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/util/MultiSimMgrUtils;->getCurrentVoiceCall(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$002(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;I)I

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$5;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$200(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$5;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$200(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->access$300(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;)V

    :cond_0
    const-string v0, "MultiSIMPreferredSlotBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreferedVoiceObserver onChange():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar$5;->this$0:Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;

    invoke-static {v2}, Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;->access$2700(Lcom/android/systemui/bar/MultiSIMPreferredSlotBar;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
