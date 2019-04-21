.class public Lcom/crashlytics/android/core/CrashlyticsCore;
.super Lio/fabric/sdk/android/Kit;
.source "CrashlyticsCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/core/CrashlyticsCore$NoOpListener;,
        Lcom/crashlytics/android/core/CrashlyticsCore$CrashMarkerCheck;,
        Lcom/crashlytics/android/core/CrashlyticsCore$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/Kit",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation

.annotation runtime Lio/fabric/sdk/android/services/concurrency/DependsOn;
    value = {
        Lcom/crashlytics/android/core/CrashlyticsNdkDataProvider;
    }
.end annotation


# instance fields
.field private final attributes:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private backgroundWorker:Lcom/crashlytics/android/core/CrashlyticsBackgroundWorker;

.field private controller:Lcom/crashlytics/android/core/CrashlyticsController;

.field private crashMarker:Lcom/crashlytics/android/core/CrashlyticsFileMarker;

.field private crashlyticsNdkDataProvider:Lcom/crashlytics/android/core/CrashlyticsNdkDataProvider;

.field private delay:F

.field private disabled:Z

.field private httpRequestFactory:Lio/fabric/sdk/android/services/network/HttpRequestFactory;

.field private initializationMarker:Lcom/crashlytics/android/core/CrashlyticsFileMarker;

.field private listener:Lcom/crashlytics/android/core/CrashlyticsListener;

.field private final pinningInfo:Lcom/crashlytics/android/core/PinningInfoProvider;

.field private final startTime:J

.field private userEmail:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 177
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/crashlytics/android/core/CrashlyticsCore;-><init>(FLcom/crashlytics/android/core/CrashlyticsListener;Lcom/crashlytics/android/core/PinningInfoProvider;Z)V

    .line 178
    return-void
.end method

.method constructor <init>(FLcom/crashlytics/android/core/CrashlyticsListener;Lcom/crashlytics/android/core/PinningInfoProvider;Z)V
    .locals 6
    .param p1, "delay"    # F
    .param p2, "listener"    # Lcom/crashlytics/android/core/CrashlyticsListener;
    .param p3, "pinningInfo"    # Lcom/crashlytics/android/core/PinningInfoProvider;
    .param p4, "disabled"    # Z

    .prologue
    .line 182
    const-string v0, "Crashlytics Exception Handler"

    .line 183
    invoke-static {v0}, Lio/fabric/sdk/android/services/common/ExecutorUtils;->buildSingleThreadExecutorService(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 182
    invoke-direct/range {v0 .. v5}, Lcom/crashlytics/android/core/CrashlyticsCore;-><init>(FLcom/crashlytics/android/core/CrashlyticsListener;Lcom/crashlytics/android/core/PinningInfoProvider;ZLjava/util/concurrent/ExecutorService;)V

    .line 184
    return-void
.end method

.method constructor <init>(FLcom/crashlytics/android/core/CrashlyticsListener;Lcom/crashlytics/android/core/PinningInfoProvider;ZLjava/util/concurrent/ExecutorService;)V
    .locals 2
    .param p1, "delay"    # F
    .param p2, "listener"    # Lcom/crashlytics/android/core/CrashlyticsListener;
    .param p3, "pinningInfo"    # Lcom/crashlytics/android/core/PinningInfoProvider;
    .param p4, "disabled"    # Z
    .param p5, "crashHandlerExecutor"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    const/4 v0, 0x0

    .line 191
    invoke-direct {p0}, Lio/fabric/sdk/android/Kit;-><init>()V

    .line 81
    iput-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->userId:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->userEmail:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->userName:Ljava/lang/String;

    .line 192
    iput p1, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->delay:F

    .line 193
    if-eqz p2, :cond_0

    .end local p2    # "listener":Lcom/crashlytics/android/core/CrashlyticsListener;
    :goto_0
    iput-object p2, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->listener:Lcom/crashlytics/android/core/CrashlyticsListener;

    .line 194
    iput-object p3, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->pinningInfo:Lcom/crashlytics/android/core/PinningInfoProvider;

    .line 195
    iput-boolean p4, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->disabled:Z

    .line 196
    new-instance v0, Lcom/crashlytics/android/core/CrashlyticsBackgroundWorker;

    invoke-direct {v0, p5}, Lcom/crashlytics/android/core/CrashlyticsBackgroundWorker;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->backgroundWorker:Lcom/crashlytics/android/core/CrashlyticsBackgroundWorker;

    .line 198
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->attributes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->startTime:J

    .line 200
    return-void

    .line 193
    .restart local p2    # "listener":Lcom/crashlytics/android/core/CrashlyticsListener;
    :cond_0
    new-instance p2, Lcom/crashlytics/android/core/CrashlyticsCore$NoOpListener;

    .end local p2    # "listener":Lcom/crashlytics/android/core/CrashlyticsListener;
    invoke-direct {p2, v0}, Lcom/crashlytics/android/core/CrashlyticsCore$NoOpListener;-><init>(Lcom/crashlytics/android/core/CrashlyticsCore$1;)V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/crashlytics/android/core/CrashlyticsCore;)Lcom/crashlytics/android/core/CrashlyticsFileMarker;
    .locals 1
    .param p0, "x0"    # Lcom/crashlytics/android/core/CrashlyticsCore;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->initializationMarker:Lcom/crashlytics/android/core/CrashlyticsFileMarker;

    return-object v0
.end method

.method private checkForPreviousCrash()V
    .locals 5

    .prologue
    .line 810
    iget-object v2, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->backgroundWorker:Lcom/crashlytics/android/core/CrashlyticsBackgroundWorker;

    new-instance v3, Lcom/crashlytics/android/core/CrashlyticsCore$CrashMarkerCheck;

    iget-object v4, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->crashMarker:Lcom/crashlytics/android/core/CrashlyticsFileMarker;

    invoke-direct {v3, v4}, Lcom/crashlytics/android/core/CrashlyticsCore$CrashMarkerCheck;-><init>(Lcom/crashlytics/android/core/CrashlyticsFileMarker;)V

    .line 811
    invoke-virtual {v2, v3}, Lcom/crashlytics/android/core/CrashlyticsBackgroundWorker;->submitAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 815
    .local v1, "foundPreviousCrash":Ljava/lang/Boolean;
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 826
    :goto_0
    return-void

    .line 820
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->listener:Lcom/crashlytics/android/core/CrashlyticsListener;

    invoke-interface {v2}, Lcom/crashlytics/android/core/CrashlyticsListener;->crashlyticsDidDetectCrashDuringPreviousExecution()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 821
    :catch_0
    move-exception v0

    .line 822
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v2

    const-string v3, "CrashlyticsCore"

    const-string v4, "Exception thrown by CrashlyticsListener while notifying of previous crash."

    invoke-interface {v2, v3, v4, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private doLog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 445
    iget-boolean v2, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->disabled:Z

    if-eqz v2, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    const-string v2, "prior to logging messages."

    invoke-static {v2}, Lcom/crashlytics/android/core/CrashlyticsCore;->ensureFabricWithCalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 453
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->startTime:J

    sub-long v0, v2, v4

    .line 454
    .local v0, "timestamp":J
    iget-object v2, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->controller:Lcom/crashlytics/android/core/CrashlyticsController;

    invoke-static {p1, p2, p3}, Lcom/crashlytics/android/core/CrashlyticsCore;->formatLogMessage(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/crashlytics/android/core/CrashlyticsController;->writeToLog(JLjava/lang/String;)V

    goto :goto_0
.end method

.method private static ensureFabricWithCalled(Ljava/lang/String;)Z
    .locals 5
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 845
    invoke-static {}, Lcom/crashlytics/android/core/CrashlyticsCore;->getInstance()Lcom/crashlytics/android/core/CrashlyticsCore;

    move-result-object v0

    .line 846
    .local v0, "instance":Lcom/crashlytics/android/core/CrashlyticsCore;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/crashlytics/android/core/CrashlyticsCore;->controller:Lcom/crashlytics/android/core/CrashlyticsController;

    if-nez v1, :cond_1

    .line 847
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Crashlytics must be initialized by calling Fabric.with(Context) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 850
    const/4 v1, 0x0

    .line 852
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private finishInitSynchronously()V
    .locals 7

    .prologue
    .line 704
    new-instance v0, Lcom/crashlytics/android/core/CrashlyticsCore$1;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/core/CrashlyticsCore$1;-><init>(Lcom/crashlytics/android/core/CrashlyticsCore;)V

    .line 716
    .local v0, "callable":Lio/fabric/sdk/android/services/concurrency/PriorityCallable;, "Lio/fabric/sdk/android/services/concurrency/PriorityCallable<Ljava/lang/Void;>;"
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->getDependencies()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/fabric/sdk/android/services/concurrency/Task;

    .line 717
    .local v3, "task":Lio/fabric/sdk/android/services/concurrency/Task;
    invoke-virtual {v0, v3}, Lio/fabric/sdk/android/services/concurrency/PriorityCallable;->addDependency(Lio/fabric/sdk/android/services/concurrency/Task;)V

    goto :goto_0

    .line 720
    .end local v3    # "task":Lio/fabric/sdk/android/services/concurrency/Task;
    :cond_0
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->getFabric()Lio/fabric/sdk/android/Fabric;

    move-result-object v4

    invoke-virtual {v4}, Lio/fabric/sdk/android/Fabric;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 722
    .local v2, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Void;>;"
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v4

    const-string v5, "CrashlyticsCore"

    const-string v6, "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously."

    invoke-interface {v4, v5, v6}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    const-wide/16 v4, 0x4

    :try_start_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 735
    :goto_1
    return-void

    .line 728
    :catch_0
    move-exception v1

    .line 729
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v4

    const-string v5, "CrashlyticsCore"

    const-string v6, "Crashlytics was interrupted during initialization."

    invoke-interface {v4, v5, v6, v1}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 730
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 731
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v4

    const-string v5, "CrashlyticsCore"

    const-string v6, "Problem encountered during Crashlytics initialization."

    invoke-interface {v4, v5, v6, v1}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 732
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v1

    .line 733
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v4

    const-string v5, "CrashlyticsCore"

    const-string v6, "Crashlytics timed out during initialization."

    invoke-interface {v4, v5, v6, v1}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static formatLogMessage(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lio/fabric/sdk/android/services/common/CommonUtils;->logPriorityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/crashlytics/android/core/CrashlyticsCore;
    .locals 1

    .prologue
    .line 397
    const-class v0, Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-static {v0}, Lio/fabric/sdk/android/Fabric;->getKit(Ljava/lang/Class;)Lio/fabric/sdk/android/Kit;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/core/CrashlyticsCore;

    return-object v0
.end method

.method static isBuildIdValid(Ljava/lang/String;Z)Z
    .locals 4
    .param p0, "buildId"    # Ljava/lang/String;
    .param p1, "requiresBuildId"    # Z

    .prologue
    const/4 v0, 0x1

    .line 893
    if-nez p1, :cond_1

    .line 894
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Configured not to require a build ID."

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    :cond_0
    :goto_0
    return v0

    .line 898
    :cond_1
    invoke-static {p0}, Lio/fabric/sdk/android/services/common/CommonUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 902
    const-string v0, "CrashlyticsCore"

    const-string v1, "."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    const-string v0, "CrashlyticsCore"

    const-string v1, ".     |  | "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    const-string v0, "CrashlyticsCore"

    const-string v1, ".     |  |"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    const-string v0, "CrashlyticsCore"

    const-string v1, ".     |  |"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    const-string v0, "CrashlyticsCore"

    const-string v1, ".   \\ |  | /"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    const-string v0, "CrashlyticsCore"

    const-string v1, ".    \\    /"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    const-string v0, "CrashlyticsCore"

    const-string v1, ".     \\  /"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    const-string v0, "CrashlyticsCore"

    const-string v1, ".      \\/"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    const-string v0, "CrashlyticsCore"

    const-string v1, "."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    const-string v0, "CrashlyticsCore"

    const-string v1, "The Crashlytics build ID is missing. This occurs when Crashlytics tooling is absent from your app\'s build configuration. Please review Crashlytics onboarding instructions and ensure you have a valid Crashlytics account."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    const-string v0, "CrashlyticsCore"

    const-string v1, "."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    const-string v0, "CrashlyticsCore"

    const-string v1, ".      /\\"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    const-string v0, "CrashlyticsCore"

    const-string v1, ".     /  \\"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    const-string v0, "CrashlyticsCore"

    const-string v1, ".    /    \\"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const-string v0, "CrashlyticsCore"

    const-string v1, ".   / |  | \\"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const-string v0, "CrashlyticsCore"

    const-string v1, ".     |  |"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    const-string v0, "CrashlyticsCore"

    const-string v1, ".     |  |"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    const-string v0, "CrashlyticsCore"

    const-string v1, ".     |  |"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const-string v0, "CrashlyticsCore"

    const-string v1, "."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    const/4 v0, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method createCrashMarker()V
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->crashMarker:Lcom/crashlytics/android/core/CrashlyticsFileMarker;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/CrashlyticsFileMarker;->create()Z

    .line 834
    return-void
.end method

.method didPreviousInitializationFail()Z
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->initializationMarker:Lcom/crashlytics/android/core/CrashlyticsFileMarker;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/CrashlyticsFileMarker;->isPresent()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->doInBackground()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected doInBackground()Ljava/lang/Void;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 316
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->markInitializationStarted()V

    .line 318
    iget-object v3, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->controller:Lcom/crashlytics/android/core/CrashlyticsController;

    invoke-virtual {v3}, Lcom/crashlytics/android/core/CrashlyticsController;->cleanInvalidTempFiles()V

    .line 322
    :try_start_0
    iget-object v3, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->controller:Lcom/crashlytics/android/core/CrashlyticsController;

    invoke-virtual {v3}, Lcom/crashlytics/android/core/CrashlyticsController;->registerDevicePowerStateListener()V

    .line 324
    invoke-static {}, Lio/fabric/sdk/android/services/settings/Settings;->getInstance()Lio/fabric/sdk/android/services/settings/Settings;

    move-result-object v3

    invoke-virtual {v3}, Lio/fabric/sdk/android/services/settings/Settings;->awaitSettingsData()Lio/fabric/sdk/android/services/settings/SettingsData;

    move-result-object v2

    .line 326
    .local v2, "settingsData":Lio/fabric/sdk/android/services/settings/SettingsData;
    if-nez v2, :cond_0

    .line 327
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    const-string v5, "Received null settings, skipping report submission!"

    invoke-interface {v3, v4, v5}, Lio/fabric/sdk/android/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->markInitializationComplete()V

    .line 372
    .end local v2    # "settingsData":Lio/fabric/sdk/android/services/settings/SettingsData;
    :goto_0
    return-object v6

    .line 331
    .restart local v2    # "settingsData":Lio/fabric/sdk/android/services/settings/SettingsData;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->controller:Lcom/crashlytics/android/core/CrashlyticsController;

    invoke-virtual {v3, v2}, Lcom/crashlytics/android/core/CrashlyticsController;->registerAnalyticsEventListener(Lio/fabric/sdk/android/services/settings/SettingsData;)V

    .line 333
    iget-object v3, v2, Lio/fabric/sdk/android/services/settings/SettingsData;->featuresData:Lio/fabric/sdk/android/services/settings/FeaturesSettingsData;

    iget-boolean v3, v3, Lio/fabric/sdk/android/services/settings/FeaturesSettingsData;->collectReports:Z

    if-nez v3, :cond_1

    .line 334
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    const-string v5, "Collection of crash reports disabled in Crashlytics settings."

    invoke-interface {v3, v4, v5}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->markInitializationComplete()V

    goto :goto_0

    .line 339
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lio/fabric/sdk/android/services/common/DataCollectionArbiter;->getInstance(Landroid/content/Context;)Lio/fabric/sdk/android/services/common/DataCollectionArbiter;

    move-result-object v3

    invoke-virtual {v3}, Lio/fabric/sdk/android/services/common/DataCollectionArbiter;->isDataCollectionEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 340
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    const-string v5, "Automatic collection of crash reports disabled by Firebase settings."

    invoke-interface {v3, v4, v5}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 369
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->markInitializationComplete()V

    goto :goto_0

    .line 345
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->getNativeCrashData()Lcom/crashlytics/android/core/CrashlyticsNdkData;

    move-result-object v1

    .line 346
    .local v1, "ndkData":Lcom/crashlytics/android/core/CrashlyticsNdkData;
    if-eqz v1, :cond_3

    .line 347
    iget-object v3, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->controller:Lcom/crashlytics/android/core/CrashlyticsController;

    invoke-virtual {v3, v1}, Lcom/crashlytics/android/core/CrashlyticsController;->finalizeNativeReport(Lcom/crashlytics/android/core/CrashlyticsNdkData;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 348
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    const-string v5, "Could not finalize previous NDK sessions."

    invoke-interface {v3, v4, v5}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_3
    iget-object v3, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->controller:Lcom/crashlytics/android/core/CrashlyticsController;

    iget-object v4, v2, Lio/fabric/sdk/android/services/settings/SettingsData;->sessionData:Lio/fabric/sdk/android/services/settings/SessionSettingsData;

    invoke-virtual {v3, v4}, Lcom/crashlytics/android/core/CrashlyticsController;->finalizeSessions(Lio/fabric/sdk/android/services/settings/SessionSettingsData;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 353
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    const-string v5, "Could not finalize previous sessions."

    invoke-interface {v3, v4, v5}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_4
    iget-object v3, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->controller:Lcom/crashlytics/android/core/CrashlyticsController;

    iget v4, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->delay:F

    invoke-virtual {v3, v4, v2}, Lcom/crashlytics/android/core/CrashlyticsController;->submitAllReports(FLio/fabric/sdk/android/services/settings/SettingsData;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 369
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->markInitializationComplete()V

    goto :goto_0

    .line 357
    .end local v1    # "ndkData":Lcom/crashlytics/android/core/CrashlyticsNdkData;
    .end local v2    # "settingsData":Lio/fabric/sdk/android/services/settings/SettingsData;
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    const-string v5, "Crashlytics encountered a problem during asynchronous initialization."

    invoke-interface {v3, v4, v5, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 369
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->markInitializationComplete()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->markInitializationComplete()V

    .line 370
    throw v3
.end method

.method getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 675
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->attributes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    const-string v0, "com.crashlytics.sdk.android.crashlytics-core"

    return-object v0
.end method

.method getNativeCrashData()Lcom/crashlytics/android/core/CrashlyticsNdkData;
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->crashlyticsNdkDataProvider:Lcom/crashlytics/android/core/CrashlyticsNdkDataProvider;

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->crashlyticsNdkDataProvider:Lcom/crashlytics/android/core/CrashlyticsNdkDataProvider;

    invoke-interface {v0}, Lcom/crashlytics/android/core/CrashlyticsNdkDataProvider;->getCrashlyticsNdkData()Lcom/crashlytics/android/core/CrashlyticsNdkData;

    move-result-object v0

    .line 786
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getUserEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 687
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->getIdManager()Lio/fabric/sdk/android/services/common/IdManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/IdManager;->canCollectUserIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->userEmail:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getUserIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 683
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->getIdManager()Lio/fabric/sdk/android/services/common/IdManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/IdManager;->canCollectUserIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->userId:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 691
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->getIdManager()Lio/fabric/sdk/android/services/common/IdManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/IdManager;->canCollectUserIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->userName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 386
    const-string v0, "2.6.8.32"

    return-object v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 441
    const/4 v0, 0x3

    const-string v1, "CrashlyticsCore"

    invoke-direct {p0, v0, v1, p1}, Lcom/crashlytics/android/core/CrashlyticsCore;->doLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 442
    return-void
.end method

.method markInitializationComplete()V
    .locals 2

    .prologue
    .line 757
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->backgroundWorker:Lcom/crashlytics/android/core/CrashlyticsBackgroundWorker;

    new-instance v1, Lcom/crashlytics/android/core/CrashlyticsCore$3;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/CrashlyticsCore$3;-><init>(Lcom/crashlytics/android/core/CrashlyticsCore;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/CrashlyticsBackgroundWorker;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 772
    return-void
.end method

.method markInitializationStarted()V
    .locals 2

    .prologue
    .line 741
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->backgroundWorker:Lcom/crashlytics/android/core/CrashlyticsBackgroundWorker;

    new-instance v1, Lcom/crashlytics/android/core/CrashlyticsCore$2;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/CrashlyticsCore$2;-><init>(Lcom/crashlytics/android/core/CrashlyticsCore;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/CrashlyticsBackgroundWorker;->submitAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 751
    return-void
.end method

.method protected onPreExecute()Z
    .locals 3

    .prologue
    .line 209
    const-string v1, "!SDK-VERSION-STRING!:com.crashlytics.sdk.android:crashlytics-core:2.6.8.32"

    .line 210
    .local v1, "googlePlaySdkVersionString":Ljava/lang/String;
    invoke-super {p0}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 211
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/CrashlyticsCore;->onPreExecute(Landroid/content/Context;)Z

    move-result v2

    return v2
.end method

.method onPreExecute(Landroid/content/Context;)Z
    .locals 21
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 218
    invoke-static/range {p1 .. p1}, Lio/fabric/sdk/android/services/common/DataCollectionArbiter;->getInstance(Landroid/content/Context;)Lio/fabric/sdk/android/services/common/DataCollectionArbiter;

    move-result-object v2

    invoke-virtual {v2}, Lio/fabric/sdk/android/services/common/DataCollectionArbiter;->isDataCollectionEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 219
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v2

    const-string v3, "CrashlyticsCore"

    const-string v4, "Crashlytics is disabled, because data collection is disabled by Firebase."

    invoke-interface {v2, v3, v4}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/crashlytics/android/core/CrashlyticsCore;->disabled:Z

    .line 224
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/crashlytics/android/core/CrashlyticsCore;->disabled:Z

    if-eqz v2, :cond_1

    .line 225
    const/4 v2, 0x0

    .line 310
    :goto_0
    return v2

    .line 228
    :cond_1
    new-instance v2, Lio/fabric/sdk/android/services/common/ApiKey;

    invoke-direct {v2}, Lio/fabric/sdk/android/services/common/ApiKey;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lio/fabric/sdk/android/services/common/ApiKey;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 230
    .local v13, "apiKey":Ljava/lang/String;
    if-nez v13, :cond_2

    .line 231
    const/4 v2, 0x0

    goto :goto_0

    .line 236
    :cond_2
    invoke-static/range {p1 .. p1}, Lio/fabric/sdk/android/services/common/CommonUtils;->resolveBuildId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 239
    .local v14, "buildId":Ljava/lang/String;
    const-string v2, "com.crashlytics.RequireBuildId"

    const/4 v3, 0x1

    .line 240
    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lio/fabric/sdk/android/services/common/CommonUtils;->getBooleanResourceValue(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v20

    .line 242
    .local v20, "requiresBuildId":Z
    move/from16 v0, v20

    invoke-static {v14, v0}, Lcom/crashlytics/android/core/CrashlyticsCore;->isBuildIdValid(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3

    .line 243
    new-instance v2, Lio/fabric/sdk/android/services/concurrency/UnmetDependencyException;

    const-string v3, "The Crashlytics build ID is missing. This occurs when Crashlytics tooling is absent from your app\'s build configuration. Please review Crashlytics onboarding instructions and ensure you have a valid Crashlytics account."

    invoke-direct {v2, v3}, Lio/fabric/sdk/android/services/concurrency/UnmetDependencyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 247
    :cond_3
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v2

    const-string v3, "CrashlyticsCore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Initializing Crashlytics "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lio/fabric/sdk/android/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    new-instance v8, Lio/fabric/sdk/android/services/persistence/FileStoreImpl;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lio/fabric/sdk/android/services/persistence/FileStoreImpl;-><init>(Lio/fabric/sdk/android/Kit;)V

    .line 250
    .local v8, "fileStore":Lio/fabric/sdk/android/services/persistence/FileStore;
    new-instance v2, Lcom/crashlytics/android/core/CrashlyticsFileMarker;

    const-string v3, "crash_marker"

    invoke-direct {v2, v3, v8}, Lcom/crashlytics/android/core/CrashlyticsFileMarker;-><init>(Ljava/lang/String;Lio/fabric/sdk/android/services/persistence/FileStore;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/crashlytics/android/core/CrashlyticsCore;->crashMarker:Lcom/crashlytics/android/core/CrashlyticsFileMarker;

    .line 251
    new-instance v2, Lcom/crashlytics/android/core/CrashlyticsFileMarker;

    const-string v3, "initialization_marker"

    invoke-direct {v2, v3, v8}, Lcom/crashlytics/android/core/CrashlyticsFileMarker;-><init>(Ljava/lang/String;Lio/fabric/sdk/android/services/persistence/FileStore;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/crashlytics/android/core/CrashlyticsCore;->initializationMarker:Lcom/crashlytics/android/core/CrashlyticsFileMarker;

    .line 254
    new-instance v19, Lio/fabric/sdk/android/services/persistence/PreferenceStoreImpl;

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.crashlytics.android.core.CrashlyticsCore"

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3}, Lio/fabric/sdk/android/services/persistence/PreferenceStoreImpl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 257
    .local v19, "preferenceStore":Lio/fabric/sdk/android/services/persistence/PreferenceStore;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/crashlytics/android/core/PreferenceManager;->create(Lio/fabric/sdk/android/services/persistence/PreferenceStore;Lcom/crashlytics/android/core/CrashlyticsCore;)Lcom/crashlytics/android/core/PreferenceManager;

    move-result-object v7

    .line 259
    .local v7, "preferenceManager":Lcom/crashlytics/android/core/PreferenceManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crashlytics/android/core/CrashlyticsCore;->pinningInfo:Lcom/crashlytics/android/core/PinningInfoProvider;

    if-eqz v2, :cond_4

    new-instance v17, Lcom/crashlytics/android/core/CrashlyticsPinningInfoProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crashlytics/android/core/CrashlyticsCore;->pinningInfo:Lcom/crashlytics/android/core/PinningInfoProvider;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Lcom/crashlytics/android/core/CrashlyticsPinningInfoProvider;-><init>(Lcom/crashlytics/android/core/PinningInfoProvider;)V

    .line 261
    .local v17, "infoProvider":Lcom/crashlytics/android/core/CrashlyticsPinningInfoProvider;
    :goto_1
    new-instance v2, Lio/fabric/sdk/android/services/network/DefaultHttpRequestFactory;

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/fabric/sdk/android/services/network/DefaultHttpRequestFactory;-><init>(Lio/fabric/sdk/android/Logger;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/crashlytics/android/core/CrashlyticsCore;->httpRequestFactory:Lio/fabric/sdk/android/services/network/HttpRequestFactory;

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crashlytics/android/core/CrashlyticsCore;->httpRequestFactory:Lio/fabric/sdk/android/services/network/HttpRequestFactory;

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Lio/fabric/sdk/android/services/network/HttpRequestFactory;->setPinningInfoProvider(Lio/fabric/sdk/android/services/network/PinningInfoProvider;)V

    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->getIdManager()Lio/fabric/sdk/android/services/common/IdManager;

    move-result-object v6

    .line 265
    .local v6, "idManager":Lio/fabric/sdk/android/services/common/IdManager;
    move-object/from16 v0, p1

    invoke-static {v0, v6, v13, v14}, Lcom/crashlytics/android/core/AppData;->create(Landroid/content/Context;Lio/fabric/sdk/android/services/common/IdManager;Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/core/AppData;

    move-result-object v9

    .line 266
    .local v9, "appData":Lcom/crashlytics/android/core/AppData;
    new-instance v10, Lcom/crashlytics/android/core/ResourceUnityVersionProvider;

    new-instance v2, Lcom/crashlytics/android/core/ManifestUnityVersionProvider;

    iget-object v3, v9, Lcom/crashlytics/android/core/AppData;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3}, Lcom/crashlytics/android/core/ManifestUnityVersionProvider;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v2}, Lcom/crashlytics/android/core/ResourceUnityVersionProvider;-><init>(Landroid/content/Context;Lcom/crashlytics/android/core/UnityVersionProvider;)V

    .line 269
    .local v10, "unityVersionProvider":Lcom/crashlytics/android/core/UnityVersionProvider;
    new-instance v11, Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar;-><init>(Lcom/crashlytics/android/core/CrashlyticsCore;)V

    .line 272
    .local v11, "appMeasurementEventListenerRegistrar":Lcom/crashlytics/android/core/AppMeasurementEventListenerRegistrar;
    invoke-static/range {p1 .. p1}, Lcom/crashlytics/android/answers/AppMeasurementEventLogger;->getEventLogger(Landroid/content/Context;)Lcom/crashlytics/android/answers/EventLogger;

    move-result-object v12

    .line 274
    .local v12, "firebaseAnalyticsLogger":Lcom/crashlytics/android/answers/EventLogger;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v2

    const-string v3, "CrashlyticsCore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Installer package name is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v9, Lcom/crashlytics/android/core/AppData;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    new-instance v2, Lcom/crashlytics/android/core/CrashlyticsController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/crashlytics/android/core/CrashlyticsCore;->backgroundWorker:Lcom/crashlytics/android/core/CrashlyticsBackgroundWorker;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/crashlytics/android/core/CrashlyticsCore;->httpRequestFactory:Lio/fabric/sdk/android/services/network/HttpRequestFactory;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v12}, Lcom/crashlytics/android/core/CrashlyticsController;-><init>(Lcom/crashlytics/android/core/CrashlyticsCore;Lcom/crashlytics/android/core/CrashlyticsBackgroundWorker;Lio/fabric/sdk/android/services/network/HttpRequestFactory;Lio/fabric/sdk/android/services/common/IdManager;Lcom/crashlytics/android/core/PreferenceManager;Lio/fabric/sdk/android/services/persistence/FileStore;Lcom/crashlytics/android/core/AppData;Lcom/crashlytics/android/core/UnityVersionProvider;Lcom/crashlytics/android/core/AppMeasurementEventListenerRegistrar;Lcom/crashlytics/android/answers/EventLogger;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/crashlytics/android/core/CrashlyticsCore;->controller:Lcom/crashlytics/android/core/CrashlyticsController;

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->didPreviousInitializationFail()Z

    move-result v18

    .line 286
    .local v18, "initializeSynchronously":Z
    invoke-direct/range {p0 .. p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->checkForPreviousCrash()V

    .line 288
    new-instance v2, Lio/fabric/sdk/android/services/common/FirebaseInfo;

    invoke-direct {v2}, Lio/fabric/sdk/android/services/common/FirebaseInfo;-><init>()V

    .line 289
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lio/fabric/sdk/android/services/common/FirebaseInfo;->isFirebaseCrashlyticsEnabled(Landroid/content/Context;)Z

    move-result v16

    .line 290
    .local v16, "firebaseCrashlyticsClientFlag":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crashlytics/android/core/CrashlyticsCore;->controller:Lcom/crashlytics/android/core/CrashlyticsController;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Lcom/crashlytics/android/core/CrashlyticsController;->enableExceptionHandling(Ljava/lang/Thread$UncaughtExceptionHandler;Z)V

    .line 293
    if-eqz v18, :cond_5

    invoke-static/range {p1 .. p1}, Lio/fabric/sdk/android/services/common/CommonUtils;->canTryConnection(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 294
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v2

    const-string v3, "CrashlyticsCore"

    const-string v4, "Crashlytics did not finish previous background initialization. Initializing synchronously."

    invoke-interface {v2, v3, v4}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-direct/range {p0 .. p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->finishInitSynchronously()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 259
    .end local v6    # "idManager":Lio/fabric/sdk/android/services/common/IdManager;
    .end local v9    # "appData":Lcom/crashlytics/android/core/AppData;
    .end local v10    # "unityVersionProvider":Lcom/crashlytics/android/core/UnityVersionProvider;
    .end local v11    # "appMeasurementEventListenerRegistrar":Lcom/crashlytics/android/core/AppMeasurementEventListenerRegistrar;
    .end local v12    # "firebaseAnalyticsLogger":Lcom/crashlytics/android/answers/EventLogger;
    .end local v16    # "firebaseCrashlyticsClientFlag":Z
    .end local v17    # "infoProvider":Lcom/crashlytics/android/core/CrashlyticsPinningInfoProvider;
    .end local v18    # "initializeSynchronously":Z
    :cond_4
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 302
    .end local v7    # "preferenceManager":Lcom/crashlytics/android/core/PreferenceManager;
    .end local v8    # "fileStore":Lio/fabric/sdk/android/services/persistence/FileStore;
    .end local v19    # "preferenceStore":Lio/fabric/sdk/android/services/persistence/PreferenceStore;
    :catch_0
    move-exception v15

    .line 303
    .local v15, "e":Ljava/lang/Exception;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v2

    const-string v3, "CrashlyticsCore"

    const-string v4, "Crashlytics was not started due to an exception during initialization"

    invoke-interface {v2, v3, v4, v15}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 305
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/crashlytics/android/core/CrashlyticsCore;->controller:Lcom/crashlytics/android/core/CrashlyticsController;

    .line 306
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 309
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v6    # "idManager":Lio/fabric/sdk/android/services/common/IdManager;
    .restart local v7    # "preferenceManager":Lcom/crashlytics/android/core/PreferenceManager;
    .restart local v8    # "fileStore":Lio/fabric/sdk/android/services/persistence/FileStore;
    .restart local v9    # "appData":Lcom/crashlytics/android/core/AppData;
    .restart local v10    # "unityVersionProvider":Lcom/crashlytics/android/core/UnityVersionProvider;
    .restart local v11    # "appMeasurementEventListenerRegistrar":Lcom/crashlytics/android/core/AppMeasurementEventListenerRegistrar;
    .restart local v12    # "firebaseAnalyticsLogger":Lcom/crashlytics/android/answers/EventLogger;
    .restart local v16    # "firebaseCrashlyticsClientFlag":Z
    .restart local v17    # "infoProvider":Lcom/crashlytics/android/core/CrashlyticsPinningInfoProvider;
    .restart local v18    # "initializeSynchronously":Z
    .restart local v19    # "preferenceStore":Lio/fabric/sdk/android/services/persistence/PreferenceStore;
    :cond_5
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v2

    const-string v3, "CrashlyticsCore"

    const-string v4, "Exception handling initialization successful"

    invoke-interface {v2, v3, v4}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const/4 v2, 0x1

    goto/16 :goto_0
.end method
