.class public abstract Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;
.super Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;
.source "BaseTimeZoneInfoPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;,
        Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$ZoneAdapter;
    }
.end annotation


# instance fields
.field protected mAdapter:Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$ZoneAdapter;


# direct methods
.method protected constructor <init>(IIZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;-><init>(IIZZ)V

    return-void
.end method

.method public static synthetic lambda$rmIiAzryW5v4Oz5tFaKKhXINMbA(Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;->onListItemClick(Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;)V

    return-void
.end method

.method private onListItemClick(Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;)V
    .locals 4

    invoke-static {p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->access$000(Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;)Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;->prepareResultData(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v1, v3, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Lcom/android/settings/datetime/timezone/model/TimeZoneData;)Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;
    .locals 7

    new-instance v6, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$ZoneAdapter;

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;->getAllTimeZoneInfos(Lcom/android/settings/datetime/timezone/model/TimeZoneData;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/android/settings/datetime/timezone/-$$Lambda$BaseTimeZoneInfoPicker$rmIiAzryW5v4Oz5tFaKKhXINMbA;

    invoke-direct {v3, p0}, Lcom/android/settings/datetime/timezone/-$$Lambda$BaseTimeZoneInfoPicker$rmIiAzryW5v4Oz5tFaKKhXINMbA;-><init>(Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;)V

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;->getHeaderText()Ljava/lang/CharSequence;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$ZoneAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener;Ljava/util/Locale;Ljava/lang/CharSequence;)V

    iput-object v6, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;->mAdapter:Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$ZoneAdapter;

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;->mAdapter:Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$ZoneAdapter;

    return-object v0
.end method

.method public abstract getAllTimeZoneInfos(Lcom/android/settings/datetime/timezone/model/TimeZoneData;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/datetime/timezone/model/TimeZoneData;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/datetime/timezone/TimeZoneInfo;",
            ">;"
        }
    .end annotation
.end method

.method protected getHeaderText()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected prepareResultData(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings.datetime.timezone.result_time_zone_id"

    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
