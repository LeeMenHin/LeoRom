.class final enum Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;
.super Ljava/lang/Enum;
.source "SecExternalDisplayOrientation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SecExternalDisplayOrientation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EDS_Transform"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

.field public static final enum BufMirrorMode_Start:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

.field public static final enum BufMirrorMode_Stop:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

.field public static final enum Inverse_Landscape:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

.field public static final enum Inverse_Potrait:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

.field public static final enum Landscape:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

.field public static final enum Potrait:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    const-string v1, "Potrait"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Potrait:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    new-instance v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    const-string v1, "Landscape"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Landscape:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    new-instance v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    const-string v1, "Inverse_Potrait"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Inverse_Potrait:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    new-instance v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    const-string v1, "Inverse_Landscape"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Inverse_Landscape:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    new-instance v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    const-string v1, "BufMirrorMode_Start"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->BufMirrorMode_Start:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    new-instance v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    const-string v1, "BufMirrorMode_Stop"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->BufMirrorMode_Stop:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    sget-object v1, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Potrait:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Landscape:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Inverse_Potrait:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Inverse_Landscape:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->BufMirrorMode_Start:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->BufMirrorMode_Stop:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->$VALUES:[Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

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

    iput p3, p0, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;
    .locals 1

    const-class v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    return-object v0
.end method

.method public static values()[Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;
    .locals 1

    sget-object v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->$VALUES:[Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v0}, [Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    return-object v0
.end method
