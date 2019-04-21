.class public Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;
.super Ljava/lang/Object;
.source "HapticFeedbackController.java"


# instance fields
.field private final mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mIsGloballyEnabled:Z

.field private mLastVibrate:J

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;->mContext:Landroid/content/Context;

    .line 33
    new-instance v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController$1;-><init>(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;->mContentObserver:Landroid/database/ContentObserver;

    .line 39
    return-void
.end method

.method static synthetic access$002(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.dateTime.materialdatetimepicker.HapticFeedbackController"

    const-string v2, "access$002"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    iput-boolean p1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;->mIsGloballyEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;)Landroid/content/Context;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.dateTime.materialdatetimepicker.HapticFeedbackController"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;)Z
    .locals 5
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.dateTime.materialdatetimepicker.HapticFeedbackController"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    invoke-static {p0}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;->checkGlobalSetting(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static checkGlobalSetting(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "com.mcdonalds.app.ui.dateTime.materialdatetimepicker.HapticFeedbackController"

    const-string v4, "checkGlobalSetting"

    new-array v5, v0, [Ljava/lang/Object;

    aput-object p0, v5, v1

    invoke-static {v2, v3, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private hasVibratePermission(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "hasVibratePermission"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 63
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v4, "android.permission.VIBRATE"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 64
    .local v0, "hasPerm":I
    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method


# virtual methods
.method public start()V
    .locals 4

    .prologue
    const-string v1, "start"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;->hasVibratePermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;->mVibrator:Landroid/os/Vibrator;

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;->checkGlobalSetting(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;->mIsGloballyEnabled:Z

    .line 51
    const-string v1, "haptic_feedback_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 52
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 53
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "stop"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iput-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;->mVibrator:Landroid/os/Vibrator;

    .line 72
    iget-object v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 73
    return-void
.end method

.method public tryVibrate()V
    .locals 6

    .prologue
    const-string v2, "tryVibrate"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;->mVibrator:Landroid/os/Vibrator;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;->mIsGloballyEnabled:Z

    if-eqz v2, :cond_0

    .line 81
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 83
    .local v0, "now":J
    iget-wide v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;->mLastVibrate:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 85
    iput-wide v0, p0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/HapticFeedbackController;->mLastVibrate:J

    .line 88
    .end local v0    # "now":J
    :cond_0
    return-void
.end method
