.class public final enum Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;
.super Ljava/lang/Enum;
.source "SecExternalDisplayOrientation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SecExternalDisplayOrientation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EDS_CameraStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

.field public static final enum START:Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

.field public static final enum STOP:Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->START:Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    new-instance v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    const-string v1, "STOP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->STOP:Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    sget-object v1, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->START:Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->STOP:Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->$VALUES:[Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

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

    iput p3, p0, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->value:I

    return-void
.end method

.method public static toStatus(I)Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->values()[Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->getValue()I

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;
    .locals 1

    const-class v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;
    .locals 1

    sget-object v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->$VALUES:[Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    invoke-virtual {v0}, [Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->value:I

    return v0
.end method
