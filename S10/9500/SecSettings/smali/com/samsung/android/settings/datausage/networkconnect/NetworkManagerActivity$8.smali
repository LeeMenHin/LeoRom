.class Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$8;
.super Ljava/lang/Object;
.source "NetworkManagerActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$8;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$8;->sCollator:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    check-cast p2, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$8;->compare(Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;)I

    move-result p1

    return p1
.end method
