.class public Lcom/newrelic/agent/android/AndroidAgentImpl;
.super Ljava/lang/Object;
.source "AndroidAgentImpl.java"

# interfaces
.implements Lcom/newrelic/agent/android/AgentImpl;
.implements Lcom/newrelic/agent/android/api/v1/ConnectionListener;
.implements Lcom/newrelic/agent/android/api/v2/TraceMachineInterface;
.implements Lcom/newrelic/agent/android/background/ApplicationStateListener;


# static fields
.field private static final LOCATION_ACCURACY_THRESHOLD:F = 500.0f

.field private static final cmp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/newrelic/agent/android/api/common/TransactionData;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# instance fields
.field private final agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

.field private applicationInformation:Lcom/newrelic/agent/android/harvest/ApplicationInformation;

.field private final context:Landroid/content/Context;

.field private deviceInformation:Lcom/newrelic/agent/android/harvest/DeviceInformation;

.field private final encoder:Lcom/newrelic/agent/android/util/Encoder;

.field private locationListener:Landroid/location/LocationListener;

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private machineMeasurementConsumer:Lcom/newrelic/agent/android/sample/MachineMeasurementConsumer;

.field private savedState:Lcom/newrelic/agent/android/SavedState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/AndroidAgentImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    .line 602
    new-instance v0, Lcom/newrelic/agent/android/AndroidAgentImpl$1;

    invoke-direct {v0}, Lcom/newrelic/agent/android/AndroidAgentImpl$1;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/AndroidAgentImpl;->cmp:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/newrelic/agent/android/AgentConfiguration;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "agentConfiguration"    # Lcom/newrelic/agent/android/AgentConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/newrelic/agent/android/AgentInitializationException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v3, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->lock:Ljava/util/concurrent/locks/Lock;

    .line 80
    new-instance v3, Lcom/newrelic/agent/android/util/AndroidEncoder;

    invoke-direct {v3}, Lcom/newrelic/agent/android/util/AndroidEncoder;-><init>()V

    iput-object v3, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->encoder:Lcom/newrelic/agent/android/util/Encoder;

    .line 93
    invoke-static {p1}, Lcom/newrelic/agent/android/AndroidAgentImpl;->appContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->context:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    .line 96
    new-instance v3, Lcom/newrelic/agent/android/SavedState;

    iget-object v4, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/newrelic/agent/android/SavedState;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->savedState:Lcom/newrelic/agent/android/SavedState;

    .line 98
    invoke-virtual {p0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->isDisabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    new-instance v3, Lcom/newrelic/agent/android/AgentInitializationException;

    const-string v4, "This version of the agent has been disabled"

    invoke-direct {v3, v4}, Lcom/newrelic/agent/android/AgentInitializationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->initApplicationInformation()V

    .line 104
    invoke-virtual {p2}, Lcom/newrelic/agent/android/AgentConfiguration;->useLocationService()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->getApplicationInformation()Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->getPackageId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 105
    sget-object v3, Lcom/newrelic/agent/android/AndroidAgentImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v4, "Location stats enabled"

    invoke-interface {v3, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->addLocationListener()V

    .line 110
    :cond_1
    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->setTraceMachineInterface(Lcom/newrelic/agent/android/api/v2/TraceMachineInterface;)V

    .line 112
    new-instance v3, Lcom/newrelic/agent/android/stores/SharedPrefsCrashStore;

    invoke-direct {v3, p1}, Lcom/newrelic/agent/android/stores/SharedPrefsCrashStore;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v3}, Lcom/newrelic/agent/android/AgentConfiguration;->setCrashStore(Lcom/newrelic/agent/android/crash/CrashStore;)V

    .line 113
    new-instance v3, Lcom/newrelic/agent/android/stores/SharedPrefsPayloadStore;

    invoke-direct {v3, p1}, Lcom/newrelic/agent/android/stores/SharedPrefsPayloadStore;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v3}, Lcom/newrelic/agent/android/AgentConfiguration;->setPayloadStore(Lcom/newrelic/agent/android/payload/PayloadStore;)V

    .line 114
    new-instance v3, Lcom/newrelic/agent/android/stores/SharedPrefsAnalyticAttributeStore;

    invoke-direct {v3, p1}, Lcom/newrelic/agent/android/stores/SharedPrefsAnalyticAttributeStore;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v3}, Lcom/newrelic/agent/android/AgentConfiguration;->setAnalyticAttributeStore(Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;)V

    .line 116
    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->addApplicationStateListener(Lcom/newrelic/agent/android/background/ApplicationStateListener;)V

    .line 118
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_3

    .line 122
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getUnityInstrumentationFlag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "YES"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 123
    new-instance v2, Lcom/newrelic/agent/android/util/ActivityLifecycleBackgroundListener;

    invoke-direct {v2}, Lcom/newrelic/agent/android/util/ActivityLifecycleBackgroundListener;-><init>()V

    .line 124
    .local v2, "backgroundListener":Lcom/newrelic/agent/android/util/UiBackgroundListener;
    instance-of v3, v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v3, :cond_2

    .line 126
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Application;

    if-eqz v3, :cond_2

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    .line 128
    .local v1, "application":Landroid/app/Application;
    move-object v0, v2

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    move-object v3, v0

    invoke-virtual {v1, v3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v1    # "application":Landroid/app/Application;
    :cond_2
    :goto_0
    invoke-virtual {p1, v2}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 140
    invoke-virtual {p0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->setupSession()V

    .line 142
    .end local v2    # "backgroundListener":Lcom/newrelic/agent/android/util/UiBackgroundListener;
    :cond_3
    return-void

    .line 135
    :cond_4
    new-instance v2, Lcom/newrelic/agent/android/util/UiBackgroundListener;

    invoke-direct {v2}, Lcom/newrelic/agent/android/util/UiBackgroundListener;-><init>()V

    .restart local v2    # "backgroundListener":Lcom/newrelic/agent/android/util/UiBackgroundListener;
    goto :goto_0

    .line 130
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/newrelic/agent/android/AndroidAgentImpl;Landroid/location/Location;)Z
    .locals 1
    .param p0, "x0"    # Lcom/newrelic/agent/android/AndroidAgentImpl;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/AndroidAgentImpl;->isAccurate(Landroid/location/Location;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/newrelic/agent/android/AndroidAgentImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/newrelic/agent/android/AndroidAgentImpl;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->removeLocationListener()V

    return-void
.end method

.method private addLocationListener()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 617
    iget-object v1, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->context:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 618
    .local v0, "locationManager":Landroid/location/LocationManager;
    if-nez v0, :cond_0

    .line 619
    sget-object v1, Lcom/newrelic/agent/android/AndroidAgentImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "Unable to retrieve reference to LocationManager. Disabling location listener."

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 649
    :goto_0
    return-void

    .line 623
    :cond_0
    new-instance v1, Lcom/newrelic/agent/android/AndroidAgentImpl$2;

    invoke-direct {v1, p0}, Lcom/newrelic/agent/android/AndroidAgentImpl$2;-><init>(Lcom/newrelic/agent/android/AndroidAgentImpl;)V

    iput-object v1, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->locationListener:Landroid/location/LocationListener;

    .line 648
    const-string v1, "passive"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0
.end method

.method private static appContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 370
    instance-of v0, p0, Landroid/app/Application;

    if-nez v0, :cond_0

    .line 371
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 373
    .end local p0    # "context":Landroid/content/Context;
    :cond_0
    return-object p0
.end method

.method private static deviceForm(Landroid/content/Context;)Lcom/newrelic/agent/android/api/v1/DeviceForm;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 345
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v1, 0xf

    .line 346
    .local v0, "deviceSize":I
    packed-switch v0, :pswitch_data_0

    .line 360
    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 361
    sget-object v1, Lcom/newrelic/agent/android/api/v1/DeviceForm;->XLARGE:Lcom/newrelic/agent/android/api/v1/DeviceForm;

    .line 363
    :goto_0
    return-object v1

    .line 348
    :pswitch_0
    sget-object v1, Lcom/newrelic/agent/android/api/v1/DeviceForm;->SMALL:Lcom/newrelic/agent/android/api/v1/DeviceForm;

    goto :goto_0

    .line 351
    :pswitch_1
    sget-object v1, Lcom/newrelic/agent/android/api/v1/DeviceForm;->NORMAL:Lcom/newrelic/agent/android/api/v1/DeviceForm;

    goto :goto_0

    .line 354
    :pswitch_2
    sget-object v1, Lcom/newrelic/agent/android/api/v1/DeviceForm;->LARGE:Lcom/newrelic/agent/android/api/v1/DeviceForm;

    goto :goto_0

    .line 363
    :cond_0
    sget-object v1, Lcom/newrelic/agent/android/api/v1/DeviceForm;->UNKNOWN:Lcom/newrelic/agent/android/api/v1/DeviceForm;

    goto :goto_0

    .line 346
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getUUID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 689
    iget-object v2, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->savedState:Lcom/newrelic/agent/android/SavedState;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/SavedState;->getConnectInformation()Lcom/newrelic/agent/android/harvest/ConnectInformation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/ConnectInformation;->getDeviceInformation()Lcom/newrelic/agent/android/harvest/DeviceInformation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 690
    .local v1, "uuid":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 691
    new-instance v0, Lcom/newrelic/agent/android/util/PersistentUUID;

    iget-object v2, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/newrelic/agent/android/util/PersistentUUID;-><init>(Landroid/content/Context;)V

    .line 692
    .local v0, "persistentUUID":Lcom/newrelic/agent/android/util/PersistentUUID;
    invoke-virtual {v0}, Lcom/newrelic/agent/android/util/PersistentUUID;->getPersistentUUID()Ljava/lang/String;

    move-result-object v1

    .line 693
    iget-object v2, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->savedState:Lcom/newrelic/agent/android/SavedState;

    invoke-virtual {v2, v1}, Lcom/newrelic/agent/android/SavedState;->saveDeviceId(Ljava/lang/String;)V

    .line 695
    .end local v0    # "persistentUUID":Lcom/newrelic/agent/android/util/PersistentUUID;
    :cond_0
    return-object v1
.end method

.method private getUnhandledExceptionHandlerName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 700
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 702
    :goto_0
    return-object v1

    .line 701
    :catch_0
    move-exception v0

    .line 702
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "unknown"

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;Lcom/newrelic/agent/android/AgentConfiguration;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "agentConfiguration"    # Lcom/newrelic/agent/android/AgentConfiguration;

    .prologue
    .line 507
    :try_start_0
    new-instance v1, Lcom/newrelic/agent/android/AndroidAgentImpl;

    invoke-direct {v1, p0, p1}, Lcom/newrelic/agent/android/AndroidAgentImpl;-><init>(Landroid/content/Context;Lcom/newrelic/agent/android/AgentConfiguration;)V

    invoke-static {v1}, Lcom/newrelic/agent/android/Agent;->setImpl(Lcom/newrelic/agent/android/AgentImpl;)V

    .line 508
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->start()V
    :try_end_0
    .catch Lcom/newrelic/agent/android/AgentInitializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :goto_0
    return-void

    .line 509
    :catch_0
    move-exception v0

    .line 510
    .local v0, "e":Lcom/newrelic/agent/android/AgentInitializationException;
    sget-object v1, Lcom/newrelic/agent/android/AndroidAgentImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to initialize the agent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/newrelic/agent/android/AgentInitializationException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isAccurate(Landroid/location/Location;)Z
    .locals 3
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v0, 0x0

    .line 677
    if-nez p1, :cond_1

    .line 680
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/high16 v1, 0x43fa0000    # 500.0f

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private pokeCanary()V
    .locals 0

    .prologue
    .line 729
    invoke-static {}, Lproguard/canary/NewRelicCanary;->canaryMethod()V

    .line 730
    return-void
.end method

.method private removeLocationListener()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 653
    iget-object v1, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->locationListener:Landroid/location/LocationListener;

    if-nez v1, :cond_0

    .line 668
    :goto_0
    return-void

    .line 658
    :cond_0
    iget-object v1, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->context:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 659
    .local v0, "locationManager":Landroid/location/LocationManager;
    if-nez v0, :cond_1

    .line 660
    sget-object v1, Lcom/newrelic/agent/android/AndroidAgentImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "Unable to retrieve reference to LocationManager. Can\'t unregister location listener."

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 664
    :cond_1
    monitor-enter v0

    .line 665
    :try_start_0
    iget-object v1, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 666
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->locationListener:Landroid/location/LocationListener;

    .line 667
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private stop(Z)V
    .locals 10
    .param p1, "finalSendData"    # Z

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->finalizeSession()V

    .line 450
    invoke-static {}, Lcom/newrelic/agent/android/sample/Sampler;->shutdown()V

    .line 451
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->haltTracing()V

    .line 455
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getEventManager()Lcom/newrelic/agent/android/analytics/EventManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/newrelic/agent/android/analytics/EventManager;->getEventsRecorded()I

    move-result v3

    .line 456
    .local v3, "eventsRecorded":I
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getEventManager()Lcom/newrelic/agent/android/analytics/EventManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/newrelic/agent/android/analytics/EventManager;->getEventsEjected()I

    move-result v0

    .line 457
    .local v0, "eventsEjected":I
    const-string v1, "Supportability/Events/Recorded"

    sget-object v2, Lcom/newrelic/agent/android/instrumentation/MetricCategory;->NONE:Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/instrumentation/MetricCategory;->name()Ljava/lang/String;

    move-result-object v2

    int-to-double v4, v0

    int-to-double v6, v0

    sget-object v8, Lcom/newrelic/agent/android/metric/MetricUnit;->OPERATIONS:Lcom/newrelic/agent/android/metric/MetricUnit;

    sget-object v9, Lcom/newrelic/agent/android/metric/MetricUnit;->OPERATIONS:Lcom/newrelic/agent/android/metric/MetricUnit;

    invoke-static/range {v1 .. v9}, Lcom/newrelic/agent/android/Measurements;->addCustomMetric(Ljava/lang/String;Ljava/lang/String;IDDLcom/newrelic/agent/android/metric/MetricUnit;Lcom/newrelic/agent/android/metric/MetricUnit;)V

    .line 459
    if-eqz p1, :cond_1

    .line 460
    invoke-virtual {p0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v1

    const-string v2, "Supportability/AgentHealth/HarvestOnMainThread"

    invoke-virtual {v1, v2}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 463
    :cond_0
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->harvestNow()V

    .line 466
    :cond_1
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->shutdown()V

    .line 467
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->clearActivityHistory()V

    .line 468
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->shutdown()V

    .line 469
    invoke-static {}, Lcom/newrelic/agent/android/Measurements;->shutdown()V

    .line 470
    invoke-static {}, Lcom/newrelic/agent/android/payload/PayloadController;->shutdown()V

    .line 471
    return-void
.end method


# virtual methods
.method public addTransactionData(Lcom/newrelic/agent/android/api/common/TransactionData;)V
    .locals 0
    .param p1, "transactionData"    # Lcom/newrelic/agent/android/api/common/TransactionData;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 381
    return-void
.end method

.method public applicationBackgrounded(Lcom/newrelic/agent/android/background/ApplicationStateEvent;)V
    .locals 2
    .param p1, "e"    # Lcom/newrelic/agent/android/background/ApplicationStateEvent;

    .prologue
    .line 546
    sget-object v0, Lcom/newrelic/agent/android/AndroidAgentImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "AndroidAgentImpl: application backgrounded "

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 547
    invoke-virtual {p0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->stop()V

    .line 548
    return-void
.end method

.method public applicationForegrounded(Lcom/newrelic/agent/android/background/ApplicationStateEvent;)V
    .locals 2
    .param p1, "e"    # Lcom/newrelic/agent/android/background/ApplicationStateEvent;

    .prologue
    .line 540
    sget-object v0, Lcom/newrelic/agent/android/AndroidAgentImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "AndroidAgentImpl: application foregrounded "

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 541
    invoke-virtual {p0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->start()V

    .line 542
    return-void
.end method

.method public connected(Lcom/newrelic/agent/android/api/v1/ConnectionEvent;)V
    .locals 2
    .param p1, "e"    # Lcom/newrelic/agent/android/api/v1/ConnectionEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 523
    sget-object v0, Lcom/newrelic/agent/android/AndroidAgentImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "AndroidAgentImpl: connected "

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 524
    return-void
.end method

.method public disable()V
    .locals 3

    .prologue
    .line 475
    sget-object v0, Lcom/newrelic/agent/android/AndroidAgentImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PERMANENTLY DISABLING AGENT v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 477
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->savedState:Lcom/newrelic/agent/android/SavedState;

    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/SavedState;->saveDisabledVersion(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 480
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->stop(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 482
    sget-object v0, Lcom/newrelic/agent/android/NullAgentImpl;->instance:Lcom/newrelic/agent/android/NullAgentImpl;

    invoke-static {v0}, Lcom/newrelic/agent/android/Agent;->setImpl(Lcom/newrelic/agent/android/AgentImpl;)V

    .line 485
    return-void

    .line 482
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/newrelic/agent/android/NullAgentImpl;->instance:Lcom/newrelic/agent/android/NullAgentImpl;

    invoke-static {v1}, Lcom/newrelic/agent/android/Agent;->setImpl(Lcom/newrelic/agent/android/AgentImpl;)V

    throw v0

    .line 479
    :catchall_1
    move-exception v0

    .line 480
    const/4 v1, 0x0

    :try_start_2
    invoke-direct {p0, v1}, Lcom/newrelic/agent/android/AndroidAgentImpl;->stop(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 482
    sget-object v1, Lcom/newrelic/agent/android/NullAgentImpl;->instance:Lcom/newrelic/agent/android/NullAgentImpl;

    invoke-static {v1}, Lcom/newrelic/agent/android/Agent;->setImpl(Lcom/newrelic/agent/android/AgentImpl;)V

    throw v0

    :catchall_2
    move-exception v0

    sget-object v1, Lcom/newrelic/agent/android/NullAgentImpl;->instance:Lcom/newrelic/agent/android/NullAgentImpl;

    invoke-static {v1}, Lcom/newrelic/agent/android/Agent;->setImpl(Lcom/newrelic/agent/android/AgentImpl;)V

    throw v0
.end method

.method public disconnected(Lcom/newrelic/agent/android/api/v1/ConnectionEvent;)V
    .locals 1
    .param p1, "e"    # Lcom/newrelic/agent/android/api/v1/ConnectionEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 534
    iget-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->savedState:Lcom/newrelic/agent/android/SavedState;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/SavedState;->clear()V

    .line 535
    return-void
.end method

.method protected finalizeSession()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public getAndClearTransactionData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/newrelic/agent/android/api/common/TransactionData;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 393
    const/4 v0, 0x0

    return-object v0
.end method

.method public getApplicationInformation()Lcom/newrelic/agent/android/harvest/ApplicationInformation;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->applicationInformation:Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    return-object v0
.end method

.method public getCrossProcessId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 400
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->savedState:Lcom/newrelic/agent/android/SavedState;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/SavedState;->getCrossProcessId()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 402
    iget-object v1, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getCurrentThreadId()J
    .locals 2

    .prologue
    .line 715
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentThreadName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 725
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInformation()Lcom/newrelic/agent/android/harvest/DeviceInformation;
    .locals 3

    .prologue
    .line 213
    iget-object v1, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->deviceInformation:Lcom/newrelic/agent/android/harvest/DeviceInformation;

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->deviceInformation:Lcom/newrelic/agent/android/harvest/DeviceInformation;

    .line 234
    :goto_0
    return-object v1

    .line 216
    :cond_0
    new-instance v0, Lcom/newrelic/agent/android/harvest/DeviceInformation;

    invoke-direct {v0}, Lcom/newrelic/agent/android/harvest/DeviceInformation;-><init>()V

    .line 218
    .local v0, "info":Lcom/newrelic/agent/android/harvest/DeviceInformation;
    const-string v1, "Android"

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setOsName(Ljava/lang/String;)V

    .line 219
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setOsVersion(Ljava/lang/String;)V

    .line 220
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setOsBuild(Ljava/lang/String;)V

    .line 221
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setModel(Ljava/lang/String;)V

    .line 222
    const-string v1, "AndroidAgent"

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setAgentName(Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setAgentVersion(Ljava/lang/String;)V

    .line 224
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setManufacturer(Ljava/lang/String;)V

    .line 225
    invoke-direct {p0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->getUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setDeviceId(Ljava/lang/String;)V

    .line 226
    const-string v1, "os.arch"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setArchitecture(Ljava/lang/String;)V

    .line 227
    const-string v1, "java.vm.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setRunTime(Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/newrelic/agent/android/AndroidAgentImpl;->deviceForm(Landroid/content/Context;)Lcom/newrelic/agent/android/api/v1/DeviceForm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newrelic/agent/android/api/v1/DeviceForm;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setSize(Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/AgentConfiguration;->getApplicationPlatform()Lcom/newrelic/agent/android/ApplicationPlatform;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setApplicationPlatform(Lcom/newrelic/agent/android/ApplicationPlatform;)V

    .line 230
    iget-object v1, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/AgentConfiguration;->getApplicationPlatformVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setApplicationPlatformVersion(Ljava/lang/String;)V

    .line 232
    iput-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->deviceInformation:Lcom/newrelic/agent/android/harvest/DeviceInformation;

    .line 234
    iget-object v1, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->deviceInformation:Lcom/newrelic/agent/android/harvest/DeviceInformation;

    goto :goto_0
.end method

.method public getEncoder()Lcom/newrelic/agent/android/util/Encoder;
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->encoder:Lcom/newrelic/agent/android/util/Encoder;

    return-object v0
.end method

.method public getEnvironmentInformation()Lcom/newrelic/agent/android/harvest/EnvironmentInformation;
    .locals 12

    .prologue
    .line 239
    new-instance v2, Lcom/newrelic/agent/android/harvest/EnvironmentInformation;

    invoke-direct {v2}, Lcom/newrelic/agent/android/harvest/EnvironmentInformation;-><init>()V

    .line 240
    .local v2, "envInfo":Lcom/newrelic/agent/android/harvest/EnvironmentInformation;
    iget-object v6, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->context:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 242
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v6, 0x2

    new-array v4, v6, [J

    .line 244
    .local v4, "free":[J
    :try_start_0
    new-instance v5, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 246
    .local v5, "rootStatFs":Landroid/os/StatFs;
    new-instance v3, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 248
    .local v3, "externalStatFs":Landroid/os/StatFs;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x12

    if-lt v6, v7, :cond_2

    .line 249
    const/4 v6, 0x0

    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v8

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v10

    mul-long/2addr v8, v10

    aput-wide v8, v4, v6

    .line 250
    const/4 v6, 0x1

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v8

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v10

    mul-long/2addr v8, v10

    aput-wide v8, v4, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    :goto_0
    const/4 v6, 0x0

    aget-wide v6, v4, v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 260
    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    aput-wide v8, v4, v6

    .line 261
    :cond_0
    const/4 v6, 0x1

    aget-wide v6, v4, v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 262
    const/4 v6, 0x1

    const-wide/16 v8, 0x0

    aput-wide v8, v4, v6

    .line 264
    :cond_1
    invoke-virtual {v2, v4}, Lcom/newrelic/agent/android/harvest/EnvironmentInformation;->setDiskAvailable([J)V

    .line 266
    .end local v3    # "externalStatFs":Landroid/os/StatFs;
    .end local v5    # "rootStatFs":Landroid/os/StatFs;
    :goto_1
    invoke-static {v0}, Lcom/newrelic/agent/android/sample/Sampler;->sampleMemory(Landroid/app/ActivityManager;)Lcom/newrelic/agent/android/tracing/Sample;

    move-result-object v6

    invoke-virtual {v6}, Lcom/newrelic/agent/android/tracing/Sample;->getSampleValue()Lcom/newrelic/agent/android/tracing/SampleValue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/newrelic/agent/android/tracing/SampleValue;->asLong()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/newrelic/agent/android/harvest/EnvironmentInformation;->setMemoryUsage(J)V

    .line 267
    iget-object v6, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v6}, Lcom/newrelic/agent/android/harvest/EnvironmentInformation;->setOrientation(I)V

    .line 268
    invoke-virtual {p0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->getNetworkCarrier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/newrelic/agent/android/harvest/EnvironmentInformation;->setNetworkStatus(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->getNetworkWanType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/newrelic/agent/android/harvest/EnvironmentInformation;->setNetworkWanType(Ljava/lang/String;)V

    .line 271
    return-object v2

    .line 252
    .restart local v3    # "externalStatFs":Landroid/os/StatFs;
    .restart local v5    # "rootStatFs":Landroid/os/StatFs;
    :cond_2
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    mul-int/2addr v7, v8

    int-to-long v8, v7

    aput-wide v8, v4, v6

    .line 253
    const/4 v6, 0x1

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    mul-int/2addr v7, v8

    int-to-long v8, v7

    aput-wide v8, v4, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 255
    .end local v3    # "externalStatFs":Landroid/os/StatFs;
    .end local v5    # "rootStatFs":Landroid/os/StatFs;
    :catch_0
    move-exception v1

    .line 256
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v1}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 259
    const/4 v6, 0x0

    aget-wide v6, v4, v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    .line 260
    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    aput-wide v8, v4, v6

    .line 261
    :cond_3
    const/4 v6, 0x1

    aget-wide v6, v4, v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_4

    .line 262
    const/4 v6, 0x1

    const-wide/16 v8, 0x0

    aput-wide v8, v4, v6

    .line 264
    :cond_4
    invoke-virtual {v2, v4}, Lcom/newrelic/agent/android/harvest/EnvironmentInformation;->setDiskAvailable([J)V

    goto :goto_1

    .line 259
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    const/4 v7, 0x0

    aget-wide v8, v4, v7

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gez v7, :cond_5

    .line 260
    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    aput-wide v8, v4, v7

    .line 261
    :cond_5
    const/4 v7, 0x1

    aget-wide v8, v4, v7

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gez v7, :cond_6

    .line 262
    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    aput-wide v8, v4, v7

    .line 264
    :cond_6
    invoke-virtual {v2, v4}, Lcom/newrelic/agent/android/harvest/EnvironmentInformation;->setDiskAvailable([J)V

    throw v6
.end method

.method public getNetworkCarrier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/newrelic/agent/android/util/Connectivity;->carrierNameFromContext(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWanType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/newrelic/agent/android/util/Connectivity;->wanType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseBodyLimit()I
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 420
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->savedState:Lcom/newrelic/agent/android/SavedState;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/SavedState;->getHarvestConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getResponse_body_limit()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 422
    iget-object v1, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected getSavedState()Lcom/newrelic/agent/android/SavedState;
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->savedState:Lcom/newrelic/agent/android/SavedState;

    return-object v0
.end method

.method public getSessionDurationMillis()J
    .locals 2

    .prologue
    .line 341
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->getMillisSinceStart()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStackTraceLimit()I
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 410
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->savedState:Lcom/newrelic/agent/android/SavedState;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/SavedState;->getStackTraceLimit()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 412
    iget-object v1, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public hasReachableNetworkConnection(Ljava/lang/String;)Z
    .locals 1
    .param p1, "reachableHost"    # Ljava/lang/String;

    .prologue
    .line 741
    iget-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/newrelic/agent/android/util/Reachability;->hasReachableNetworkConnection(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public initApplicationInformation()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/newrelic/agent/android/AgentInitializationException;
        }
    .end annotation

    .prologue
    .line 275
    iget-object v8, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->applicationInformation:Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    if-eqz v8, :cond_0

    .line 276
    sget-object v8, Lcom/newrelic/agent/android/AndroidAgentImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v9, "attempted to reinitialize ApplicationInformation."

    invoke-interface {v8, v9}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 332
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v8, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 281
    .local v7, "packageName":Ljava/lang/String;
    iget-object v8, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 283
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 285
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 290
    iget-object v8, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v8}, Lcom/newrelic/agent/android/AgentConfiguration;->getCustomApplicationVersion()Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "appVersion":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 292
    if-eqz v5, :cond_3

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 293
    iget-object v1, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 299
    :cond_1
    sget-object v8, Lcom/newrelic/agent/android/AndroidAgentImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Using application version "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 303
    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 304
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_4

    .line 305
    invoke-virtual {v6, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 316
    .end local v4    # "info":Landroid/content/pm/ApplicationInfo;
    .local v0, "appName":Ljava/lang/String;
    :goto_1
    sget-object v8, Lcom/newrelic/agent/android/AndroidAgentImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Using application name "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 318
    iget-object v8, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v8}, Lcom/newrelic/agent/android/AgentConfiguration;->getCustomBuildIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 319
    .local v2, "build":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 320
    if-eqz v5, :cond_5

    .line 322
    iget v8, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 328
    :cond_2
    :goto_2
    sget-object v8, Lcom/newrelic/agent/android/AndroidAgentImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Using build "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 330
    new-instance v8, Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    invoke-direct {v8, v0, v1, v7, v2}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->applicationInformation:Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    .line 331
    iget-object v8, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->applicationInformation:Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    iget v9, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v8, v9}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->setVersionCode(I)V

    goto/16 :goto_0

    .line 286
    .end local v0    # "appName":Ljava/lang/String;
    .end local v1    # "appVersion":Ljava/lang/String;
    .end local v2    # "build":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 287
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v8, Lcom/newrelic/agent/android/AgentInitializationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not determine package version: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/newrelic/agent/android/AgentInitializationException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 295
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "appVersion":Ljava/lang/String;
    :cond_3
    new-instance v8, Lcom/newrelic/agent/android/AgentInitializationException;

    const-string v9, "Your app doesn\'t appear to have a version defined. Ensure you have defined \'versionName\' in your manifest."

    invoke-direct {v8, v9}, Lcom/newrelic/agent/android/AgentInitializationException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 307
    .restart local v4    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_4
    move-object v0, v7

    .restart local v0    # "appName":Ljava/lang/String;
    goto :goto_1

    .line 309
    .end local v0    # "appName":Ljava/lang/String;
    .end local v4    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v3

    .line 310
    .restart local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v8, Lcom/newrelic/agent/android/AndroidAgentImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 311
    move-object v0, v7

    .line 315
    .restart local v0    # "appName":Ljava/lang/String;
    goto/16 :goto_1

    .line 312
    .end local v0    # "appName":Ljava/lang/String;
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v3

    .line 313
    .local v3, "e":Ljava/lang/SecurityException;
    sget-object v8, Lcom/newrelic/agent/android/AndroidAgentImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    invoke-virtual {v3}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 314
    move-object v0, v7

    .restart local v0    # "appName":Ljava/lang/String;
    goto/16 :goto_1

    .line 324
    .end local v3    # "e":Ljava/lang/SecurityException;
    .restart local v2    # "build":Ljava/lang/String;
    :cond_5
    const-string v2, ""

    .line 325
    sget-object v8, Lcom/newrelic/agent/android/AndroidAgentImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v9, "Your app doesn\'t appear to have a version code defined. Ensure you have defined \'versionCode\' in your manifest."

    invoke-interface {v8, v9}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected initialize()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 146
    invoke-virtual {p0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->setupSession()V

    .line 150
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    iget-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-static {v0, p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->initialize(Lcom/newrelic/agent/android/AgentConfiguration;Lcom/newrelic/agent/android/AgentImpl;)V

    .line 152
    iget-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->savedState:Lcom/newrelic/agent/android/SavedState;

    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->addHarvestListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V

    .line 153
    iget-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->initialize(Lcom/newrelic/agent/android/AgentConfiguration;)V

    .line 154
    iget-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->savedState:Lcom/newrelic/agent/android/SavedState;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/SavedState;->getHarvestConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-result-object v0

    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->setHarvestConfiguration(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V

    .line 155
    iget-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->savedState:Lcom/newrelic/agent/android/SavedState;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/SavedState;->getConnectInformation()Lcom/newrelic/agent/android/harvest/ConnectInformation;

    move-result-object v0

    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->setHarvestConnectInformation(Lcom/newrelic/agent/android/harvest/ConnectInformation;)V

    .line 157
    invoke-static {}, Lcom/newrelic/agent/android/Measurements;->initialize()V

    .line 158
    sget-object v0, Lcom/newrelic/agent/android/AndroidAgentImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "New Relic Agent v{0}"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getVersion()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 159
    sget-object v0, Lcom/newrelic/agent/android/AndroidAgentImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Application token: {0}"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v3}, Lcom/newrelic/agent/android/AgentConfiguration;->getApplicationToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->verbose(Ljava/lang/String;)V

    .line 161
    new-instance v0, Lcom/newrelic/agent/android/sample/MachineMeasurementConsumer;

    invoke-direct {v0}, Lcom/newrelic/agent/android/sample/MachineMeasurementConsumer;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->machineMeasurementConsumer:Lcom/newrelic/agent/android/sample/MachineMeasurementConsumer;

    .line 162
    iget-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->machineMeasurementConsumer:Lcom/newrelic/agent/android/sample/MachineMeasurementConsumer;

    invoke-static {v0}, Lcom/newrelic/agent/android/Measurements;->addMeasurementConsumer(Lcom/newrelic/agent/android/measurement/consumer/MeasurementConsumer;)V

    .line 164
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supportability/AgentHealth/UncaughtExceptionHandler/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->getUnhandledExceptionHandlerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-static {v0}, Lcom/newrelic/agent/android/payload/PayloadController;->initialize(Lcom/newrelic/agent/android/AgentConfiguration;)Lcom/newrelic/agent/android/payload/PayloadController;

    .line 168
    iget-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/newrelic/agent/android/sample/Sampler;->init(Landroid/content/Context;)V

    .line 169
    return-void
.end method

.method public isDisabled()Z
    .locals 2

    .prologue
    .line 488
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getVersion()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->savedState:Lcom/newrelic/agent/android/SavedState;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/SavedState;->getDisabledVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isUIThread()Z
    .locals 2

    .prologue
    .line 720
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeTransactionData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/newrelic/agent/android/api/common/TransactionData;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 387
    .local p1, "transactionDataList":Ljava/util/List;, "Ljava/util/List<Lcom/newrelic/agent/android/api/common/TransactionData;>;"
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 11
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 567
    if-nez p1, :cond_0

    .line 568
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Location must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 571
    :cond_0
    new-instance v1, Landroid/location/Geocoder;

    iget-object v2, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 572
    .local v1, "coder":Landroid/location/Geocoder;
    const/4 v7, 0x0

    .line 574
    .local v7, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 579
    :goto_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 597
    :cond_1
    :goto_1
    return-void

    .line 575
    :catch_0
    move-exception v10

    .line 576
    .local v10, "e":Ljava/io/IOException;
    sget-object v2, Lcom/newrelic/agent/android/AndroidAgentImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to geocode location: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 584
    .end local v10    # "e":Ljava/io/IOException;
    :cond_2
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 585
    .local v0, "address":Landroid/location/Address;
    if-eqz v0, :cond_1

    .line 590
    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v9

    .line 591
    .local v9, "countryCode":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v8

    .line 593
    .local v8, "adminArea":Ljava/lang/String;
    if-eqz v9, :cond_1

    if-eqz v8, :cond_1

    .line 594
    invoke-virtual {p0, v9, v8}, Lcom/newrelic/agent/android/AndroidAgentImpl;->setLocation(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    invoke-direct {p0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->removeLocationListener()V

    goto :goto_1
.end method

.method public setLocation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "countryCode"    # Ljava/lang/String;
    .param p2, "adminRegion"    # Ljava/lang/String;

    .prologue
    .line 552
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 553
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Country code and administrative region are required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 557
    :cond_1
    return-void
.end method

.method protected setSavedState(Lcom/newrelic/agent/android/SavedState;)V
    .locals 0
    .param p1, "savedState"    # Lcom/newrelic/agent/android/SavedState;

    .prologue
    .line 737
    iput-object p1, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->savedState:Lcom/newrelic/agent/android/SavedState;

    .line 738
    return-void
.end method

.method protected setupSession()V
    .locals 1

    .prologue
    .line 173
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->clearActivityHistory()V

    .line 174
    iget-object v0, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/AgentConfiguration;->provideSessionId()Ljava/lang/String;

    .line 175
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->initialize()V

    .line 430
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->start()V

    .line 438
    :goto_0
    return-void

    .line 436
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->stop(Z)V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 442
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->stop(Z)V

    .line 443
    return-void
.end method

.method public updateSavedConnectInformation()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 185
    iget-object v5, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->savedState:Lcom/newrelic/agent/android/SavedState;

    invoke-virtual {v5}, Lcom/newrelic/agent/android/SavedState;->getConnectInformation()Lcom/newrelic/agent/android/harvest/ConnectInformation;

    move-result-object v3

    .line 186
    .local v3, "savedConnectInformation":Lcom/newrelic/agent/android/harvest/ConnectInformation;
    new-instance v1, Lcom/newrelic/agent/android/harvest/ConnectInformation;

    invoke-virtual {p0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->getApplicationInformation()Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    move-result-object v5

    invoke-virtual {p0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->getDeviceInformation()Lcom/newrelic/agent/android/harvest/DeviceInformation;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lcom/newrelic/agent/android/harvest/ConnectInformation;-><init>(Lcom/newrelic/agent/android/harvest/ApplicationInformation;Lcom/newrelic/agent/android/harvest/DeviceInformation;)V

    .line 187
    .local v1, "newConnectInformation":Lcom/newrelic/agent/android/harvest/ConnectInformation;
    iget-object v5, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->savedState:Lcom/newrelic/agent/android/SavedState;

    invoke-virtual {v5}, Lcom/newrelic/agent/android/SavedState;->getAppToken()Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "savedAppToken":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lcom/newrelic/agent/android/harvest/ConnectInformation;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v5}, Lcom/newrelic/agent/android/AgentConfiguration;->getApplicationToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 193
    :cond_0
    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/ConnectInformation;->getApplicationInformation()Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    move-result-object v5

    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/ConnectInformation;->getApplicationInformation()Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->isAppUpgrade(Lcom/newrelic/agent/android/harvest/ApplicationInformation;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 194
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v5

    const-string v6, "Mobile/App/Upgrade"

    invoke-virtual {v5, v6}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 196
    new-instance v0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string/jumbo v5, "upgradeFrom"

    .line 197
    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/ConnectInformation;->getApplicationInformation()Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->getAppVersion()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .local v0, "attribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->addAttributeUnchecked(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;Z)Z

    .line 201
    .end local v0    # "attribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    :cond_1
    iget-object v4, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->savedState:Lcom/newrelic/agent/android/SavedState;

    invoke-virtual {v4}, Lcom/newrelic/agent/android/SavedState;->clear()V

    .line 202
    iget-object v4, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->savedState:Lcom/newrelic/agent/android/SavedState;

    invoke-virtual {v4, v1}, Lcom/newrelic/agent/android/SavedState;->saveConnectInformation(Lcom/newrelic/agent/android/harvest/ConnectInformation;)V

    .line 203
    iget-object v4, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->savedState:Lcom/newrelic/agent/android/SavedState;

    iget-object v5, p0, Lcom/newrelic/agent/android/AndroidAgentImpl;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v5}, Lcom/newrelic/agent/android/AgentConfiguration;->getApplicationToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/newrelic/agent/android/SavedState;->saveAppToken(Ljava/lang/String;)V

    .line 205
    const/4 v4, 0x1

    .line 207
    :cond_2
    return v4
.end method
