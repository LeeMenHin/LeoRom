.class Lcom/samsung/android/settings/location/LocationSettingsEnabler$3;
.super Ljava/lang/Object;
.source "LocationSettingsEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/location/LocationSettingsEnabler;->onLocationOptionChange(Ljava/lang/Object;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/location/LocationSettingsEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/location/LocationSettingsEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler$3;->this$0:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler$3;->this$0:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->setLocationMode(I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
