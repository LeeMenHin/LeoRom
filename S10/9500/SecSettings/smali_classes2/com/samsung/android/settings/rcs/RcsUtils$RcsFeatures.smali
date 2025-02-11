.class public Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;
.super Ljava/lang/Object;
.source "RcsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/rcs/RcsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RcsFeatures"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;
    }
.end annotation


# instance fields
.field private mIsLoaded:Z

.field private mRcsFeatures:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;",
            ">;"
        }
    .end annotation
.end field

.field private mapRcsFeature:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->mapRcsFeature:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->mIsLoaded:Z

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->mapRcsFeature:Ljava/util/HashMap;

    const-string v1, "PARTIAL_BRANDED"

    sget-object v2, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;->RCS_BB_PARTIAL_BRANDED:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->mapRcsFeature:Ljava/util/HashMap;

    const-string v1, "FULL_BRANDED"

    sget-object v2, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;->RCS_BB_FULL_BRANDED:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->mapRcsFeature:Ljava/util/HashMap;

    const-string v1, "RCS_UI_FOR_OPEN"

    sget-object v2, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;->RCS_EXTRAS_RCS_UI_FOR_OPEN:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->mapRcsFeature:Ljava/util/HashMap;

    const-string v1, "RCS_CPR"

    sget-object v2, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;->RCS_CPR:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->loadRcsFeatures(Z)V

    return-void
.end method

.method private loadRcsFeatures(Z)V
    .locals 7

    iget-boolean v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->mIsLoaded:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/rcs/RcsUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loadRcsFeatures: already loaded"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;->UNKNOWN:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->mRcsFeatures:Ljava/util/EnumSet;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_ConfigRcsFeatures"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/rcs/RcsUtils;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "loadRcsFeatures: there is no RCS config feature"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->mRcsFeatures:Ljava/util/EnumSet;

    invoke-virtual {v1}, Ljava/util/EnumSet;->clear()V

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->mRcsFeatures:Ljava/util/EnumSet;

    sget-object v2, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;->RCSE:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    const-string v1, "\\|"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    const-string v5, "PARTIAL_BRANDED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "FULL_BRANDED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->mRcsFeatures:Ljava/util/EnumSet;

    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;->RCSE:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;

    invoke-virtual {v5, v6}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->mapRcsFeature:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->mRcsFeatures:Ljava/util/EnumSet;

    iget-object v6, p0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->mapRcsFeature:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;

    invoke-virtual {v5, v6}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->mIsLoaded:Z

    return-void
.end method


# virtual methods
.method public isFullBranded()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->mRcsFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;->RCS_BB_FULL_BRANDED:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures$RcsFeature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
