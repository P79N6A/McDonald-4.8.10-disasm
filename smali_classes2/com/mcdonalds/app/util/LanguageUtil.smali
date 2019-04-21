.class public Lcom/mcdonalds/app/util/LanguageUtil;
.super Ljava/lang/Object;
.source "LanguageUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeAppLang(Ljava/lang/String;Z)V
    .locals 9
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "isLocal"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "com.mcdonalds.app.util.LanguageUtil"

    const-string v4, "changeAppLang"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v8

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    invoke-static {}, Lcom/mcdonalds/app/McDonaldsApplication;->getInstance()Lcom/mcdonalds/app/McDonaldsApplication;

    move-result-object v2

    const-string v3, "config_language"

    invoke-virtual {v2, v3, v8}, Lcom/mcdonalds/app/McDonaldsApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 73
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 74
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "language"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 75
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 76
    if-eqz p1, :cond_0

    .line 77
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setDeviceLanguage(Ljava/lang/String;)V

    .line 79
    :cond_0
    return-void
.end method

.method public static changeAppLanguage(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 10
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    const-string v5, "com.mcdonalds.app.util.LanguageUtil"

    const-string v6, "changeAppLanguage"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v9

    aput-object p1, v7, v8

    invoke-static {v4, v5, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 35
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getCurrentLanguage()Ljava/lang/String;

    move-result-object p1

    .line 37
    :cond_0
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v4

    const-string v5, "content.language"

    invoke-virtual {v4, v5, p1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setState(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 39
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 40
    .local v1, "dm":Landroid/util/DisplayMetrics;
    const/4 v2, 0x0

    .line 41
    .local v2, "locale":Ljava/util/Locale;
    const-string v4, "zh"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 42
    new-instance v2, Ljava/util/Locale;

    .end local v2    # "locale":Ljava/util/Locale;
    const-string v4, "zh"

    const-string v5, "HK"

    invoke-direct {v2, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .restart local v2    # "locale":Ljava/util/Locale;
    const-string v4, "zh"

    invoke-static {v4, v8}, Lcom/mcdonalds/app/util/LanguageUtil;->changeAppLang(Ljava/lang/String;Z)V

    .line 51
    :goto_0
    invoke-static {v2}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 52
    invoke-static {}, Lcom/mcdonalds/app/McDonaldsApplication;->getInstance()Lcom/mcdonalds/app/McDonaldsApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/app/McDonaldsApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iput-object v2, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 53
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_4

    .line 54
    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 58
    :goto_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_1

    .line 59
    new-instance v3, Landroid/os/LocaleList;

    new-array v4, v8, [Ljava/util/Locale;

    aput-object v2, v4, v9

    invoke-direct {v3, v4}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 60
    .local v3, "localeList":Landroid/os/LocaleList;
    invoke-virtual {v0, v3}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 61
    invoke-static {}, Lcom/mcdonalds/app/McDonaldsApplication;->getInstance()Lcom/mcdonalds/app/McDonaldsApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/app/McDonaldsApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 63
    .end local v3    # "localeList":Landroid/os/LocaleList;
    :cond_1
    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 64
    return-void

    .line 44
    :cond_2
    const-string v4, "en"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 45
    new-instance v2, Ljava/util/Locale;

    .end local v2    # "locale":Ljava/util/Locale;
    const-string v4, "en"

    const-string v5, "HK"

    invoke-direct {v2, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .restart local v2    # "locale":Ljava/util/Locale;
    const-string v4, "en"

    invoke-static {v4, v8}, Lcom/mcdonalds/app/util/LanguageUtil;->changeAppLang(Ljava/lang/String;Z)V

    goto :goto_0

    .line 48
    :cond_3
    new-instance v2, Ljava/util/Locale;

    .end local v2    # "locale":Ljava/util/Locale;
    const-string v4, "en"

    const-string v5, "HK"

    invoke-direct {v2, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .restart local v2    # "locale":Ljava/util/Locale;
    const-string v4, "en"

    invoke-static {v4, v8}, Lcom/mcdonalds/app/util/LanguageUtil;->changeAppLang(Ljava/lang/String;Z)V

    goto :goto_0

    .line 56
    :cond_4
    iput-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_1
.end method

.method public static getAppLanguage()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v1, "com.mcdonalds.app.util.LanguageUtil"

    const-string v2, "getAppLanguage"

    invoke-static {v3, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    invoke-static {}, Lcom/mcdonalds/app/McDonaldsApplication;->getInstance()Lcom/mcdonalds/app/McDonaldsApplication;

    move-result-object v1

    const-string v2, "config_language"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/app/McDonaldsApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 87
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "language"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPrefRememberLogin()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v1, "com.mcdonalds.app.util.LanguageUtil"

    const-string v2, "getPrefRememberLogin"

    invoke-static {v4, v1, v2, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    invoke-static {}, Lcom/mcdonalds/app/McDonaldsApplication;->getInstance()Lcom/mcdonalds/app/McDonaldsApplication;

    move-result-object v1

    const-string v2, "config_language"

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/app/McDonaldsApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 108
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "rememberLogin"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isClear()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v1, "com.mcdonalds.app.util.LanguageUtil"

    const-string v2, "isClear"

    invoke-static {v4, v1, v2, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    invoke-static {}, Lcom/mcdonalds/app/McDonaldsApplication;->getInstance()Lcom/mcdonalds/app/McDonaldsApplication;

    move-result-object v1

    const-string v2, "config_language"

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/app/McDonaldsApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 124
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "is_clear"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static setClear(Z)V
    .locals 8
    .param p0, "isClear"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    const-string v3, "com.mcdonalds.app.util.LanguageUtil"

    const-string v4, "setClear"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p0}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v6, v5, v7

    invoke-static {v2, v3, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    invoke-static {}, Lcom/mcdonalds/app/McDonaldsApplication;->getInstance()Lcom/mcdonalds/app/McDonaldsApplication;

    move-result-object v2

    const-string v3, "config_language"

    invoke-virtual {v2, v3, v7}, Lcom/mcdonalds/app/McDonaldsApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 117
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 118
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "is_clear"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 119
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 120
    return-void
.end method

.method public static setPrefRememberLogin(Z)V
    .locals 8
    .param p0, "type"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    const-string v3, "com.mcdonalds.app.util.LanguageUtil"

    const-string v4, "setPrefRememberLogin"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p0}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v6, v5, v7

    invoke-static {v2, v3, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    invoke-static {}, Lcom/mcdonalds/app/McDonaldsApplication;->getInstance()Lcom/mcdonalds/app/McDonaldsApplication;

    move-result-object v2

    const-string v3, "config_language"

    invoke-virtual {v2, v3, v7}, Lcom/mcdonalds/app/McDonaldsApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 97
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 98
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "rememberLogin"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 99
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 101
    return-void
.end method
