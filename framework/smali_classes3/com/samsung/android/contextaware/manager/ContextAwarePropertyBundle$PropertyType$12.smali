.class final enum Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType$12;
.super Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
.source "ContextAwarePropertyBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;-><init>(Ljava/lang/String;ILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$1;)V

    return-void
.end method


# virtual methods
.method getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()TE;"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->access$1200()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->access$1202([Ljava/lang/String;)[Ljava/lang/String;

    :cond_0
    return-void
.end method
