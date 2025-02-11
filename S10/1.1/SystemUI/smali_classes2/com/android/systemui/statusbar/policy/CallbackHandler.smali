.class public Lcom/android/systemui/statusbar/policy/CallbackHandler;
.super Landroid/os/Handler;
.source "CallbackHandler.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$OperatorLogoIconListener;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;


# instance fields
.field private final mEmergencyListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOperatorLogoIconListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$OperatorLogoIconListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSignalCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mEmergencyListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mOperatorLogoIconListeners:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mEmergencyListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mOperatorLogoIconListeners:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/CallbackHandler;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic lambda$setOperatorLogoIconVisible$0(Lcom/android/systemui/statusbar/policy/CallbackHandler;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mOperatorLogoIconListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkController$OperatorLogoIconListener;

    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/policy/NetworkController$OperatorLogoIconListener;->setOperatorLogoIconVisible(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mOperatorLogoIconListeners:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkController$OperatorLogoIconListener;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mOperatorLogoIconListeners:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkController$OperatorLogoIconListener;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_a

    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_a

    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mEmergencyListeners:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mEmergencyListeners:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_a

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_1
    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setMobileDataEnabled(Z)V

    goto :goto_0

    :cond_4
    goto/16 :goto_a

    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V

    goto :goto_2

    :cond_5
    goto/16 :goto_a

    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setEthernetIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V

    goto :goto_3

    :cond_6
    goto/16 :goto_a

    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_7

    move v4, v2

    goto :goto_5

    :cond_7
    move v4, v1

    :goto_5
    iget v5, p1, Landroid/os/Message;->arg2:I

    if-eqz v5, :cond_8

    move v5, v2

    goto :goto_6

    :cond_8
    move v5, v1

    :goto_6
    invoke-interface {v3, v4, v5}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setNoSims(ZZ)V

    goto :goto_4

    :cond_9
    goto :goto_a

    :pswitch_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setSubs(Ljava/util/List;)V

    goto :goto_7

    :cond_a
    goto :goto_a

    :pswitch_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mEmergencyListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_b

    move v4, v2

    goto :goto_9

    :cond_b
    move v4, v1

    :goto_9
    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;->setEmergencyCallsOnly(Z)V

    goto :goto_8

    :cond_c
    nop

    :goto_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBtTetherIndicators(ZI)V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/policy/CallbackHandler$6;-><init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;ZI)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setEmergencyCallsOnly(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setEthernetIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setEthernetIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;I)V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/policy/CallbackHandler$8;-><init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setImsIcon(Landroid/graphics/drawable/Drawable;IZLjava/lang/CharSequence;)V
    .locals 7

    new-instance v6, Lcom/android/systemui/statusbar/policy/CallbackHandler$9;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/CallbackHandler$9;-><init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;Landroid/graphics/drawable/Drawable;IZLjava/lang/CharSequence;)V

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setListening(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-virtual {p0, v1, p2, v0, p1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setListening(Lcom/android/systemui/statusbar/policy/NetworkController$OperatorLogoIconListener;Z)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-virtual {p0, v1, p2, v0, p1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setListening(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-virtual {p0, v1, p2, v0, p1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setMPTCPIndicators(ZIII)V
    .locals 7

    new-instance v6, Lcom/android/systemui/statusbar/policy/CallbackHandler$7;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/CallbackHandler$7;-><init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;ZIII)V

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZIILjava/lang/String;Ljava/lang/String;ZIZ)V
    .locals 16

    new-instance v15, Lcom/android/systemui/statusbar/policy/CallbackHandler$4;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/policy/CallbackHandler$4;-><init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZIILjava/lang/String;Ljava/lang/String;ZIZ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZLjava/lang/String;Ljava/lang/String;ZIZ)V
    .locals 14

    new-instance v13, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;-><init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZLjava/lang/String;Ljava/lang/String;ZIZ)V

    move-object v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setNWBoosterIndicators(ZZIII)V
    .locals 8

    new-instance v7, Lcom/android/systemui/statusbar/policy/CallbackHandler$5;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/CallbackHandler$5;-><init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;ZZIII)V

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setNoSims(ZZ)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setOperatorLogoIconVisible(Z)V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$UIO76HDFQoBQxqYD8sJNTqg-wDs;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/-$$Lambda$CallbackHandler$UIO76HDFQoBQxqYD8sJNTqg-wDs;-><init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setSubs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZILjava/lang/String;ZLjava/lang/String;)V
    .locals 12

    new-instance v11, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;

    move-object v0, v11

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;-><init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZILjava/lang/String;ZLjava/lang/String;)V

    move-object v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;ZLjava/lang/String;)V
    .locals 11

    new-instance v10, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;-><init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;ZLjava/lang/String;)V

    move-object v0, p0

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
