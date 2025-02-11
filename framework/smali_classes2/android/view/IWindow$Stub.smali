.class public abstract Landroid/view/IWindow$Stub;
.super Landroid/os/Binder;
.source "IWindow.java"

# interfaces
.implements Landroid/view/IWindow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindow$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindow"

.field static final TRANSACTION_closeSystemDialogs:I = 0x7

.field static final TRANSACTION_dispatchAppVisibility:I = 0x4

.field static final TRANSACTION_dispatchCoverStateChanged:I = 0x11

.field static final TRANSACTION_dispatchDragEvent:I = 0xa

.field static final TRANSACTION_dispatchFinishMovingTask:I = 0x12

.field static final TRANSACTION_dispatchGetNewSurface:I = 0x5

.field static final TRANSACTION_dispatchPointerCaptureChanged:I = 0xf

.field static final TRANSACTION_dispatchSmartClipRemoteRequest:I = 0x10

.field static final TRANSACTION_dispatchSystemUiVisibilityChanged:I = 0xc

.field static final TRANSACTION_dispatchWallpaperCommand:I = 0x9

.field static final TRANSACTION_dispatchWallpaperOffsets:I = 0x8

.field static final TRANSACTION_dispatchWindowShown:I = 0xd

.field static final TRANSACTION_executeCommand:I = 0x1

.field static final TRANSACTION_moved:I = 0x3

.field static final TRANSACTION_requestAppKeyboardShortcuts:I = 0xe

.field static final TRANSACTION_resized:I = 0x2

.field static final TRANSACTION_touchFocusTransferred:I = 0x13

.field static final TRANSACTION_updatePointerIcon:I = 0xb

.field static final TRANSACTION_windowFocusChanged:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.view.IWindow"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindow$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.view.IWindow"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IWindow;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/view/IWindow;

    return-object v1

    :cond_1
    new-instance v1, Landroid/view/IWindow$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindow$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v15, p0

    move/from16 v12, p1

    move-object/from16 v14, p2

    const-string v13, "android.view.IWindow"

    const v0, 0x5f4e5446

    const/16 v16, 0x1

    if-eq v12, v0, :cond_18

    const/16 v17, 0x0

    packed-switch v12, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindow$Stub;->touchFocusTransferred()V

    return v16

    :pswitch_1
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindow$Stub;->dispatchFinishMovingTask()V

    return v16

    :pswitch_2
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move/from16 v0, v16

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v15, v0}, Landroid/view/IWindow$Stub;->dispatchCoverStateChanged(Z)V

    return v16

    :pswitch_3
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;

    goto :goto_1

    :cond_1
    nop

    :goto_1
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/IWindow$Stub;->dispatchSmartClipRemoteRequest(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V

    return v16

    :pswitch_4
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move/from16 v0, v16

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v15, v0}, Landroid/view/IWindow$Stub;->dispatchPointerCaptureChanged(Z)V

    return v16

    :pswitch_5
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v15, v0, v1}, Landroid/view/IWindow$Stub;->requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    return v16

    :pswitch_6
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindow$Stub;->dispatchWindowShown()V

    return v16

    :pswitch_7
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/view/IWindow$Stub;->dispatchSystemUiVisibilityChanged(IIII)V

    return v16

    :pswitch_8
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {v15, v0, v1}, Landroid/view/IWindow$Stub;->updatePointerIcon(FF)V

    return v16

    :pswitch_9
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/view/DragEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/DragEvent;

    goto :goto_3

    :cond_3
    nop

    :goto_3
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/IWindow$Stub;->dispatchDragEvent(Landroid/view/DragEvent;)V

    return v16

    :pswitch_a
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    move-object v5, v1

    goto :goto_4

    :cond_4
    move-object/from16 v5, v17

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    move/from16 v6, v16

    goto :goto_5

    :cond_5
    const/4 v6, 0x0

    :goto_5
    move-object v0, v15

    move-object v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-virtual/range {v0 .. v6}, Landroid/view/IWindow$Stub;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    return v16

    :pswitch_b
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    move/from16 v5, v16

    goto :goto_6

    :cond_6
    const/4 v5, 0x0

    :goto_6
    move-object v0, v15

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/view/IWindow$Stub;->dispatchWallpaperOffsets(FFFFZ)V

    return v16

    :pswitch_c
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/view/IWindow$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    return v16

    :pswitch_d
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    move/from16 v1, v16

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    move/from16 v0, v16

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {v15, v1, v0}, Landroid/view/IWindow$Stub;->windowFocusChanged(ZZ)V

    return v16

    :pswitch_e
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindow$Stub;->dispatchGetNewSurface()V

    return v16

    :pswitch_f
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    move/from16 v0, v16

    goto :goto_9

    :cond_9
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v15, v0}, Landroid/view/IWindow$Stub;->dispatchAppVisibility(Z)V

    return v16

    :pswitch_10
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v15, v0, v1}, Landroid/view/IWindow$Stub;->moved(II)V

    return v16

    :pswitch_11
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    goto :goto_a

    :cond_a
    move-object/from16 v1, v17

    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b

    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    goto :goto_b

    :cond_b
    move-object/from16 v2, v17

    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    goto :goto_c

    :cond_c
    move-object/from16 v3, v17

    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    goto :goto_d

    :cond_d
    move-object/from16 v4, v17

    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    goto :goto_e

    :cond_e
    move-object/from16 v5, v17

    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f

    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    goto :goto_f

    :cond_f
    move-object/from16 v6, v17

    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_10

    move/from16 v7, v16

    goto :goto_10

    :cond_10
    const/4 v7, 0x0

    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_11

    sget-object v8, Landroid/util/MergedConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/MergedConfiguration;

    goto :goto_11

    :cond_11
    move-object/from16 v8, v17

    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_12

    sget-object v9, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    goto :goto_12

    :cond_12
    move-object/from16 v9, v17

    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_13

    move/from16 v10, v16

    goto :goto_13

    :cond_13
    const/4 v10, 0x0

    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_14

    move/from16 v11, v16

    goto :goto_14

    :cond_14
    const/4 v11, 0x0

    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_15

    sget-object v0, Landroid/view/DisplayCutout$ParcelableWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/DisplayCutout$ParcelableWrapper;

    goto :goto_15

    :cond_15
    move-object/from16 v0, v17

    :goto_15
    move-object/from16 v21, v13

    move-object v13, v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    move/from16 v20, v16

    goto :goto_16

    :cond_16
    const/16 v20, 0x0

    :goto_16
    move-object v0, v14

    move/from16 v14, v20

    move-object v0, v15

    move/from16 v12, v18

    invoke-virtual/range {v0 .. v14}, Landroid/view/IWindow$Stub;->resized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;Landroid/graphics/Rect;ZZILandroid/view/DisplayCutout$ParcelableWrapper;Z)V

    return v16

    :pswitch_12
    move-object/from16 v21, v13

    move-object/from16 v1, v21

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_17

    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v17, v4

    check-cast v17, Landroid/os/ParcelFileDescriptor;

    goto :goto_17

    :cond_17
    nop

    :goto_17
    move-object/from16 v4, v17

    invoke-virtual {v15, v2, v3, v4}, Landroid/view/IWindow$Stub;->executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    return v16

    :cond_18
    move-object v1, v13

    move-object v0, v14

    move-object/from16 v2, p3

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v16

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
