.class Lcom/android/systemui/bar/BrightnessBar$1;
.super Ljava/lang/Object;
.source "BrightnessBar.java"

# interfaces
.implements Lcom/android/systemui/qs/QSBackupRestoreManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/bar/BrightnessBar;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bar/BrightnessBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/bar/BrightnessBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bar/BrightnessBar$1;->this$0:Lcom/android/systemui/bar/BrightnessBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isValidDB()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar$1;->this$0:Lcom/android/systemui/bar/BrightnessBar;

    invoke-virtual {v0}, Lcom/android/systemui/bar/BrightnessBar;->isValidData()Z

    move-result v0

    return v0
.end method

.method public onBackup(Z)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar$1;->this$0:Lcom/android/systemui/bar/BrightnessBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/bar/BrightnessBar;->getBackupData(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onRestore(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar$1;->this$0:Lcom/android/systemui/bar/BrightnessBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/bar/BrightnessBar;->setRestoreData(Ljava/lang/String;)V

    return-void
.end method
