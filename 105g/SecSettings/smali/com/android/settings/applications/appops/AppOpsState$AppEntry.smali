.class public Lcom/android/settings/applications/appops/AppOpsState$AppEntry;
.super Ljava/lang/Object;
.source "AppOpsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/appops/AppOpsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppEntry"
.end annotation


# instance fields
.field private final mApkFile:Ljava/io/File;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private final mInfo:Landroid/content/pm/ApplicationInfo;

.field private mLabel:Ljava/lang/String;

.field private mMounted:Z

.field private final mOpSwitches:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mOps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mState:Lcom/android/settings/applications/appops/AppOpsState;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/appops/AppOpsState;Landroid/content/pm/ApplicationInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mOps:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mOpSwitches:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mState:Lcom/android/settings/applications/appops/AppOpsState;

    iput-object p2, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v0, Ljava/io/File;

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mApkFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public addOp(Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;Landroid/app/AppOpsManager$OpEntry;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mOps:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mOpSwitches:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v1

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mApkFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mState:Lcom/android/settings/applications/appops/AppOpsState;

    iget-object v2, v2, Lcom/android/settings/applications/appops/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2, v1, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mMounted:Z

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mMounted:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mApkFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mMounted:Z

    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mState:Lcom/android/settings/applications/appops/AppOpsState;

    iget-object v2, v2, Lcom/android/settings/applications/appops/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2, v1, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mState:Lcom/android/settings/applications/appops/AppOpsState;

    iget-object v0, v0, Lcom/android/settings/applications/appops/AppOpsState;->mContext:Landroid/content/Context;

    const v1, 0x1080093

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getOpSwitch(I)Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mOpSwitches:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;

    return-object v0
.end method

.method public hasOp(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mOps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method loadLabel(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mMounted:Z

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mApkFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mMounted:Z

    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mLabel:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mMounted:Z

    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_0
    iput-object v1, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mLabel:Ljava/lang/String;

    :cond_3
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->mLabel:Ljava/lang/String;

    return-object v0
.end method
