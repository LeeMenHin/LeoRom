.class synthetic Lcom/samsung/android/settings/guide/GuideFragment$1;
.super Ljava/lang/Object;
.source "GuideFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/guide/GuideFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$android$settings$guide$GuideFragment$GuideModes:[I

.field static final synthetic $SwitchMap$com$samsung$android$settings$guide$GuideFragment$SettingsHeader:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;->values()[Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/settings/guide/GuideFragment$1;->$SwitchMap$com$samsung$android$settings$guide$GuideFragment$SettingsHeader:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/guide/GuideFragment$1;->$SwitchMap$com$samsung$android$settings$guide$GuideFragment$SettingsHeader:[I

    sget-object v2, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;->WIFI:Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    invoke-virtual {v2}, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/samsung/android/settings/guide/GuideFragment$1;->$SwitchMap$com$samsung$android$settings$guide$GuideFragment$SettingsHeader:[I

    sget-object v3, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;->BLUETOOTH:Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    invoke-virtual {v3}, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    invoke-static {}, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;->values()[Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/samsung/android/settings/guide/GuideFragment$1;->$SwitchMap$com$samsung$android$settings$guide$GuideFragment$GuideModes:[I

    :try_start_2
    sget-object v2, Lcom/samsung/android/settings/guide/GuideFragment$1;->$SwitchMap$com$samsung$android$settings$guide$GuideFragment$GuideModes:[I

    sget-object v3, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;->BLUETOOTH:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    invoke-virtual {v3}, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    sget-object v0, Lcom/samsung/android/settings/guide/GuideFragment$1;->$SwitchMap$com$samsung$android$settings$guide$GuideFragment$GuideModes:[I

    sget-object v2, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;->BLUETOOTH_SETTING:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    invoke-virtual {v2}, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    :try_start_4
    sget-object v0, Lcom/samsung/android/settings/guide/GuideFragment$1;->$SwitchMap$com$samsung$android$settings$guide$GuideFragment$GuideModes:[I

    sget-object v1, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;->WIFI:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    :try_start_5
    sget-object v0, Lcom/samsung/android/settings/guide/GuideFragment$1;->$SwitchMap$com$samsung$android$settings$guide$GuideFragment$GuideModes:[I

    sget-object v1, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;->WIFI_SETTINGS:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    :goto_5
    return-void
.end method
