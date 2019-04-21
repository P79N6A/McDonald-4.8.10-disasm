.class public Lcom/facebook/stetho/Stetho;
.super Ljava/lang/Object;
.source "Stetho.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/stetho/Stetho$BuilderBasedInitializer;,
        Lcom/facebook/stetho/Stetho$InitializerBuilder;,
        Lcom/facebook/stetho/Stetho$Initializer;,
        Lcom/facebook/stetho/Stetho$DefaultInspectorModulesBuilder;,
        Lcom/facebook/stetho/Stetho$DefaultDumperPluginsBuilder;,
        Lcom/facebook/stetho/Stetho$PluginBuilder;
    }
.end annotation


# static fields
.field private static final LISTENER_THREAD_NAME:Ljava/lang/String; = "Stetho-Listener"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method public static defaultDumperPluginsProvider(Landroid/content/Context;)Lcom/facebook/stetho/DumperPluginsProvider;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    new-instance v0, Lcom/facebook/stetho/Stetho$3;

    invoke-direct {v0, p0}, Lcom/facebook/stetho/Stetho$3;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static defaultInspectorModulesProvider(Landroid/content/Context;)Lcom/facebook/stetho/InspectorModulesProvider;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 161
    new-instance v0, Lcom/facebook/stetho/Stetho$4;

    invoke-direct {v0, p0}, Lcom/facebook/stetho/Stetho$4;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static initialize(Lcom/facebook/stetho/Stetho$Initializer;)V
    .locals 4
    .param p0, "initializer"    # Lcom/facebook/stetho/Stetho$Initializer;

    .prologue
    .line 130
    invoke-static {}, Lcom/facebook/stetho/inspector/elements/android/ActivityTracker;->get()Lcom/facebook/stetho/inspector/elements/android/ActivityTracker;

    move-result-object v3

    .line 131
    invoke-static {p0}, Lcom/facebook/stetho/Stetho$Initializer;->access$100(Lcom/facebook/stetho/Stetho$Initializer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    .line 130
    invoke-virtual {v3, v2}, Lcom/facebook/stetho/inspector/elements/android/ActivityTracker;->beginTrackingIfPossible(Landroid/app/Application;)Z

    move-result v0

    .line 132
    .local v0, "isTrackingActivities":Z
    if-nez v0, :cond_0

    .line 133
    const-string v2, "Automatic activity tracking not available on this API level, caller must invoke ActivityTracker methods manually!"

    invoke-static {v2}, Lcom/facebook/stetho/common/LogUtil;->w(Ljava/lang/String;)V

    .line 137
    :cond_0
    new-instance v1, Lcom/facebook/stetho/Stetho$2;

    const-string v2, "Stetho-Listener"

    invoke-direct {v1, v2, p0}, Lcom/facebook/stetho/Stetho$2;-><init>(Ljava/lang/String;Lcom/facebook/stetho/Stetho$Initializer;)V

    .line 148
    .local v1, "listener":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 149
    return-void
.end method

.method public static initializeWithDefaults(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    new-instance v0, Lcom/facebook/stetho/Stetho$1;

    invoke-direct {v0, p0, p0}, Lcom/facebook/stetho/Stetho$1;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/facebook/stetho/Stetho;->initialize(Lcom/facebook/stetho/Stetho$Initializer;)V

    .line 119
    return-void
.end method

.method public static newInitializerBuilder(Landroid/content/Context;)Lcom/facebook/stetho/Stetho$InitializerBuilder;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    new-instance v0, Lcom/facebook/stetho/Stetho$InitializerBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/stetho/Stetho$InitializerBuilder;-><init>(Landroid/content/Context;Lcom/facebook/stetho/Stetho$1;)V

    return-object v0
.end method
