.class synthetic Lcom/samsung/android/media/InteractivePanoramaConverter$3;
.super Ljava/lang/Object;
.source "InteractivePanoramaConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/InteractivePanoramaConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$android$media$InteractivePanoramaConverter$ENCODER:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/media/InteractivePanoramaConverter$ENCODER;->values()[Lcom/samsung/android/media/InteractivePanoramaConverter$ENCODER;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/media/InteractivePanoramaConverter$3;->$SwitchMap$com$samsung$android$media$InteractivePanoramaConverter$ENCODER:[I

    :try_start_0
    sget-object v0, Lcom/samsung/android/media/InteractivePanoramaConverter$3;->$SwitchMap$com$samsung$android$media$InteractivePanoramaConverter$ENCODER:[I

    sget-object v1, Lcom/samsung/android/media/InteractivePanoramaConverter$ENCODER;->NATIVE:Lcom/samsung/android/media/InteractivePanoramaConverter$ENCODER;

    invoke-virtual {v1}, Lcom/samsung/android/media/InteractivePanoramaConverter$ENCODER;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/media/InteractivePanoramaConverter$3;->$SwitchMap$com$samsung$android$media$InteractivePanoramaConverter$ENCODER:[I

    sget-object v1, Lcom/samsung/android/media/InteractivePanoramaConverter$ENCODER;->MP4_CONVERTER:Lcom/samsung/android/media/InteractivePanoramaConverter$ENCODER;

    invoke-virtual {v1}, Lcom/samsung/android/media/InteractivePanoramaConverter$ENCODER;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lcom/samsung/android/media/InteractivePanoramaConverter$3;->$SwitchMap$com$samsung$android$media$InteractivePanoramaConverter$ENCODER:[I

    sget-object v1, Lcom/samsung/android/media/InteractivePanoramaConverter$ENCODER;->ANDROID_ENCODER:Lcom/samsung/android/media/InteractivePanoramaConverter$ENCODER;

    invoke-virtual {v1}, Lcom/samsung/android/media/InteractivePanoramaConverter$ENCODER;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    return-void
.end method
