.class public Lcom/android/settings/applications/assist/DefaultAssistPicker;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;
.source "DefaultAssistPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;,
        Lcom/android/settings/applications/assist/DefaultAssistPicker$AssistConfirmationDialogFragment;
    }
.end annotation


# static fields
.field private static final ASSIST_ACTIVITY_PROBE:Landroid/content/Intent;

.field private static final ASSIST_SERVICE_PROBE:Landroid/content/Intent;


# instance fields
.field private mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field private final mAvailableAssistants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.voice.VoiceInteractionService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/applications/assist/DefaultAssistPicker;->ASSIST_SERVICE_PROBE:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/applications/assist/DefaultAssistPicker;->ASSIST_ACTIVITY_PROBE:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/assist/DefaultAssistPicker;->mAvailableAssistants:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/assist/DefaultAssistPicker;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->onRadioButtonConfirmed(Ljava/lang/String;)V

    return-void
.end method

.method private addAssistActivities()V
    .locals 9

    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultAssistPicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {v0}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/android/settings/applications/assist/DefaultAssistPicker;->ASSIST_ACTIVITY_PROBE:Landroid/content/Intent;

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Lcom/android/settings/applications/assist/DefaultAssistPicker;->mAvailableAssistants:Ljava/util/List;

    new-instance v5, Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;

    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addAssistServices()V
    .locals 10

    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultAssistPicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {v0}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/android/settings/applications/assist/DefaultAssistPicker;->ASSIST_SERVICE_PROBE:Landroid/content/Intent;

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    new-instance v4, Landroid/service/voice/VoiceInteractionServiceInfo;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {v4, v0, v5}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V

    invoke-virtual {v4}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSupportsAssist()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/settings/applications/assist/DefaultAssistPicker;->mAvailableAssistants:Ljava/util/List;

    new-instance v6, Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;

    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v7, v4}, Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;-><init>(Landroid/content/ComponentName;Landroid/service/voice/VoiceInteractionServiceInfo;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private findAssistantByPackageName(Ljava/lang/String;)Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultAssistPicker;->mAvailableAssistants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;

    iget-object v2, v1, Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;->component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getDefaultRecognizer()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultAssistPicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {v0}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.RecognitionService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    :goto_0
    const-string v1, "DefaultAssistPicker"

    const-string v2, "Unable to resolve default voice recognition service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ""

    return-object v1
.end method

.method private setAssistActivity(Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assistant"

    iget-object v2, p1, Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;->component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "voice_interaction_service"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "voice_recognition_service"

    invoke-direct {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getDefaultRecognizer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private setAssistNone()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assistant"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "voice_interaction_service"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "voice_recognition_service"

    invoke-direct {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getDefaultRecognizer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private setAssistService(Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;)V
    .locals 4

    iget-object v0, p1, Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;->component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;->voiceInteractionServiceInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v3}, Landroid/service/voice/VoiceInteractionServiceInfo;->getRecognitionService()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "assistant"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "voice_interaction_service"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "voice_recognition_service"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method protected getCandidates()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/DefaultAppInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultAssistPicker;->mAvailableAssistants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->addAssistServices()V

    invoke-direct {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->addAssistActivities()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/settings/applications/assist/DefaultAssistPicker;->mAvailableAssistants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;

    iget-object v4, v3, Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;->component:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/android/settingslib/applications/DefaultAppInfo;

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/applications/assist/DefaultAssistPicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget v8, p0, Lcom/android/settings/applications/assist/DefaultAssistPicker;->mUserId:I

    iget-object v9, v3, Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;->component:Landroid/content/ComponentName;

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;ILandroid/content/ComponentName;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method protected bridge synthetic getConfirmationMessage(Lcom/android/settingslib/widget/CandidateInfo;)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getConfirmationMessage(Lcom/android/settingslib/widget/CandidateInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getConfirmationMessage(Lcom/android/settingslib/widget/CandidateInfo;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1201a3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/settingslib/widget/CandidateInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getConfirmationTitle(Lcom/android/settingslib/widget/CandidateInfo;)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getConfirmationTitle(Lcom/android/settingslib/widget/CandidateInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getConfirmationTitle(Lcom/android/settingslib/widget/CandidateInfo;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1201a6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/settingslib/widget/CandidateInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentAssist()Landroid/content/ComponentName;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultAssistPicker;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    iget v1, p0, Lcom/android/settings/applications/assist/DefaultAssistPicker;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getCurrentAssist()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/settingslib/applications/DefaultAppInfo;

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/assist/DefaultAssistPicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget v4, p0, Lcom/android/settings/applications/assist/DefaultAssistPicker;->mUserId:I

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;ILandroid/content/ComponentName;)V

    invoke-virtual {v1}, Lcom/android/settingslib/applications/DefaultAppInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x34b

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15003c

    return v0
.end method

.method protected newAssistConfirmationDialogFragment(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/android/settings/applications/assist/DefaultAssistPicker$AssistConfirmationDialogFragment;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/applications/assist/DefaultAssistPicker$AssistConfirmationDialogFragment;->newInstance(Lcom/android/settings/applications/assist/DefaultAssistPicker;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/android/settings/applications/assist/DefaultAssistPicker$AssistConfirmationDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->onAttach(Landroid/content/Context;)V

    new-instance v0, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/assist/DefaultAssistPicker;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V
    .locals 7

    invoke-virtual {p1}, Lcom/android/settings/widget/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getCandidate(Ljava/lang/String;)Lcom/android/settingslib/widget/CandidateInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getConfirmationMessage(Lcom/android/settingslib/widget/CandidateInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getCandidate(Ljava/lang/String;)Lcom/android/settingslib/widget/CandidateInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getConfirmationTitle(Lcom/android/settingslib/widget/CandidateInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-super {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    nop

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->newAssistConfirmationDialogFragment(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/android/settings/applications/assist/DefaultAssistPicker$AssistConfirmationDialogFragment;

    move-result-object v4

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "DefaultAppConfirm"

    invoke-virtual {v4, v5, v6}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public sendSALogging()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getCurrentAssist()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "none"

    :goto_0
    const/16 v2, 0xf3b

    invoke-static {v2, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(ILjava/lang/String;)V

    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->setAssistNone()V

    return v1

    :cond_0
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->findAssistantByPackageName(Ljava/lang/String;)Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->setAssistNone()V

    return v1

    :cond_1
    invoke-virtual {v2}, Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;->isVoiceInteractionService()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v2}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->setAssistService(Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->setAssistActivity(Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;)V

    :goto_0
    return v1
.end method

.method protected setDescriptionText()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12143e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected shouldShowItemNone()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
