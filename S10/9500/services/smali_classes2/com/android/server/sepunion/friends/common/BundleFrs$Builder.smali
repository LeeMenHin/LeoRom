.class public Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;
.super Ljava/lang/Object;
.source "BundleFrs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/friends/common/BundleFrs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private bundle:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->bundle:Landroid/os/Bundle;

    return-void
.end method

.method public static create()Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;
    .locals 1

    new-instance v0, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    invoke-direct {v0}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public put(Ljava/lang/String;B)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    return-object p0
.end method

.method public put(Ljava/lang/String;I)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public put(Ljava/lang/String;J)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p0
.end method

.method public put(Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public put(Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "+",
            "Landroid/os/Parcelable;",
            ">;)",
            "Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/util/List;)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->bundle:Landroid/os/Bundle;

    move-object v1, p2

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public put(Ljava/lang/String;Z)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public put(Ljava/lang/String;[B)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object p0
.end method

.method public put(Ljava/lang/String;[I)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    return-object p0
.end method

.method public put(Ljava/lang/String;[J)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    return-object p0
.end method

.method public put(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-object p0
.end method

.method public put(Ljava/lang/String;[Z)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    return-object p0
.end method
