.class final enum Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;
.super Ljava/lang/Enum;
.source "SelfMotionPanoramaConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SelfMotionPanoramaConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ENCODER"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;

.field public static final enum ANDROID_ENCODER:Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;

.field public static final enum MP4_CONVERTER:Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;

.field public static final enum NATIVE:Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;

    const-string v1, "NATIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;->NATIVE:Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;

    new-instance v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;

    const-string v1, "MP4_CONVERTER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;->MP4_CONVERTER:Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;

    new-instance v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;

    const-string v1, "ANDROID_ENCODER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;->ANDROID_ENCODER:Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;

    sget-object v1, Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;->NATIVE:Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;->MP4_CONVERTER:Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;->ANDROID_ENCODER:Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;->$VALUES:[Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;
    .locals 1

    const-class v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;
    .locals 1

    sget-object v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;->$VALUES:[Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;

    invoke-virtual {v0}, [Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;

    return-object v0
.end method
