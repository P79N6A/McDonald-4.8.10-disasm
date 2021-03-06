.class Lcom/crashlytics/android/core/PreferenceManager;
.super Ljava/lang/Object;
.source "PreferenceManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CommitPrefEdits"
    }
.end annotation


# instance fields
.field private final kit:Lcom/crashlytics/android/core/CrashlyticsCore;

.field private final preferenceStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/services/persistence/PreferenceStore;Lcom/crashlytics/android/core/CrashlyticsCore;)V
    .locals 0
    .param p1, "preferenceStore"    # Lio/fabric/sdk/android/services/persistence/PreferenceStore;
    .param p2, "kit"    # Lcom/crashlytics/android/core/CrashlyticsCore;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/crashlytics/android/core/PreferenceManager;->preferenceStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;

    .line 30
    iput-object p2, p0, Lcom/crashlytics/android/core/PreferenceManager;->kit:Lcom/crashlytics/android/core/CrashlyticsCore;

    .line 31
    return-void
.end method

.method public static create(Lio/fabric/sdk/android/services/persistence/PreferenceStore;Lcom/crashlytics/android/core/CrashlyticsCore;)Lcom/crashlytics/android/core/PreferenceManager;
    .locals 1
    .param p0, "preferenceStore"    # Lio/fabric/sdk/android/services/persistence/PreferenceStore;
    .param p1, "kit"    # Lcom/crashlytics/android/core/CrashlyticsCore;

    .prologue
    .line 25
    new-instance v0, Lcom/crashlytics/android/core/PreferenceManager;

    invoke-direct {v0, p0, p1}, Lcom/crashlytics/android/core/PreferenceManager;-><init>(Lio/fabric/sdk/android/services/persistence/PreferenceStore;Lcom/crashlytics/android/core/CrashlyticsCore;)V

    return-object v0
.end method


# virtual methods
.method setShouldAlwaysSendReports(Z)V
    .locals 3
    .param p1, "send"    # Z

    .prologue
    .line 34
    iget-object v0, p0, Lcom/crashlytics/android/core/PreferenceManager;->preferenceStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;

    iget-object v1, p0, Lcom/crashlytics/android/core/PreferenceManager;->preferenceStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;

    invoke-interface {v1}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "always_send_reports_opt_in"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->save(Landroid/content/SharedPreferences$Editor;)Z

    .line 35
    return-void
.end method

.method shouldAlwaysSendReports()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 39
    iget-object v5, p0, Lcom/crashlytics/android/core/PreferenceManager;->preferenceStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;

    invoke-interface {v5}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->get()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "preferences_migration_complete"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 40
    new-instance v2, Lio/fabric/sdk/android/services/persistence/PreferenceStoreImpl;

    iget-object v5, p0, Lcom/crashlytics/android/core/PreferenceManager;->kit:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-direct {v2, v5}, Lio/fabric/sdk/android/services/persistence/PreferenceStoreImpl;-><init>(Lio/fabric/sdk/android/Kit;)V

    .line 41
    .local v2, "oldStore":Lio/fabric/sdk/android/services/persistence/PreferenceStore;
    iget-object v5, p0, Lcom/crashlytics/android/core/PreferenceManager;->preferenceStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;

    .line 42
    invoke-interface {v5}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->get()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "always_send_reports_opt_in"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 43
    invoke-interface {v2}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->get()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "always_send_reports_opt_in"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v3

    .line 44
    .local v1, "migrationRequired":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 45
    invoke-interface {v2}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->get()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "always_send_reports_opt_in"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 47
    .local v0, "alwaysSend":Z
    iget-object v5, p0, Lcom/crashlytics/android/core/PreferenceManager;->preferenceStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;

    iget-object v6, p0, Lcom/crashlytics/android/core/PreferenceManager;->preferenceStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;

    invoke-interface {v6}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "always_send_reports_opt_in"

    .line 48
    invoke-interface {v6, v7, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 47
    invoke-interface {v5, v6}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->save(Landroid/content/SharedPreferences$Editor;)Z

    .line 50
    .end local v0    # "alwaysSend":Z
    :cond_0
    iget-object v5, p0, Lcom/crashlytics/android/core/PreferenceManager;->preferenceStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;

    iget-object v6, p0, Lcom/crashlytics/android/core/PreferenceManager;->preferenceStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;

    invoke-interface {v6}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "preferences_migration_complete"

    invoke-interface {v6, v7, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v5, v3}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->save(Landroid/content/SharedPreferences$Editor;)Z

    .line 52
    .end local v1    # "migrationRequired":Z
    .end local v2    # "oldStore":Lio/fabric/sdk/android/services/persistence/PreferenceStore;
    :cond_1
    iget-object v3, p0, Lcom/crashlytics/android/core/PreferenceManager;->preferenceStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;

    invoke-interface {v3}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->get()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "always_send_reports_opt_in"

    .line 53
    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 52
    return v3

    .restart local v2    # "oldStore":Lio/fabric/sdk/android/services/persistence/PreferenceStore;
    :cond_2
    move v1, v4

    .line 43
    goto :goto_0
.end method
