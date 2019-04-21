.class public Lorg/acra/ErrorReporter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/acra/ErrorReporter$ReportBuilder;,
        Lorg/acra/ErrorReporter$TimeHelper;
    }
.end annotation


# static fields
.field private static final NULL_EXCEPTION_HANDLER_INITIALIZER:Lorg/acra/ExceptionHandlerInitializer;

.field private static mNotificationCounter:I


# instance fields
.field private final crashReportDataFactory:Lorg/acra/collector/CrashReportDataFactory;

.field private enabled:Z

.field private volatile exceptionHandlerInitializer:Lorg/acra/ExceptionHandlerInitializer;

.field private final fileNameParser:Lorg/acra/CrashReportFileNameParser;

.field private lastActivityCreated:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/app/Application;

.field private final mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final mReportSenders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/acra/sender/ReportSender;",
            ">;"
        }
    .end annotation
.end field

.field private final prefs:Landroid/content/SharedPreferences;

.field private final supportedAndroidVersion:Z

.field private toastWaitEnded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lorg/acra/ErrorReporter$1;

    invoke-direct {v0}, Lorg/acra/ErrorReporter$1;-><init>()V

    sput-object v0, Lorg/acra/ErrorReporter;->NULL_EXCEPTION_HANDLER_INITIALIZER:Lorg/acra/ExceptionHandlerInitializer;

    .line 126
    const/4 v0, 0x0

    sput v0, Lorg/acra/ErrorReporter;->mNotificationCounter:I

    return-void
.end method

.method constructor <init>(Landroid/app/Application;Landroid/content/SharedPreferences;ZZ)V
    .locals 4
    .param p1, "context"    # Landroid/app/Application;
    .param p2, "prefs"    # Landroid/content/SharedPreferences;
    .param p3, "enabled"    # Z
    .param p4, "supportedAndroidVersion"    # Z

    .prologue
    const/4 v0, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/acra/ErrorReporter;->enabled:Z

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/acra/ErrorReporter;->mReportSenders:Ljava/util/List;

    .line 100
    new-instance v1, Lorg/acra/CrashReportFileNameParser;

    invoke-direct {v1}, Lorg/acra/CrashReportFileNameParser;-><init>()V

    iput-object v1, p0, Lorg/acra/ErrorReporter;->fileNameParser:Lorg/acra/CrashReportFileNameParser;

    .line 107
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/acra/ErrorReporter;->lastActivityCreated:Ljava/lang/ref/WeakReference;

    .line 113
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/acra/ErrorReporter;->toastWaitEnded:Z

    .line 121
    sget-object v1, Lorg/acra/ErrorReporter;->NULL_EXCEPTION_HANDLER_INITIALIZER:Lorg/acra/ExceptionHandlerInitializer;

    iput-object v1, p0, Lorg/acra/ErrorReporter;->exceptionHandlerInitializer:Lorg/acra/ExceptionHandlerInitializer;

    .line 138
    iput-object p1, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    .line 139
    iput-object p2, p0, Lorg/acra/ErrorReporter;->prefs:Landroid/content/SharedPreferences;

    .line 140
    iput-boolean p3, p0, Lorg/acra/ErrorReporter;->enabled:Z

    .line 141
    iput-boolean p4, p0, Lorg/acra/ErrorReporter;->supportedAndroidVersion:Z

    .line 146
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/ACRAConfiguration;->getReportFields()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lorg/acra/ReportField;->INITIAL_CONFIGURATION:Lorg/acra/ReportField;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-static {v0}, Lorg/acra/collector/ConfigurationCollector;->collectConfiguration(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 155
    :cond_0
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 157
    invoke-static {}, Lorg/acra/collector/Compatibility;->getAPILevel()I

    move-result v2

    const/16 v3, 0xe

    if-lt v2, v3, :cond_1

    .line 159
    new-instance v2, Lorg/acra/ErrorReporter$2;

    invoke-direct {v2, p0}, Lorg/acra/ErrorReporter$2;-><init>(Lorg/acra/ErrorReporter;)V

    invoke-static {p1, v2}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ApplicationHelper;->registerActivityLifecycleCallbacks(Landroid/app/Application;Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;)V

    .line 210
    :cond_1
    new-instance v2, Lorg/acra/collector/CrashReportDataFactory;

    iget-object v3, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-direct {v2, v3, p2, v1, v0}, Lorg/acra/collector/CrashReportDataFactory;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/util/Calendar;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/acra/ErrorReporter;->crashReportDataFactory:Lorg/acra/collector/CrashReportDataFactory;

    .line 214
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 215
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 216
    return-void
.end method

.method static synthetic access$002(Lorg/acra/ErrorReporter;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0
    .param p0, "x0"    # Lorg/acra/ErrorReporter;
    .param p1, "x1"    # Ljava/lang/ref/WeakReference;

    .prologue
    .line 85
    iput-object p1, p0, Lorg/acra/ErrorReporter;->lastActivityCreated:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/acra/ErrorReporter;)Z
    .locals 1
    .param p0, "x0"    # Lorg/acra/ErrorReporter;

    .prologue
    .line 85
    iget-boolean v0, p0, Lorg/acra/ErrorReporter;->toastWaitEnded:Z

    return v0
.end method

.method static synthetic access$1102(Lorg/acra/ErrorReporter;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/acra/ErrorReporter;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lorg/acra/ErrorReporter;->toastWaitEnded:Z

    return p1
.end method

.method static synthetic access$1200(Lorg/acra/ErrorReporter;Ljava/lang/String;Lorg/acra/ErrorReporter$ReportBuilder;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lorg/acra/ErrorReporter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lorg/acra/ErrorReporter$ReportBuilder;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lorg/acra/ErrorReporter;->createCrashReportDialogIntent(Ljava/lang/String;Lorg/acra/ErrorReporter$ReportBuilder;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lorg/acra/ErrorReporter;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lorg/acra/ErrorReporter;
    .param p1, "x1"    # Ljava/lang/Thread;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lorg/acra/ErrorReporter;->endApplication(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/acra/ErrorReporter;Lorg/acra/ErrorReporter$ReportBuilder;)V
    .locals 0
    .param p0, "x0"    # Lorg/acra/ErrorReporter;
    .param p1, "x1"    # Lorg/acra/ErrorReporter$ReportBuilder;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lorg/acra/ErrorReporter;->report(Lorg/acra/ErrorReporter$ReportBuilder;)V

    return-void
.end method

.method static synthetic access$400(Lorg/acra/ErrorReporter;)Landroid/app/Application;
    .locals 1
    .param p0, "x0"    # Lorg/acra/ErrorReporter;

    .prologue
    .line 85
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    return-object v0
.end method

.method private containsOnlySilentOrApprovedReports([Ljava/lang/String;)Z
    .locals 5
    .param p1, "reportFileNames"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 981
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p1, v1

    .line 982
    iget-object v4, p0, Lorg/acra/ErrorReporter;->fileNameParser:Lorg/acra/CrashReportFileNameParser;

    invoke-virtual {v4, v3}, Lorg/acra/CrashReportFileNameParser;->isApproved(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 986
    :goto_1
    return v0

    .line 981
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 986
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private createCrashReportDialogIntent(Ljava/lang/String;Lorg/acra/ErrorReporter$ReportBuilder;)Landroid/content/Intent;
    .locals 4
    .param p1, "reportFileName"    # Ljava/lang/String;
    .param p2, "reportBuilder"    # Lorg/acra/ErrorReporter$ReportBuilder;

    .prologue
    .line 855
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Creating DialogIntent for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lorg/acra/ErrorReporter$ReportBuilder;->access$600(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/acra/ACRAConfiguration;->reportDialogClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 857
    const-string v1, "REPORT_FILE_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 858
    const-string v1, "REPORT_EXCEPTION"

    invoke-static {p2}, Lorg/acra/ErrorReporter$ReportBuilder;->access$600(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 859
    return-object v0
.end method

.method private createNotification(Ljava/lang/String;Lorg/acra/ErrorReporter$ReportBuilder;)V
    .locals 11
    .param p1, "reportFileName"    # Ljava/lang/String;
    .param p2, "reportBuilder"    # Lorg/acra/ErrorReporter$ReportBuilder;

    .prologue
    const/4 v10, 0x1

    .line 873
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 875
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v1

    .line 878
    invoke-interface {v1}, Lorg/acra/annotation/ReportsCrashes;->resNotifIcon()I

    move-result v2

    .line 880
    iget-object v3, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-interface {v1}, Lorg/acra/annotation/ReportsCrashes;->resNotifTickerText()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 881
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 883
    sget-object v6, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v7, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Creating Notification for "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    invoke-direct {p0, p1, p2}, Lorg/acra/ErrorReporter;->createCrashReportDialogIntent(Ljava/lang/String;Lorg/acra/ErrorReporter$ReportBuilder;)Landroid/content/Intent;

    move-result-object v6

    .line 885
    iget-object v7, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    sget v8, Lorg/acra/ErrorReporter;->mNotificationCounter:I

    add-int/lit8 v9, v8, 0x1

    sput v9, Lorg/acra/ErrorReporter;->mNotificationCounter:I

    const/high16 v9, 0x8000000

    invoke-static {v7, v8, v6, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 887
    iget-object v7, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-interface {v1}, Lorg/acra/annotation/ReportsCrashes;->resNotifTitle()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 888
    iget-object v8, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-interface {v1}, Lorg/acra/annotation/ReportsCrashes;->resNotifText()I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 890
    new-instance v8, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v9, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-direct {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 891
    invoke-virtual {v8, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 901
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 906
    invoke-direct {p0, p1, p2}, Lorg/acra/ErrorReporter;->createCrashReportDialogIntent(Ljava/lang/String;Lorg/acra/ErrorReporter$ReportBuilder;)Landroid/content/Intent;

    move-result-object v2

    .line 907
    const-string v3, "FORCE_CANCEL"

    invoke-virtual {v2, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 908
    iget-object v3, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 911
    const/16 v2, 0x29a

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 912
    return-void
.end method

.method private deletePendingReports(ZZI)V
    .locals 8
    .param p1, "deleteApprovedReports"    # Z
    .param p2, "deleteNonApprovedReports"    # Z
    .param p3, "nbOfLatestToKeep"    # I

    .prologue
    .line 956
    new-instance v0, Lorg/acra/CrashReportFinder;

    iget-object v1, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-direct {v0, v1}, Lorg/acra/CrashReportFinder;-><init>(Landroid/content/Context;)V

    .line 957
    invoke-virtual {v0}, Lorg/acra/CrashReportFinder;->getCrashReportFiles()[Ljava/lang/String;

    move-result-object v1

    .line 958
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 959
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    sub-int/2addr v2, p3

    if-ge v0, v2, :cond_3

    .line 960
    aget-object v2, v1, v0

    .line 961
    iget-object v3, p0, Lorg/acra/ErrorReporter;->fileNameParser:Lorg/acra/CrashReportFileNameParser;

    invoke-virtual {v3, v2}, Lorg/acra/CrashReportFileNameParser;->isApproved(Ljava/lang/String;)Z

    move-result v3

    .line 962
    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-nez v3, :cond_2

    if-eqz p2, :cond_2

    .line 963
    :cond_1
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 964
    sget-object v4, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v5, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Deleting file "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2

    .line 966
    sget-object v2, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v4, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not delete report : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 970
    :cond_3
    return-void
.end method

.method private endApplication(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "uncaughtExceptionThread"    # Ljava/lang/Thread;
    .param p2, "th"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 439
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/acra/ACRAConfiguration;->mode()Lorg/acra/ReportingInteractionMode;

    move-result-object v2

    sget-object v3, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    if-eq v2, v3, :cond_0

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/acra/ACRAConfiguration;->mode()Lorg/acra/ReportingInteractionMode;

    move-result-object v2

    sget-object v3, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-ne v2, v3, :cond_1

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/acra/ACRAConfiguration;->forceCloseDialogAfterToast()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v0

    .line 444
    :goto_0
    if-eqz p1, :cond_2

    .line 445
    :goto_1
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    iget-object v0, p0, Lorg/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_3

    .line 447
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Handing Exception on to default ExceptionHandler"

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 470
    :goto_2
    return-void

    :cond_1
    move v2, v1

    .line 439
    goto :goto_0

    :cond_2
    move v0, v1

    .line 444
    goto :goto_1

    .line 453
    :cond_3
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fatal error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 459
    iget-object v0, p0, Lorg/acra/ErrorReporter;->lastActivityCreated:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 460
    if-eqz v0, :cond_4

    .line 461
    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Finishing the last Activity prior to killing the Process"

    invoke-interface {v1, v2, v3}, Lorg/acra/log/ACRALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 463
    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Finished "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/acra/log/ACRALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v0, p0, Lorg/acra/ErrorReporter;->lastActivityCreated:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 467
    :cond_4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 468
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_2
.end method

.method private getReportFileName(Lorg/acra/collector/CrashReportData;)Ljava/lang/String;
    .locals 4
    .param p1, "crashData"    # Lorg/acra/collector/CrashReportData;

    .prologue
    .line 915
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 916
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 917
    sget-object v2, Lorg/acra/ReportField;->IS_SILENT:Lorg/acra/ReportField;

    invoke-virtual {p1, v2}, Lorg/acra/collector/CrashReportData;->getProperty(Lorg/acra/ReportField;)Ljava/lang/String;

    move-result-object v2

    .line 918
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v2, :cond_0

    sget-object v0, Lorg/acra/ACRAConstants;->SILENT_SUFFIX:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".stacktrace"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private report(Lorg/acra/ErrorReporter$ReportBuilder;)V
    .locals 13
    .param p1, "reportBuilder"    # Lorg/acra/ErrorReporter$ReportBuilder;

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 684
    iget-boolean v0, p0, Lorg/acra/ErrorReporter;->enabled:Z

    if-nez v0, :cond_1

    .line 846
    :cond_0
    :goto_0
    return-void

    .line 689
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/acra/ErrorReporter;->exceptionHandlerInitializer:Lorg/acra/ExceptionHandlerInitializer;

    invoke-interface {v0, p0}, Lorg/acra/ExceptionHandlerInitializer;->initializeExceptionHandler(Lorg/acra/ErrorReporter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    :goto_1
    invoke-static {p1}, Lorg/acra/ErrorReporter$ReportBuilder;->access$200(Lorg/acra/ErrorReporter$ReportBuilder;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 698
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/ACRAConfiguration;->mode()Lorg/acra/ReportingInteractionMode;

    move-result-object v0

    move-object v6, v0

    move v7, v8

    .line 711
    :goto_2
    sget-object v0, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-eq v6, v0, :cond_2

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/ACRAConfiguration;->resToastText()I

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;

    if-eq v6, v0, :cond_2

    sget-object v0, Lorg/acra/ReportingInteractionMode;->DIALOG:Lorg/acra/ReportingInteractionMode;

    if-ne v6, v0, :cond_9

    :cond_2
    move v10, v9

    .line 714
    :goto_3
    new-instance v12, Lorg/acra/ErrorReporter$TimeHelper;

    invoke-direct {v12, v11}, Lorg/acra/ErrorReporter$TimeHelper;-><init>(Lorg/acra/ErrorReporter$1;)V

    .line 715
    if-eqz v10, :cond_3

    .line 716
    new-instance v0, Lorg/acra/ErrorReporter$3;

    invoke-direct {v0, p0, v12}, Lorg/acra/ErrorReporter$3;-><init>(Lorg/acra/ErrorReporter;Lorg/acra/ErrorReporter$TimeHelper;)V

    invoke-virtual {v0}, Lorg/acra/ErrorReporter$3;->start()V

    .line 737
    :cond_3
    iget-object v0, p0, Lorg/acra/ErrorReporter;->crashReportDataFactory:Lorg/acra/collector/CrashReportDataFactory;

    invoke-static {p1}, Lorg/acra/ErrorReporter$ReportBuilder;->access$500(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lorg/acra/ErrorReporter$ReportBuilder;->access$600(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {p1}, Lorg/acra/ErrorReporter$ReportBuilder;->access$700(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/util/Map;

    move-result-object v3

    invoke-static {p1}, Lorg/acra/ErrorReporter$ReportBuilder;->access$200(Lorg/acra/ErrorReporter$ReportBuilder;)Z

    move-result v4

    invoke-static {p1}, Lorg/acra/ErrorReporter$ReportBuilder;->access$800(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/acra/collector/CrashReportDataFactory;->createCrashData(Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;ZLjava/lang/Thread;)Lorg/acra/collector/CrashReportData;

    move-result-object v0

    .line 743
    invoke-direct {p0, v0}, Lorg/acra/ErrorReporter;->getReportFileName(Lorg/acra/collector/CrashReportData;)Ljava/lang/String;

    move-result-object v4

    .line 744
    invoke-direct {p0, v4, v0}, Lorg/acra/ErrorReporter;->saveCrashReportFile(Ljava/lang/String;Lorg/acra/collector/CrashReportData;)V

    .line 746
    invoke-static {p1}, Lorg/acra/ErrorReporter$ReportBuilder;->access$900(Lorg/acra/ErrorReporter$ReportBuilder;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/ACRAConfiguration;->sendReportsAtShutdown()Z

    move-result v0

    if-nez v0, :cond_4

    .line 747
    invoke-static {p1}, Lorg/acra/ErrorReporter$ReportBuilder;->access$800(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/Thread;

    move-result-object v0

    invoke-static {p1}, Lorg/acra/ErrorReporter$ReportBuilder;->access$600(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/acra/ErrorReporter;->endApplication(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 752
    :cond_4
    sget-object v0, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    if-eq v6, v0, :cond_5

    sget-object v0, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-eq v6, v0, :cond_5

    iget-object v0, p0, Lorg/acra/ErrorReporter;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "acra.alwaysaccept"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 757
    :cond_5
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "About to start ReportSenderWorker from #handleException"

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    invoke-virtual {p0, v7, v9}, Lorg/acra/ErrorReporter;->startSendingReports(ZZ)Lorg/acra/SendWorker;

    move-result-object v2

    .line 759
    sget-object v0, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    if-ne v6, v0, :cond_6

    invoke-static {p1}, Lorg/acra/ErrorReporter$ReportBuilder;->access$900(Lorg/acra/ErrorReporter$ReportBuilder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    :cond_6
    :goto_4
    iput-boolean v9, p0, Lorg/acra/ErrorReporter;->toastWaitEnded:Z

    .line 771
    if-eqz v10, :cond_7

    .line 774
    iput-boolean v8, p0, Lorg/acra/ErrorReporter;->toastWaitEnded:Z

    .line 775
    new-instance v0, Lorg/acra/ErrorReporter$4;

    invoke-direct {v0, p0, v12}, Lorg/acra/ErrorReporter$4;-><init>(Lorg/acra/ErrorReporter;Lorg/acra/ErrorReporter$TimeHelper;)V

    invoke-virtual {v0}, Lorg/acra/ErrorReporter$4;->start()V

    .line 798
    :cond_7
    sget-object v0, Lorg/acra/ReportingInteractionMode;->DIALOG:Lorg/acra/ReportingInteractionMode;

    if-ne v6, v0, :cond_c

    iget-object v0, p0, Lorg/acra/ErrorReporter;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "acra.alwaysaccept"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_c

    move v3, v9

    .line 801
    :goto_5
    new-instance v0, Lorg/acra/ErrorReporter$5;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/acra/ErrorReporter$5;-><init>(Lorg/acra/ErrorReporter;Lorg/acra/SendWorker;ZLjava/lang/String;Lorg/acra/ErrorReporter$ReportBuilder;)V

    invoke-virtual {v0}, Lorg/acra/ErrorReporter$5;->start()V

    goto/16 :goto_0

    .line 691
    :catch_0
    move-exception v0

    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to initlize "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/acra/ErrorReporter;->exceptionHandlerInitializer:Lorg/acra/ExceptionHandlerInitializer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from #handleException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 700
    :cond_8
    sget-object v0, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    .line 706
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/ACRAConfiguration;->mode()Lorg/acra/ReportingInteractionMode;

    move-result-object v1

    sget-object v2, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    if-eq v1, v2, :cond_d

    move-object v6, v0

    move v7, v9

    .line 707
    goto/16 :goto_2

    :cond_9
    move v10, v8

    .line 711
    goto/16 :goto_3

    .line 765
    :cond_a
    sget-object v0, Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;

    if-ne v6, v0, :cond_b

    .line 766
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Creating Notification."

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    invoke-direct {p0, v4, p1}, Lorg/acra/ErrorReporter;->createNotification(Ljava/lang/String;Lorg/acra/ErrorReporter$ReportBuilder;)V

    :cond_b
    move-object v2, v11

    goto :goto_4

    :cond_c
    move v3, v8

    .line 798
    goto :goto_5

    :cond_d
    move-object v6, v0

    move v7, v8

    goto/16 :goto_2
.end method

.method private saveCrashReportFile(Ljava/lang/String;Lorg/acra/collector/CrashReportData;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "crashData"    # Lorg/acra/collector/CrashReportData;

    .prologue
    .line 937
    :try_start_0
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Writing crash report file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    new-instance v0, Lorg/acra/CrashReportPersister;

    iget-object v1, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-direct {v0, v1}, Lorg/acra/CrashReportPersister;-><init>(Landroid/content/Context;)V

    .line 939
    invoke-virtual {v0, p2, p1}, Lorg/acra/CrashReportPersister;->store(Lorg/acra/collector/CrashReportData;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 943
    :goto_0
    return-void

    .line 940
    :catch_0
    move-exception v0

    .line 941
    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "An error occurred while writing the report file..."

    invoke-interface {v1, v2, v3, v0}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public addReportSender(Lorg/acra/sender/ReportSender;)V
    .locals 1
    .param p1, "sender"    # Lorg/acra/sender/ReportSender;

    .prologue
    .line 338
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mReportSenders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    return-void
.end method

.method public checkReportsOnApplicationStart()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 540
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/ACRAConfiguration;->deleteOldUnsentReportsOnApplicationStart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 543
    iget-object v0, p0, Lorg/acra/ErrorReporter;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "acra.lastVersionNr"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v4, v0

    .line 544
    new-instance v0, Lorg/acra/util/PackageManagerWrapper;

    iget-object v3, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-direct {v0, v3}, Lorg/acra/util/PackageManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 545
    invoke-virtual {v0}, Lorg/acra/util/PackageManagerWrapper;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 546
    if-eqz v3, :cond_1

    .line 547
    iget v0, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v6, v0

    cmp-long v0, v6, v4

    if-lez v0, :cond_7

    move v0, v1

    .line 548
    :goto_0
    if-eqz v0, :cond_0

    .line 549
    invoke-virtual {p0}, Lorg/acra/ErrorReporter;->deletePendingReports()V

    .line 551
    :cond_0
    iget-object v0, p0, Lorg/acra/ErrorReporter;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 552
    const-string v4, "acra.lastVersionNr"

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 553
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 557
    :cond_1
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/ACRAConfiguration;->mode()Lorg/acra/ReportingInteractionMode;

    move-result-object v0

    .line 559
    sget-object v3, Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;

    if-eq v0, v3, :cond_2

    sget-object v3, Lorg/acra/ReportingInteractionMode;->DIALOG:Lorg/acra/ReportingInteractionMode;

    if-ne v0, v3, :cond_3

    :cond_2
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/acra/ACRAConfiguration;->deleteUnapprovedReportsOnApplicationStart()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 567
    invoke-virtual {p0, v1}, Lorg/acra/ErrorReporter;->deletePendingNonApprovedReports(Z)V

    .line 570
    :cond_3
    new-instance v3, Lorg/acra/CrashReportFinder;

    iget-object v4, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-direct {v3, v4}, Lorg/acra/CrashReportFinder;-><init>(Landroid/content/Context;)V

    .line 571
    invoke-virtual {v3}, Lorg/acra/CrashReportFinder;->getCrashReportFiles()[Ljava/lang/String;

    move-result-object v3

    .line 573
    if-eqz v3, :cond_6

    array-length v4, v3

    if-lez v4, :cond_6

    .line 582
    invoke-direct {p0, v3}, Lorg/acra/ErrorReporter;->containsOnlySilentOrApprovedReports([Ljava/lang/String;)Z

    move-result v3

    .line 584
    sget-object v4, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    if-eq v0, v4, :cond_4

    sget-object v4, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-eq v0, v4, :cond_4

    if-eqz v3, :cond_6

    sget-object v4, Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;

    if-eq v0, v4, :cond_4

    sget-object v4, Lorg/acra/ReportingInteractionMode;->DIALOG:Lorg/acra/ReportingInteractionMode;

    if-ne v0, v4, :cond_6

    .line 588
    :cond_4
    sget-object v4, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-ne v0, v4, :cond_5

    if-nez v3, :cond_5

    .line 591
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/acra/ACRAConfiguration;->resToastText()I

    move-result v3

    invoke-static {v0, v3, v1}, Lorg/acra/util/ToastSender;->sendToast(Landroid/content/Context;II)V

    .line 594
    :cond_5
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "About to start ReportSenderWorker from #checkReportOnApplicationStart"

    invoke-interface {v0, v1, v3}, Lorg/acra/log/ACRALog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-virtual {p0, v2, v2}, Lorg/acra/ErrorReporter;->startSendingReports(ZZ)Lorg/acra/SendWorker;

    .line 599
    :cond_6
    return-void

    :cond_7
    move v0, v2

    .line 547
    goto :goto_0
.end method

.method deletePendingNonApprovedReports(Z)V
    .locals 3
    .param p1, "keepOne"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 610
    if-eqz p1, :cond_0

    move v0, v1

    .line 611
    :goto_0
    invoke-direct {p0, v2, v1, v0}, Lorg/acra/ErrorReporter;->deletePendingReports(ZZI)V

    .line 612
    return-void

    :cond_0
    move v0, v2

    .line 610
    goto :goto_0
.end method

.method deletePendingReports()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 531
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0}, Lorg/acra/ErrorReporter;->deletePendingReports(ZZI)V

    .line 532
    return-void
.end method

.method public handleSilentException(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 482
    iget-boolean v0, p0, Lorg/acra/ErrorReporter;->enabled:Z

    if-eqz v0, :cond_0

    .line 483
    invoke-virtual {p0}, Lorg/acra/ErrorReporter;->reportBuilder()Lorg/acra/ErrorReporter$ReportBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/acra/ErrorReporter$ReportBuilder;->exception(Ljava/lang/Throwable;)Lorg/acra/ErrorReporter$ReportBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/ErrorReporter$ReportBuilder;->forceSilent()Lorg/acra/ErrorReporter$ReportBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/ErrorReporter$ReportBuilder;->send()V

    .line 487
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "ACRA sent Silent report."

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :goto_0
    return-void

    .line 491
    :cond_0
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "ACRA is disabled. Silent report not sent."

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeAllReportSenders()V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mReportSenders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 375
    return-void
.end method

.method public reportBuilder()Lorg/acra/ErrorReporter$ReportBuilder;
    .locals 1

    .prologue
    .line 654
    new-instance v0, Lorg/acra/ErrorReporter$ReportBuilder;

    invoke-direct {v0, p0}, Lorg/acra/ErrorReporter$ReportBuilder;-><init>(Lorg/acra/ErrorReporter;)V

    return-object v0
.end method

.method public setDefaultReportSenders()V
    .locals 5

    .prologue
    .line 994
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v0

    .line 995
    invoke-static {}, Lorg/acra/ACRA;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 996
    invoke-virtual {p0}, Lorg/acra/ErrorReporter;->removeAllReportSenders()V

    .line 1000
    const-string v2, ""

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->mailTo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1001
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reports will be sent by email (if accepted by user)."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    new-instance v0, Lorg/acra/sender/EmailIntentSender;

    invoke-direct {v0, v1}, Lorg/acra/sender/EmailIntentSender;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lorg/acra/ErrorReporter;->setReportSender(Lorg/acra/sender/ReportSender;)V

    .line 1026
    :cond_0
    :goto_0
    return-void

    .line 1006
    :cond_1
    new-instance v2, Lorg/acra/util/PackageManagerWrapper;

    invoke-direct {v2, v1}, Lorg/acra/util/PackageManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 1007
    const-string v3, "android.permission.INTERNET"

    invoke-virtual {v2, v3}, Lorg/acra/util/PackageManagerWrapper;->hasPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1013
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " should be granted permission android.permission.INTERNET"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " if you want your crash reports to be sent. If you don\'t want to add this permission to your application you can also enable sending reports by email. If this is your will then provide your email address in @ReportsCrashes(mailTo=\"your.account@domain.com\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1023
    :cond_2
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->formUri()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, ""

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->formUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1024
    new-instance v0, Lorg/acra/sender/HttpSender;

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/ACRAConfiguration;->httpMethod()Lorg/acra/sender/HttpSender$Method;

    move-result-object v1

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/acra/ACRAConfiguration;->reportType()Lorg/acra/sender/HttpSender$Type;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/acra/sender/HttpSender;-><init>(Lorg/acra/sender/HttpSender$Method;Lorg/acra/sender/HttpSender$Type;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lorg/acra/ErrorReporter;->setReportSender(Lorg/acra/sender/ReportSender;)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 501
    iget-boolean v0, p0, Lorg/acra/ErrorReporter;->supportedAndroidVersion:Z

    if-nez v0, :cond_0

    .line 502
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "ACRA 4.7.0+ requires Froyo or greater. ACRA is disabled and will NOT catch crashes or send messages."

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :goto_0
    return-void

    .line 504
    :cond_0
    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "ACRA is "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-string v0, "enabled"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/acra/log/ACRALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iput-boolean p1, p0, Lorg/acra/ErrorReporter;->enabled:Z

    goto :goto_0

    .line 504
    :cond_1
    const-string v0, "disabled"

    goto :goto_1
.end method

.method public setReportSender(Lorg/acra/sender/ReportSender;)V
    .locals 0
    .param p1, "sender"    # Lorg/acra/sender/ReportSender;

    .prologue
    .line 384
    invoke-virtual {p0}, Lorg/acra/ErrorReporter;->removeAllReportSenders()V

    .line 385
    invoke-virtual {p0, p1}, Lorg/acra/ErrorReporter;->addReportSender(Lorg/acra/sender/ReportSender;)V

    .line 386
    return-void
.end method

.method startSendingReports(ZZ)Lorg/acra/SendWorker;
    .locals 3
    .param p1, "onlySendSilentReports"    # Z
    .param p2, "approveReportsFirst"    # Z

    .prologue
    .line 517
    new-instance v0, Lorg/acra/SendWorker;

    iget-object v1, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    iget-object v2, p0, Lorg/acra/ErrorReporter;->mReportSenders:Ljava/util/List;

    invoke-direct {v0, v1, v2, p1, p2}, Lorg/acra/SendWorker;-><init>(Landroid/content/Context;Ljava/util/List;ZZ)V

    .line 518
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 519
    invoke-virtual {v0}, Lorg/acra/SendWorker;->run()V

    .line 524
    :goto_0
    return-object v0

    .line 521
    :cond_0
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 522
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 400
    :try_start_0
    iget-boolean v0, p0, Lorg/acra/ErrorReporter;->enabled:Z

    if-nez v0, :cond_2

    .line 401
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    .line 402
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ACRA is disabled for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - forwarding uncaught Exception on to default ExceptionHandler"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ACRA is disabled for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - no default ExceptionHandler"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ACRA caught a "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 427
    :catch_0
    move-exception v0

    iget-object v0, p0, Lorg/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 414
    :cond_2
    :try_start_1
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ACRA caught a "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 416
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Building report"

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-virtual {p0}, Lorg/acra/ErrorReporter;->reportBuilder()Lorg/acra/ErrorReporter$ReportBuilder;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/acra/ErrorReporter$ReportBuilder;->access$100(Lorg/acra/ErrorReporter$ReportBuilder;Ljava/lang/Thread;)Lorg/acra/ErrorReporter$ReportBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/acra/ErrorReporter$ReportBuilder;->exception(Ljava/lang/Throwable;)Lorg/acra/ErrorReporter$ReportBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/ErrorReporter$ReportBuilder;->endsApplication()Lorg/acra/ErrorReporter$ReportBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/ErrorReporter$ReportBuilder;->send()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
