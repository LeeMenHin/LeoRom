.class synthetic Lcom/samsung/android/settings/wifi/CharterWifiController$3;
.super Ljava/lang/Object;
.source "CharterWifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/CharterWifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$android$settings$wifi$CharterWifiController$CHA_RESULT:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;->values()[Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/settings/wifi/CharterWifiController$3;->$SwitchMap$com$samsung$android$settings$wifi$CharterWifiController$CHA_RESULT:[I

    :try_start_0
    sget-object v0, Lcom/samsung/android/settings/wifi/CharterWifiController$3;->$SwitchMap$com$samsung$android$settings$wifi$CharterWifiController$CHA_RESULT:[I

    sget-object v1, Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;->STOPPED:Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;->ordinal()I

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
    sget-object v0, Lcom/samsung/android/settings/wifi/CharterWifiController$3;->$SwitchMap$com$samsung$android$settings$wifi$CharterWifiController$CHA_RESULT:[I

    sget-object v1, Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;->STARTED:Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;->ordinal()I

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
    sget-object v0, Lcom/samsung/android/settings/wifi/CharterWifiController$3;->$SwitchMap$com$samsung$android$settings$wifi$CharterWifiController$CHA_RESULT:[I

    sget-object v1, Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;->SERVICE_ERROR:Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;->ordinal()I

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
