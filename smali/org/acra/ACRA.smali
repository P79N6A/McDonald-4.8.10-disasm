.class public Lorg/acra/ACRA;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/acra/ACRA$2;
    }
.end annotation


# static fields
.field public static final DEV_LOGGING:Z = false

.field public static final LOG_TAG:Ljava/lang/String;

.field public static final PREF_ALWAYS_ACCEPT:Ljava/lang/String; = "acra.alwaysaccept"

.field public static final PREF_DISABLE_ACRA:Ljava/lang/String; = "acra.disable"

.field public static final PREF_ENABLE_ACRA:Ljava/lang/String; = "acra.enable"

.field public static final PREF_ENABLE_DEVICE_ID:Ljava/lang/String; = "acra.deviceid.enable"

.field public static final PREF_ENABLE_SYSTEM_LOGS:Ljava/lang/String; = "acra.syslog.enable"

.field public static final PREF_LAST_VERSION_NR:Ljava/lang/String; = "acra.lastVersionNr"

.field public static final PREF_USER_EMAIL_ADDRESS:Ljava/lang/String; = "acra.user.email"

.field private static configProxy:Lorg/acra/ACRAConfiguration;

.field private static errorReporterSingleton:Lorg/acra/ErrorReporter;

.field public static log:Lorg/acra/log/ACRALog;

.field private static mApplication:Landroid/app/Application;

.field private static mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lorg/acra/ACRA;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    .line 47
    new-instance v0, Lorg/acra/log/AndroidLogDelegate;

    invoke-direct {v0}, Lorg/acra/log/AndroidLogDelegate;-><init>()V

    sput-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    return-void
.end method

.method static synthetic access$000(Landroid/content/SharedPreferences;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/SharedPreferences;

    .prologue
    .line 41
    invoke-static {p0}, Lorg/acra/ACRA;->shouldDisableACRA(Landroid/content/SharedPreferences;)Z

    move-result v0

    return v0
.end method

.method static checkCrashResources(Lorg/acra/annotation/ReportsCrashes;)V
    .locals 2
    .param p0, "conf"    # Lorg/acra/annotation/ReportsCrashes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/acra/ACRAConfigurationException;
        }
    .end annotation

    .prologue
    .line 251
    sget-object v0, Lorg/acra/ACRA$2;->$SwitchMap$org$acra$ReportingInteractionMode:[I

    invoke-interface {p0}, Lorg/acra/annotation/ReportsCrashes;->mode()Lorg/acra/ReportingInteractionMode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/ReportingInteractionMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 277
    :cond_0
    return-void

    .line 253
    :pswitch_0
    invoke-interface {p0}, Lorg/acra/annotation/ReportsCrashes;->resToastText()I

    move-result v0

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Lorg/acra/ACRAConfigurationException;

    const-string v1, "TOAST mode: you have to define the resToastText parameter in your application @ReportsCrashes() annotation."

    invoke-direct {v0, v1}, Lorg/acra/ACRAConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :pswitch_1
    invoke-interface {p0}, Lorg/acra/annotation/ReportsCrashes;->resNotifTickerText()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/acra/annotation/ReportsCrashes;->resNotifTitle()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/acra/annotation/ReportsCrashes;->resNotifText()I

    move-result v0

    if-nez v0, :cond_2

    .line 260
    :cond_1
    new-instance v0, Lorg/acra/ACRAConfigurationException;

    const-string v1, "NOTIFICATION mode: you have to define at least the resNotifTickerText, resNotifTitle, resNotifText parameters in your application @ReportsCrashes() annotation."

    invoke-direct {v0, v1}, Lorg/acra/ACRAConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_2
    const-class v0, Lorg/acra/CrashReportDialog;

    invoke-interface {p0}, Lorg/acra/annotation/ReportsCrashes;->reportDialogClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/acra/annotation/ReportsCrashes;->resDialogText()I

    move-result v0

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Lorg/acra/ACRAConfigurationException;

    const-string v1, "NOTIFICATION mode: using the (default) CrashReportDialog requires you have to define the resDialogText parameter in your application @ReportsCrashes() annotation."

    invoke-direct {v0, v1}, Lorg/acra/ACRAConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :pswitch_2
    const-class v0, Lorg/acra/CrashReportDialog;

    invoke-interface {p0}, Lorg/acra/annotation/ReportsCrashes;->reportDialogClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/acra/annotation/ReportsCrashes;->resDialogText()I

    move-result v0

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Lorg/acra/ACRAConfigurationException;

    const-string v1, "DIALOG mode: using the (default) CrashReportDialog requires you to define the resDialogText parameter in your application @ReportsCrashes() annotation."

    invoke-direct {v0, v1}, Lorg/acra/ACRAConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getACRASharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 289
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v0

    .line 290
    const-string v1, ""

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->sharedPreferencesName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 291
    sget-object v1, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->sharedPreferencesName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->sharedPreferencesMode()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 293
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method static getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 343
    sget-object v0, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public static getConfig()Lorg/acra/ACRAConfiguration;
    .locals 3

    .prologue
    .line 303
    sget-object v0, Lorg/acra/ACRA;->configProxy:Lorg/acra/ACRAConfiguration;

    if-nez v0, :cond_1

    .line 304
    sget-object v0, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 305
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Calling ACRA.getConfig() before ACRA.init() gives you an empty configuration instance. You might prefer calling ACRA.getNewDefaultConfig(Application) to get an instance with default values taken from a @ReportsCrashes annotation."

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_0
    sget-object v0, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lorg/acra/ACRA;->getNewDefaultConfig(Landroid/app/Application;)Lorg/acra/ACRAConfiguration;

    move-result-object v0

    sput-object v0, Lorg/acra/ACRA;->configProxy:Lorg/acra/ACRAConfiguration;

    .line 310
    :cond_1
    sget-object v0, Lorg/acra/ACRA;->configProxy:Lorg/acra/ACRAConfiguration;

    return-object v0
.end method

.method public static getErrorReporter()Lorg/acra/ErrorReporter;
    .locals 2

    .prologue
    .line 218
    sget-object v0, Lorg/acra/ACRA;->errorReporterSingleton:Lorg/acra/ErrorReporter;

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access ErrorReporter before ACRA#init"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    sget-object v0, Lorg/acra/ACRA;->errorReporterSingleton:Lorg/acra/ErrorReporter;

    return-object v0
.end method

.method public static getNewDefaultConfig(Landroid/app/Application;)Lorg/acra/ACRAConfiguration;
    .locals 3
    .param p0, "app"    # Landroid/app/Application;

    .prologue
    .line 319
    if-eqz p0, :cond_0

    .line 320
    new-instance v1, Lorg/acra/ACRAConfiguration;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lorg/acra/annotation/ReportsCrashes;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/acra/annotation/ReportsCrashes;

    invoke-direct {v1, v0}, Lorg/acra/ACRAConfiguration;-><init>(Lorg/acra/annotation/ReportsCrashes;)V

    move-object v0, v1

    .line 322
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/acra/ACRAConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/acra/ACRAConfiguration;-><init>(Lorg/acra/annotation/ReportsCrashes;)V

    goto :goto_0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 1
    .param p0, "app"    # Landroid/app/Application;

    .prologue
    .line 115
    new-instance v0, Lorg/acra/ACRAConfiguration;

    invoke-direct {v0}, Lorg/acra/ACRAConfiguration;-><init>()V

    invoke-static {p0, v0}, Lorg/acra/ACRA;->init(Landroid/app/Application;Lorg/acra/ACRAConfiguration;)V

    .line 116
    return-void
.end method

.method public static init(Landroid/app/Application;Lorg/acra/ACRAConfiguration;)V
    .locals 1
    .param p0, "app"    # Landroid/app/Application;
    .param p1, "config"    # Lorg/acra/ACRAConfiguration;

    .prologue
    .line 130
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/acra/ACRA;->init(Landroid/app/Application;Lorg/acra/ACRAConfiguration;Z)V

    .line 131
    return-void
.end method

.method public static init(Landroid/app/Application;Lorg/acra/ACRAConfiguration;Z)V
    .locals 7
    .param p0, "app"    # Landroid/app/Application;
    .param p1, "config"    # Lorg/acra/ACRAConfiguration;
    .param p2, "checkReportsOnApplicationStart"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 151
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_1

    move v2, v0

    .line 152
    :goto_0
    if-nez v2, :cond_0

    .line 153
    sget-object v3, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v4, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v5, "ACRA 4.7.0+ requires Froyo or greater. ACRA is disabled and will NOT catch crashes or send messages."

    invoke-interface {v3, v4, v5}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    sget-object v3, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    if-eqz v3, :cond_2

    .line 157
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "ACRA#init called more than once. Won\'t do anything more."

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :goto_1
    return-void

    :cond_1
    move v2, v1

    .line 151
    goto :goto_0

    .line 160
    :cond_2
    sput-object p0, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    .line 162
    if-nez p1, :cond_3

    .line 163
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "ACRA#init called but no ACRAConfiguration provided"

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 166
    :cond_3
    sput-object p1, Lorg/acra/ACRA;->configProxy:Lorg/acra/ACRAConfiguration;

    .line 168
    invoke-static {}, Lorg/acra/ACRA;->getACRASharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 171
    :try_start_0
    invoke-static {p1}, Lorg/acra/ACRA;->checkCrashResources(Lorg/acra/annotation/ReportsCrashes;)V

    .line 174
    if-eqz v2, :cond_4

    invoke-static {v3}, Lorg/acra/ACRA;->shouldDisableACRA(Landroid/content/SharedPreferences;)Z

    move-result v4

    if-nez v4, :cond_4

    move v1, v0

    .line 175
    :cond_4
    sget-object v4, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v5, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v0, "ACRA is "

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_6

    const-string v0, "enabled"

    :goto_2
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " for "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v6, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-virtual {v6}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", initializing..."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v0, Lorg/acra/ErrorReporter;

    sget-object v4, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-direct {v0, v4, v3, v1, v2}, Lorg/acra/ErrorReporter;-><init>(Landroid/app/Application;Landroid/content/SharedPreferences;ZZ)V

    .line 179
    invoke-virtual {v0}, Lorg/acra/ErrorReporter;->setDefaultReportSenders()V

    .line 181
    sput-object v0, Lorg/acra/ACRA;->errorReporterSingleton:Lorg/acra/ErrorReporter;

    .line 184
    if-eqz p2, :cond_5

    .line 185
    invoke-virtual {v0}, Lorg/acra/ErrorReporter;->checkReportsOnApplicationStart()V
    :try_end_0
    .catch Lorg/acra/ACRAConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :cond_5
    :goto_3
    new-instance v0, Lorg/acra/ACRA$1;

    invoke-direct {v0}, Lorg/acra/ACRA$1;-><init>()V

    sput-object v0, Lorg/acra/ACRA;->mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 209
    sget-object v0, Lorg/acra/ACRA;->mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v3, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_1

    .line 175
    :cond_6
    :try_start_1
    const-string v0, "disabled"
    :try_end_1
    .catch Lorg/acra/ACRAConfigurationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 188
    :catch_0
    move-exception v0

    .line 189
    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Error : "

    invoke-interface {v1, v2, v4, v0}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method static isDebuggable()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 334
    sget-object v1, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 336
    :try_start_0
    sget-object v2, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 338
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setLog(Lorg/acra/log/ACRALog;)V
    .locals 2
    .param p0, "log"    # Lorg/acra/log/ACRALog;

    .prologue
    .line 347
    if-nez p0, :cond_0

    .line 348
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ACRALog cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_0
    sput-object p0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    .line 351
    return-void
.end method

.method private static shouldDisableACRA(Landroid/content/SharedPreferences;)Z
    .locals 4
    .param p0, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 235
    .line 237
    :try_start_0
    const-string v2, "acra.enable"

    const/4 v3, 0x1

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 238
    const-string v3, "acra.disable"

    if-nez v2, :cond_0

    :goto_0
    invoke-interface {p0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 242
    :goto_1
    return v0

    :cond_0
    move v1, v0

    .line 238
    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method
