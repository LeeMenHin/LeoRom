.class public Lcom/android/settings/applications/manageapplications/MusicViewHolderController;
.super Ljava/lang/Object;
.source "MusicViewHolderController.java"

# interfaces
.implements Lcom/android/settings/applications/manageapplications/FileViewHolderController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMusicSize:J

.field private mSource:Lcom/android/settingslib/applications/StorageStatsSource;

.field private mUser:Landroid/os/UserHandle;

.field private mVolumeUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/StorageStatsSource;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/MusicViewHolderController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/applications/manageapplications/MusicViewHolderController;->mSource:Lcom/android/settingslib/applications/StorageStatsSource;

    iput-object p3, p0, Lcom/android/settings/applications/manageapplications/MusicViewHolderController;->mVolumeUuid:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/applications/manageapplications/MusicViewHolderController;->mUser:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Fragment;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.providers.media.documents"

    const-string v2, "audio_root"

    invoke-static {v1, v2}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "vnd.android.document/root"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER_ID"

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/MusicViewHolderController;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->launchIntent(Landroid/app/Fragment;Landroid/content/Intent;)V

    return-void
.end method

.method public queryStats()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/MusicViewHolderController;->mSource:Lcom/android/settingslib/applications/StorageStatsSource;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/MusicViewHolderController;->mVolumeUuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/MusicViewHolderController;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/applications/StorageStatsSource;->getExternalStorageStats(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->audioBytes:J

    iput-wide v0, p0, Lcom/android/settings/applications/manageapplications/MusicViewHolderController;->mMusicSize:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/settings/applications/manageapplications/MusicViewHolderController;->mMusicSize:J

    const-string v1, "MusicViewHolderCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setupView(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;)V
    .locals 3

    const v0, 0x7f080112

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setIcon(I)V

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/MusicViewHolderController;->mContext:Landroid/content/Context;

    const v1, 0x7f1201b0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/MusicViewHolderController;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/settings/applications/manageapplications/MusicViewHolderController;->mMusicSize:J

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/applications/AppFileSizeFormatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public shouldShow()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
