.class Lcom/crashlytics/android/core/CrashlyticsController$7;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/CrashlyticsController;->handleUncaughtException(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$SettingsDataProvider;Ljava/lang/Thread;Ljava/lang/Throwable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/core/CrashlyticsController;

.field final synthetic val$ex:Ljava/lang/Throwable;

.field final synthetic val$firebaseCrashlyticsClientFlag:Z

.field final synthetic val$settingsDataProvider:Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$SettingsDataProvider;

.field final synthetic val$thread:Ljava/lang/Thread;

.field final synthetic val$time:Ljava/util/Date;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/CrashlyticsController;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$SettingsDataProvider;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/crashlytics/android/core/CrashlyticsController;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsController$7;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    iput-object p2, p0, Lcom/crashlytics/android/core/CrashlyticsController$7;->val$time:Ljava/util/Date;

    iput-object p3, p0, Lcom/crashlytics/android/core/CrashlyticsController$7;->val$thread:Ljava/lang/Thread;

    iput-object p4, p0, Lcom/crashlytics/android/core/CrashlyticsController$7;->val$ex:Ljava/lang/Throwable;

    iput-object p5, p0, Lcom/crashlytics/android/core/CrashlyticsController$7;->val$settingsDataProvider:Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$SettingsDataProvider;

    iput-boolean p6, p0, Lcom/crashlytics/android/core/CrashlyticsController$7;->val$firebaseCrashlyticsClientFlag:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsController$7;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 326
    iget-object v7, p0, Lcom/crashlytics/android/core/CrashlyticsController$7;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    invoke-static {v7}, Lcom/crashlytics/android/core/CrashlyticsController;->access$400(Lcom/crashlytics/android/core/CrashlyticsController;)Lcom/crashlytics/android/core/CrashlyticsCore;

    move-result-object v7

    invoke-virtual {v7}, Lcom/crashlytics/android/core/CrashlyticsCore;->createCrashMarker()V

    .line 328
    iget-object v7, p0, Lcom/crashlytics/android/core/CrashlyticsController$7;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    iget-object v8, p0, Lcom/crashlytics/android/core/CrashlyticsController$7;->val$time:Ljava/util/Date;

    iget-object v9, p0, Lcom/crashlytics/android/core/CrashlyticsController$7;->val$thread:Ljava/lang/Thread;

    iget-object v10, p0, Lcom/crashlytics/android/core/CrashlyticsController$7;->val$ex:Ljava/lang/Throwable;

    invoke-static {v7, v8, v9, v10}, Lcom/crashlytics/android/core/CrashlyticsController;->access$500(Lcom/crashlytics/android/core/CrashlyticsController;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 330
    iget-object v7, p0, Lcom/crashlytics/android/core/CrashlyticsController$7;->val$settingsDataProvider:Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$SettingsDataProvider;

    invoke-interface {v7}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$SettingsDataProvider;->getSettingsData()Lio/fabric/sdk/android/services/settings/SettingsData;

    move-result-object v5

    .line 331
    .local v5, "settingsData":Lio/fabric/sdk/android/services/settings/SettingsData;
    const/4 v4, 0x0

    .line 332
    .local v4, "sessionSettings":Lio/fabric/sdk/android/services/settings/SessionSettingsData;
    const/4 v0, 0x0

    .line 333
    .local v0, "featuresSettings":Lio/fabric/sdk/android/services/settings/FeaturesSettingsData;
    if-eqz v5, :cond_0

    .line 334
    iget-object v4, v5, Lio/fabric/sdk/android/services/settings/SettingsData;->sessionData:Lio/fabric/sdk/android/services/settings/SessionSettingsData;

    .line 335
    iget-object v0, v5, Lio/fabric/sdk/android/services/settings/SettingsData;->featuresData:Lio/fabric/sdk/android/services/settings/FeaturesSettingsData;

    .line 338
    :cond_0
    if-eqz v0, :cond_1

    iget-boolean v7, v0, Lio/fabric/sdk/android/services/settings/FeaturesSettingsData;->firebaseCrashlyticsEnabled:Z

    if-eqz v7, :cond_6

    :cond_1
    move v1, v3

    .line 340
    .local v1, "firebaseCrashlyticsEnabledSetting":Z
    :goto_0
    if-nez v1, :cond_2

    iget-boolean v7, p0, Lcom/crashlytics/android/core/CrashlyticsController$7;->val$firebaseCrashlyticsClientFlag:Z

    if-eqz v7, :cond_3

    .line 341
    :cond_2
    iget-object v7, p0, Lcom/crashlytics/android/core/CrashlyticsController$7;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    iget-object v8, p0, Lcom/crashlytics/android/core/CrashlyticsController$7;->val$time:Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/crashlytics/android/core/CrashlyticsController;->access$600(Lcom/crashlytics/android/core/CrashlyticsController;J)V

    .line 344
    :cond_3
    iget-object v7, p0, Lcom/crashlytics/android/core/CrashlyticsController$7;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    invoke-virtual {v7, v4}, Lcom/crashlytics/android/core/CrashlyticsController;->doCloseSessions(Lio/fabric/sdk/android/services/settings/SessionSettingsData;)V

    .line 345
    iget-object v7, p0, Lcom/crashlytics/android/core/CrashlyticsController$7;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    invoke-static {v7}, Lcom/crashlytics/android/core/CrashlyticsController;->access$700(Lcom/crashlytics/android/core/CrashlyticsController;)V

    .line 347
    if-eqz v4, :cond_4

    .line 348
    iget-object v7, p0, Lcom/crashlytics/android/core/CrashlyticsController$7;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    iget v8, v4, Lio/fabric/sdk/android/services/settings/SessionSettingsData;->maxCompleteSessionsCount:I

    invoke-virtual {v7, v8}, Lcom/crashlytics/android/core/CrashlyticsController;->trimSessionFiles(I)V

    .line 351
    :cond_4
    iget-object v7, p0, Lcom/crashlytics/android/core/CrashlyticsController$7;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    .line 352
    invoke-static {v7}, Lcom/crashlytics/android/core/CrashlyticsController;->access$400(Lcom/crashlytics/android/core/CrashlyticsController;)Lcom/crashlytics/android/core/CrashlyticsCore;

    move-result-object v7

    invoke-virtual {v7}, Lcom/crashlytics/android/core/CrashlyticsCore;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lio/fabric/sdk/android/services/common/DataCollectionArbiter;->getInstance(Landroid/content/Context;)Lio/fabric/sdk/android/services/common/DataCollectionArbiter;

    move-result-object v7

    .line 353
    invoke-virtual {v7}, Lio/fabric/sdk/android/services/common/DataCollectionArbiter;->isDataCollectionEnabled()Z

    move-result v2

    .line 354
    .local v2, "isDataCollectionEnabled":Z
    if-eqz v2, :cond_7

    iget-object v7, p0, Lcom/crashlytics/android/core/CrashlyticsController$7;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    .line 355
    invoke-static {v7, v5}, Lcom/crashlytics/android/core/CrashlyticsController;->access$800(Lcom/crashlytics/android/core/CrashlyticsController;Lio/fabric/sdk/android/services/settings/SettingsData;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 356
    .local v3, "sendReports":Z
    :goto_1
    if-eqz v3, :cond_5

    .line 357
    iget-object v6, p0, Lcom/crashlytics/android/core/CrashlyticsController$7;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    invoke-static {v6, v5}, Lcom/crashlytics/android/core/CrashlyticsController;->access$900(Lcom/crashlytics/android/core/CrashlyticsController;Lio/fabric/sdk/android/services/settings/SettingsData;)V

    .line 359
    :cond_5
    const/4 v6, 0x0

    return-object v6

    .end local v1    # "firebaseCrashlyticsEnabledSetting":Z
    .end local v2    # "isDataCollectionEnabled":Z
    .end local v3    # "sendReports":Z
    :cond_6
    move v1, v6

    .line 338
    goto :goto_0

    .restart local v1    # "firebaseCrashlyticsEnabledSetting":Z
    .restart local v2    # "isDataCollectionEnabled":Z
    :cond_7
    move v3, v6

    .line 355
    goto :goto_1
.end method
