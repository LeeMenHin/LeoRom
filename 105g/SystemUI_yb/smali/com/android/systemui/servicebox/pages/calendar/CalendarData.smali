.class public Lcom/android/systemui/servicebox/pages/calendar/CalendarData;
.super Ljava/lang/Object;
.source "CalendarData.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Lcom/android/systemui/servicebox/pages/calendar/CalendarData;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/systemui/servicebox/pages/calendar/CalendarData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public endTime:J

.field public id:J

.field public isAllDay:Z

.field public startTime:J

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData$1;

    invoke-direct {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarData$1;-><init>()V

    sput-object v0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->id:J

    const-string v2, ""

    iput-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->title:Ljava/lang/String;

    iput-wide v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->startTime:J

    iput-wide v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->endTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->isAllDay:Z

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->id:J

    const-string v2, ""

    iput-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->title:Ljava/lang/String;

    iput-wide v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->startTime:J

    iput-wide v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->endTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->isAllDay:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->copyFrom(Landroid/database/Cursor;)Lcom/android/systemui/servicebox/pages/calendar/CalendarData;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->id:J

    const-string v2, ""

    iput-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->title:Ljava/lang/String;

    iput-wide v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->startTime:J

    iput-wide v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->endTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->isAllDay:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->copyFrom(Landroid/os/Bundle;)Lcom/android/systemui/servicebox/pages/calendar/CalendarData;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->id:J

    const-string v2, ""

    iput-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->title:Ljava/lang/String;

    iput-wide v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->startTime:J

    iput-wide v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->endTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->isAllDay:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private compareString(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    if-nez p2, :cond_1

    return v0

    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public compareTo(Lcom/android/systemui/servicebox/pages/calendar/CalendarData;)I
    .locals 7

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->isAllDay:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p1, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->isAllDay:Z

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->isAllDay:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2

    iget-boolean v1, p1, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->isAllDay:Z

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->isAllDay:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->isAllDay:Z

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->title:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->title:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->compareString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_3
    iget-wide v3, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->startTime:J

    iget-wide v5, p1, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->startTime:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_4

    return v0

    :cond_4
    iget-wide v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->startTime:J

    iget-wide v3, p1, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->startTime:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_5

    return v2

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->title:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->title:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->compareString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;

    invoke-virtual {p0, p1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->compareTo(Lcom/android/systemui/servicebox/pages/calendar/CalendarData;)I

    move-result p1

    return p1
.end method

.method public copyFrom(Landroid/database/Cursor;)Lcom/android/systemui/servicebox/pages/calendar/CalendarData;
    .locals 0

    return-object p0
.end method

.method public copyFrom(Landroid/os/Bundle;)Lcom/android/systemui/servicebox/pages/calendar/CalendarData;
    .locals 5

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const-string v0, "id"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->id:J

    const-string/jumbo v0, "title"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->title:Ljava/lang/String;

    const-string/jumbo v0, "start_time"

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->startTime:J

    const-string v0, "end_time"

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->endTime:J

    const-string v0, "is_all_day"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->isAllDay:Z

    return-object p0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCalendarActivityIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->id:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->getCalendarActivityLaunchOptions()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v1
.end method

.method protected getCalendarActivityLaunchOptions()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormattedStartEndTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120b8a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedStartTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120b8a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120b86

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->id:J

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->title:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->startTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->endTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->isAllDay:Z

    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "id"

    iget-wide v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "start_time"

    iget-wide v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->startTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "end_time"

    iget-wide v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->endTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "is_all_day"

    iget-boolean v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->isAllDay:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy MMMM d (EEEE) HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[start time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->startTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[end time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->endTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[is all day = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->isAllDay:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, "[title = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->title:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-wide v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->startTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->endTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->isAllDay:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
