.class public Lcom/caverock/androidsvg/PreserveAspectRatio;
.super Ljava/lang/Object;
.source "PreserveAspectRatio.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;,
        Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;
    }
.end annotation


# static fields
.field public static final BOTTOM:Lcom/caverock/androidsvg/PreserveAspectRatio;

.field public static final END:Lcom/caverock/androidsvg/PreserveAspectRatio;

.field public static final FULLSCREEN:Lcom/caverock/androidsvg/PreserveAspectRatio;

.field public static final FULLSCREEN_START:Lcom/caverock/androidsvg/PreserveAspectRatio;

.field public static final LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

.field public static final START:Lcom/caverock/androidsvg/PreserveAspectRatio;

.field public static final STRETCH:Lcom/caverock/androidsvg/PreserveAspectRatio;

.field public static final TOP:Lcom/caverock/androidsvg/PreserveAspectRatio;

.field public static final UNSCALED:Lcom/caverock/androidsvg/PreserveAspectRatio;


# instance fields
.field private alignment:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

.field private scale:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/caverock/androidsvg/PreserveAspectRatio;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/caverock/androidsvg/PreserveAspectRatio;-><init>(Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;)V

    sput-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->UNSCALED:Lcom/caverock/androidsvg/PreserveAspectRatio;

    new-instance v0, Lcom/caverock/androidsvg/PreserveAspectRatio;

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->None:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-direct {v0, v2, v1}, Lcom/caverock/androidsvg/PreserveAspectRatio;-><init>(Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;)V

    sput-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->STRETCH:Lcom/caverock/androidsvg/PreserveAspectRatio;

    new-instance v0, Lcom/caverock/androidsvg/PreserveAspectRatio;

    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMidYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->Meet:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/PreserveAspectRatio;-><init>(Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;)V

    sput-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    new-instance v0, Lcom/caverock/androidsvg/PreserveAspectRatio;

    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMinYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->Meet:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/PreserveAspectRatio;-><init>(Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;)V

    sput-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->START:Lcom/caverock/androidsvg/PreserveAspectRatio;

    new-instance v0, Lcom/caverock/androidsvg/PreserveAspectRatio;

    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->Meet:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/PreserveAspectRatio;-><init>(Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;)V

    sput-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->END:Lcom/caverock/androidsvg/PreserveAspectRatio;

    new-instance v0, Lcom/caverock/androidsvg/PreserveAspectRatio;

    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMidYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->Meet:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/PreserveAspectRatio;-><init>(Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;)V

    sput-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->TOP:Lcom/caverock/androidsvg/PreserveAspectRatio;

    new-instance v0, Lcom/caverock/androidsvg/PreserveAspectRatio;

    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMidYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->Meet:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/PreserveAspectRatio;-><init>(Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;)V

    sput-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->BOTTOM:Lcom/caverock/androidsvg/PreserveAspectRatio;

    new-instance v0, Lcom/caverock/androidsvg/PreserveAspectRatio;

    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMidYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->Slice:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/PreserveAspectRatio;-><init>(Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;)V

    sput-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->FULLSCREEN:Lcom/caverock/androidsvg/PreserveAspectRatio;

    new-instance v0, Lcom/caverock/androidsvg/PreserveAspectRatio;

    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMinYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->Slice:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/PreserveAspectRatio;-><init>(Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;)V

    sput-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->FULLSCREEN_START:Lcom/caverock/androidsvg/PreserveAspectRatio;

    return-void
.end method

.method public constructor <init>(Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/caverock/androidsvg/PreserveAspectRatio;->alignment:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    iput-object p2, p0, Lcom/caverock/androidsvg/PreserveAspectRatio;->scale:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/caverock/androidsvg/PreserveAspectRatio;

    iget-object v3, p0, Lcom/caverock/androidsvg/PreserveAspectRatio;->alignment:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    iget-object v4, v2, Lcom/caverock/androidsvg/PreserveAspectRatio;->alignment:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    if-eq v3, v4, :cond_3

    return v1

    :cond_3
    iget-object v3, p0, Lcom/caverock/androidsvg/PreserveAspectRatio;->scale:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    iget-object v4, v2, Lcom/caverock/androidsvg/PreserveAspectRatio;->scale:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    if-eq v3, v4, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getAlignment()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;
    .locals 1

    iget-object v0, p0, Lcom/caverock/androidsvg/PreserveAspectRatio;->alignment:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    return-object v0
.end method

.method public getScale()Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;
    .locals 1

    iget-object v0, p0, Lcom/caverock/androidsvg/PreserveAspectRatio;->scale:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    return-object v0
.end method
