.class final enum Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;
.super Ljava/lang/Enum;
.source "SecExternalDisplayIntents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SecExternalDisplayIntents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EDSRecievedIntent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_AlarmStart:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_AlarmStart2:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_AlarmStart3:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_AlarmStop:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_AlarmStop2:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_AlarmStop3:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_CameraNothing:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_CameraStart:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_CameraStop:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_ENTER_KNOX_DESKTOP_MODE:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_EXIT_KNOX_DESKTOP_MODE:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_HDMI:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_KddiAuShareLinkConnect:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_KddiAuShareLinkDisconnect:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_PresentationStart:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_PresentationStop:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_RVF:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_ScreenLocked:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_ScreenRecorder:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_ScreenRecorder2:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_ScreenUnlocked:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_SideSync:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_SideSyncDC:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_SmartDock:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_VideoStart:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_VideoStop:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_WFD:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_HDMI"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_HDMI:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_CameraStart"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_CameraStart:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_CameraNothing"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_CameraNothing:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_CameraStop"

    const/4 v5, 0x4

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_CameraStop:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_RVF"

    const/4 v6, 0x5

    invoke-direct {v0, v1, v5, v6}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_RVF:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_WFD"

    const/4 v7, 0x6

    invoke-direct {v0, v1, v6, v7}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_WFD:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_AlarmStart"

    const/4 v8, 0x7

    invoke-direct {v0, v1, v7, v8}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_AlarmStart:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_AlarmStart2"

    const/16 v9, 0x8

    invoke-direct {v0, v1, v8, v9}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_AlarmStart2:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_AlarmStart3"

    const/16 v10, 0x9

    invoke-direct {v0, v1, v9, v10}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_AlarmStart3:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_AlarmStop"

    const/16 v11, 0xa

    invoke-direct {v0, v1, v10, v11}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_AlarmStop:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_AlarmStop2"

    const/16 v12, 0xb

    invoke-direct {v0, v1, v11, v12}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_AlarmStop2:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_AlarmStop3"

    const/16 v13, 0xc

    invoke-direct {v0, v1, v12, v13}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_AlarmStop3:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_SideSync"

    const/16 v14, 0xd

    invoke-direct {v0, v1, v13, v14}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_SideSync:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_SideSyncDC"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v14, v15}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_SideSyncDC:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_ScreenRecorder"

    const/16 v14, 0xf

    invoke-direct {v0, v1, v15, v14}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_ScreenRecorder:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_ScreenRecorder2"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v14, v15}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_ScreenRecorder2:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_SmartDock"

    const/16 v14, 0x11

    invoke-direct {v0, v1, v15, v14}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_SmartDock:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_ScreenLocked"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v14, v15}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_ScreenLocked:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_ScreenUnlocked"

    const/16 v14, 0x12

    const/16 v15, 0x13

    invoke-direct {v0, v1, v14, v15}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_ScreenUnlocked:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_VideoStart"

    const/16 v14, 0x13

    const/16 v15, 0x14

    invoke-direct {v0, v1, v14, v15}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_VideoStart:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_VideoStop"

    const/16 v14, 0x14

    const/16 v15, 0x15

    invoke-direct {v0, v1, v14, v15}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_VideoStop:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_KddiAuShareLinkConnect"

    const/16 v14, 0x15

    const/16 v15, 0x16

    invoke-direct {v0, v1, v14, v15}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_KddiAuShareLinkConnect:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_KddiAuShareLinkDisconnect"

    const/16 v14, 0x16

    const/16 v15, 0x17

    invoke-direct {v0, v1, v14, v15}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_KddiAuShareLinkDisconnect:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_PresentationStart"

    const/16 v14, 0x17

    const/16 v15, 0x18

    invoke-direct {v0, v1, v14, v15}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_PresentationStart:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_PresentationStop"

    const/16 v14, 0x18

    const/16 v15, 0x19

    invoke-direct {v0, v1, v14, v15}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_PresentationStop:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_ENTER_KNOX_DESKTOP_MODE"

    const/16 v14, 0x19

    const/16 v15, 0x1a

    invoke-direct {v0, v1, v14, v15}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_ENTER_KNOX_DESKTOP_MODE:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_EXIT_KNOX_DESKTOP_MODE"

    const/16 v14, 0x1a

    const/16 v15, 0x1b

    invoke-direct {v0, v1, v14, v15}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_EXIT_KNOX_DESKTOP_MODE:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const/16 v0, 0x1b

    new-array v0, v0, [Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_HDMI:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const/4 v14, 0x0

    aput-object v1, v0, v14

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_CameraStart:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_CameraNothing:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_CameraStop:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_RVF:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_WFD:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_AlarmStart:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_AlarmStart2:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_AlarmStart3:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_AlarmStop:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_AlarmStop2:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_AlarmStop3:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_SideSync:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    aput-object v1, v0, v13

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_SideSyncDC:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_ScreenRecorder:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_ScreenRecorder2:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_SmartDock:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_ScreenLocked:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_ScreenUnlocked:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_VideoStart:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_VideoStop:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_KddiAuShareLinkConnect:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_KddiAuShareLinkDisconnect:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_PresentationStart:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_PresentationStop:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_ENTER_KNOX_DESKTOP_MODE:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_EXIT_KNOX_DESKTOP_MODE:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->$VALUES:[Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->value:I

    return-void
.end method

.method public static toStatus(I)Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->values()[Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->getValue()I

    move-result v5

    if-ne v5, p0, :cond_0

    move-object v0, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;
    .locals 1

    const-class v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    return-object v0
.end method

.method public static values()[Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;
    .locals 1

    sget-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->$VALUES:[Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v0}, [Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->value:I

    return v0
.end method
