.class public Lcom/android/systemui/servicebox/pages/calendar/CalendarTask;
.super Lcom/android/systemui/servicebox/pages/calendar/CalendarData;
.source "CalendarTask.java"


# static fields
.field public static final TABLE_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "_id"

    const-string/jumbo v1, "subject"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/servicebox/pages/calendar/CalendarTask;->TABLE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;-><init>(Landroid/database/Cursor;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;-><init>(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copyFrom(Landroid/database/Cursor;)Lcom/android/systemui/servicebox/pages/calendar/CalendarData;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarTask;->copyFrom(Landroid/database/Cursor;)Lcom/android/systemui/servicebox/pages/calendar/CalendarTask;

    move-result-object p1

    return-object p1
.end method

.method public copyFrom(Landroid/database/Cursor;)Lcom/android/systemui/servicebox/pages/calendar/CalendarTask;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarTask;->id:J

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarTask;->title:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarTask;->isAllDay:Z

    return-object p0
.end method

.method protected getCalendarActivityLaunchOptions()Landroid/os/Bundle;
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "task"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "selected"

    iget-wide v3, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarTask;->id:J

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "action_view_focus"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "launch_from_inside"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "DetailMode"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getFormattedStartEndTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120b89

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedStartTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120b89

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
