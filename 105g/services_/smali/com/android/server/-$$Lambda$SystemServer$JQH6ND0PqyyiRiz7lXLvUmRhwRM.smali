.class public final synthetic Lcom/android/server/-$$Lambda$SystemServer$JQH6ND0PqyyiRiz7lXLvUmRhwRM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$JQH6ND0PqyyiRiz7lXLvUmRhwRM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/-$$Lambda$SystemServer$JQH6ND0PqyyiRiz7lXLvUmRhwRM;

    invoke-direct {v0}, Lcom/android/server/-$$Lambda$SystemServer$JQH6ND0PqyyiRiz7lXLvUmRhwRM;-><init>()V

    sput-object v0, Lcom/android/server/-$$Lambda$SystemServer$JQH6ND0PqyyiRiz7lXLvUmRhwRM;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$JQH6ND0PqyyiRiz7lXLvUmRhwRM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/android/server/SystemServer;->lambda$startOtherServices$3()V

    return-void
.end method
