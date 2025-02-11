.class public interface abstract Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;
.super Ljava/lang/Object;
.source "FeatureFactory.java"


# virtual methods
.method public abstract createActionInteractionStrategies(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/ActionInteractionStrategy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract createActionsCreationStrategies(Lcom/samsung/android/globalactions/presentation/SecGlobalActions;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactions/presentation/SecGlobalActions;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/ActionsCreationStrategy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract createDefaultActionsCreationStrategy(Lcom/samsung/android/globalactions/presentation/SecGlobalActions;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactions/presentation/SecGlobalActions;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/DefaultActionsCreationStrategy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract createDisposingStrategies(Lcom/samsung/android/globalactions/presentation/SecGlobalActions;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactions/presentation/SecGlobalActions;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/DisposingStrategy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract createInitializationStrategies(Lcom/samsung/android/globalactions/presentation/SecGlobalActions;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactions/presentation/SecGlobalActions;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/InitializationStrategy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract createOnKeyListenerStrategy(Lcom/samsung/android/globalactions/presentation/SecGlobalActions;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactions/presentation/SecGlobalActions;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/OnKeyListenerStrategy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract createSecureConfirmStrategy(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/SecureConfirmStrategy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract createSoftwareUpdateStrategy(Lcom/samsung/android/globalactions/presentation/SecGlobalActions;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactions/presentation/SecGlobalActions;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/SoftwareUpdateStrategy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract createWindowDecorationStrategies()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/WindowDecorationStrategy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract createWindowManagerFunctionStrategy(Lcom/samsung/android/globalactions/presentation/SecGlobalActions;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactions/presentation/SecGlobalActions;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/WindowManagerFunctionStrategy;",
            ">;"
        }
    .end annotation
.end method
