.class Lcom/android/settings/tts/TextToSpeechSettings$2;
.super Landroid/database/ContentObserver;
.source "TextToSpeechSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/tts/TextToSpeechSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tts/TextToSpeechSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/TextToSpeechSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings$2;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings$2;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings$2;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v1}, Lcom/android/settings/tts/TextToSpeechSettings;->access$100(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "tts_default_rate"

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->access$002(Lcom/android/settings/tts/TextToSpeechSettings;I)I

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings$2;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v0}, Lcom/android/settings/tts/TextToSpeechSettings;->access$300(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/android/settings/widget/SeekBarPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings$2;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    const-string/jumbo v2, "tts_default_rate"

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings$2;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v3}, Lcom/android/settings/tts/TextToSpeechSettings;->access$000(Lcom/android/settings/tts/TextToSpeechSettings;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/tts/TextToSpeechSettings;->access$200(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    return-void
.end method
