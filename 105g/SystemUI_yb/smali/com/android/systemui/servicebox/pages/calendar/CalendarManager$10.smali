.class Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$10;
.super Landroid/os/AsyncTask;
.source "CalendarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->loadTodayEvents(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "Lcom/android/systemui/servicebox/pages/calendar/CalendarData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

.field final synthetic val$listener:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;

.field final synthetic val$todayEndTime:J

.field final synthetic val$todayStartTime:J

.field final synthetic val$todayTimezoneEndTime:J

.field final synthetic val$todayTimezoneStartTime:J


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;JJJJLcom/android/systemui/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$10;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    iput-wide p2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$10;->val$todayStartTime:J

    iput-wide p4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$10;->val$todayEndTime:J

    iput-wide p6, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$10;->val$todayTimezoneStartTime:J

    iput-wide p8, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$10;->val$todayTimezoneEndTime:J

    iput-object p10, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$10;->val$listener:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$10;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/servicebox/pages/calendar/CalendarData;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;

    invoke-direct {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$10;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    iget-wide v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$10;->val$todayStartTime:J

    iget-wide v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$10;->val$todayEndTime:J

    iget-wide v6, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$10;->val$todayTimezoneStartTime:J

    iget-wide v8, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$10;->val$todayTimezoneEndTime:J

    invoke-static/range {v1 .. v9}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->access$1300(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;JJJJ)Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;->addAll(Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;)V

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;->getDataList()Ljava/util/ArrayList;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$10;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/servicebox/pages/calendar/CalendarData;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$10;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->access$1400(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$10;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->access$1408(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)I

    const-string v0, "CalendarManager"

    const-string v1, "CalendarProvider isn\'t ready yet. Try to reload after 10000ms."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$10;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->access$400(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$10;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->access$300(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$10;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->access$400(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$10;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->access$300(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-string v0, "CalendarManager"

    const-string v1, "We tried to reload calendar data over 10 times but it was failed. Need to check in system side."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$10;->val$listener:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$10;->val$listener:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;->onCompleted(Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method
