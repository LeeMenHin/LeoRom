.class public Landroid/support/v4/media/SeslAudioManagerReflector;
.super Ljava/lang/Object;
.source "SeslAudioManagerReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/SeslAudioManagerReflector$AudioManagerApi21Impl;,
        Landroid/support/v4/media/SeslAudioManagerReflector$AudioManagerBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/media/SeslAudioManagerReflector$AudioManagerBaseImpl;

.field private static final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Landroid/media/AudioManager;

    sput-object v0, Landroid/support/v4/media/SeslAudioManagerReflector;->mClass:Ljava/lang/Class;

    new-instance v0, Landroid/support/v4/media/SeslAudioManagerReflector$AudioManagerApi21Impl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/media/SeslAudioManagerReflector$AudioManagerApi21Impl;-><init>(Landroid/support/v4/media/SeslAudioManagerReflector$1;)V

    sput-object v0, Landroid/support/v4/media/SeslAudioManagerReflector;->IMPL:Landroid/support/v4/media/SeslAudioManagerReflector$AudioManagerBaseImpl;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    sget-object v0, Landroid/support/v4/media/SeslAudioManagerReflector;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getField_SOUND_TIME_PICKER_SCROLL()I
    .locals 1

    sget-object v0, Landroid/support/v4/media/SeslAudioManagerReflector;->IMPL:Landroid/support/v4/media/SeslAudioManagerReflector$AudioManagerBaseImpl;

    invoke-interface {v0}, Landroid/support/v4/media/SeslAudioManagerReflector$AudioManagerBaseImpl;->getField_SOUND_TIME_PICKER_SCROLL()I

    move-result v0

    return v0
.end method
