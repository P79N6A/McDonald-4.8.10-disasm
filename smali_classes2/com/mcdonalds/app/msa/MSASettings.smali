.class public Lcom/mcdonalds/app/msa/MSASettings;
.super Ljava/lang/Object;
.source "MSASettings.java"


# static fields
.field public static final BUNDLED_TUNES:[Lcom/mcdonalds/app/msa/MSATuneItem;

.field public static final FIXED_TUNE:Lcom/mcdonalds/app/msa/MSATuneItem;

.field public static final PHONE_TUNE:Lcom/mcdonalds/app/msa/MSATuneItem;

.field public static final RANDOM_TUNE:Lcom/mcdonalds/app/msa/MSATuneItem;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const v6, 0x7f09054a

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 36
    new-array v0, v4, [Lcom/mcdonalds/app/msa/MSATuneItem;

    sput-object v0, Lcom/mcdonalds/app/msa/MSASettings;->BUNDLED_TUNES:[Lcom/mcdonalds/app/msa/MSATuneItem;

    .line 37
    new-instance v0, Lcom/mcdonalds/app/msa/MSATuneItem;

    .line 38
    invoke-static {}, Lcom/mcdonalds/app/McDonaldsApplication;->getInstance()Lcom/mcdonalds/app/McDonaldsApplication;

    move-result-object v1

    const v2, 0x7f090544

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/McDonaldsApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    sget v5, Lcom/mcdonalds/app/msa/MSATuneItem;->MSA_TUNE_FROM_PHONE:I

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/app/msa/MSATuneItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;II)V

    sput-object v0, Lcom/mcdonalds/app/msa/MSASettings;->PHONE_TUNE:Lcom/mcdonalds/app/msa/MSATuneItem;

    .line 40
    new-instance v0, Lcom/mcdonalds/app/msa/MSATuneItem;

    .line 41
    invoke-static {}, Lcom/mcdonalds/app/McDonaldsApplication;->getInstance()Lcom/mcdonalds/app/McDonaldsApplication;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/mcdonalds/app/McDonaldsApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-static {}, Lcom/mcdonalds/app/McDonaldsApplication;->getInstance()Lcom/mcdonalds/app/McDonaldsApplication;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/mcdonalds/app/McDonaldsApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v5, Lcom/mcdonalds/app/msa/MSATuneItem;->MSA_TUNE_RANDOM:I

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/app/msa/MSATuneItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;II)V

    sput-object v0, Lcom/mcdonalds/app/msa/MSASettings;->RANDOM_TUNE:Lcom/mcdonalds/app/msa/MSATuneItem;

    .line 44
    new-instance v0, Lcom/mcdonalds/app/msa/MSATuneItem;

    const-string v1, ""

    .line 45
    invoke-static {}, Lcom/mcdonalds/app/McDonaldsApplication;->getInstance()Lcom/mcdonalds/app/McDonaldsApplication;

    move-result-object v2

    const v4, 0x7f090543

    invoke-virtual {v2, v4}, Lcom/mcdonalds/app/McDonaldsApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f080001

    sget v5, Lcom/mcdonalds/app/msa/MSATuneItem;->MSA_TUNE_FROM_APP:I

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/app/msa/MSATuneItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;II)V

    sput-object v0, Lcom/mcdonalds/app/msa/MSASettings;->FIXED_TUNE:Lcom/mcdonalds/app/msa/MSATuneItem;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alarmEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.msa.MSASettings"

    const-string v2, "alarmEnabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    invoke-static {}, Lcom/mcdonalds/app/msa/MSASettings;->getPrefName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "IS_MSA_TURNED_ON"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static cancelAlarm(Landroid/content/Context;)V
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    const-string v4, "com.mcdonalds.app.msa.MSASettings"

    const-string v5, "cancelAlarm"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/mcdonalds/app/msa/MSANotificationPublisher;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    .local v1, "notificationIntent":Landroid/content/Intent;
    const/high16 v3, 0x8000000

    invoke-static {p0, v7, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 211
    .local v2, "pIntent":Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 212
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 213
    return-void
.end method

.method private static checkForNextAlarmTime(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 11
    .param p0, "calendar"    # Ljava/util/Calendar;

    .prologue
    const/4 v6, 0x0

    const-string v7, "com.mcdonalds.app.msa.MSASettings"

    const-string v8, "checkForNextAlarmTime"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    invoke-static {v6, v7, v8, v9}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 122
    .local v2, "timeNextAlarm":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 123
    .local v4, "timeNow":J
    sub-long v0, v2, v4

    .line 124
    .local v0, "diff":J
    const-wide/16 v8, 0x0

    cmp-long v7, v0, v8

    if-lez v7, :cond_0

    .line 127
    .end local p0    # "calendar":Ljava/util/Calendar;
    :goto_0
    return-object p0

    .restart local p0    # "calendar":Ljava/util/Calendar;
    :cond_0
    move-object p0, v6

    goto :goto_0
.end method

.method public static clearAlarm(Landroid/content/Context;)V
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.msa.MSASettings"

    const-string v2, "clearAlarm"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    invoke-static {p0}, Lcom/mcdonalds/app/msa/MSASettings;->cancelAlarm(Landroid/content/Context;)V

    .line 263
    invoke-static {}, Lcom/mcdonalds/app/msa/MSASettings;->getPrefName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "IS_MSA_TURNED_ON"

    .line 264
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 265
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 266
    return-void
.end method

.method public static findNextAlarm(Landroid/content/Context;)Ljava/util/Calendar;
    .locals 14
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    const-string v10, "com.mcdonalds.app.msa.MSASettings"

    const-string v11, "findNextAlarm"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p0, v12, v13

    invoke-static {v9, v10, v11, v12}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getPrefSavedLogin()Ljava/lang/String;

    move-result-object v8

    .line 75
    .local v8, "username":Ljava/lang/String;
    if-nez v8, :cond_1

    .line 76
    const/4 v1, 0x0

    .line 117
    :cond_0
    :goto_0
    return-object v1

    .line 79
    :cond_1
    invoke-static {}, Lcom/mcdonalds/app/msa/MSASettings;->getPrefName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 80
    .local v7, "pref":Landroid/content/SharedPreferences;
    const-string v9, "HOUR"

    const/4 v10, -0x1

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 83
    .local v4, "hour":I
    if-gez v4, :cond_2

    .line 84
    const/4 v1, 0x0

    goto :goto_0

    .line 87
    :cond_2
    const-string v9, "MINUTE"

    const/4 v10, -0x1

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 88
    .local v6, "minute":I
    const/4 v9, 0x7

    new-array v0, v9, [Z

    .line 89
    .local v0, "alarmDays":[Z
    const/4 v9, 0x0

    const-string v10, "IS_REPEAT_ON_SUNDAY"

    const/4 v11, 0x0

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    aput-boolean v10, v0, v9

    .line 90
    const/4 v9, 0x1

    const-string v10, "IS_REPEAT_ON_MONDAY"

    const/4 v11, 0x0

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    aput-boolean v10, v0, v9

    .line 91
    const/4 v9, 0x2

    const-string v10, "IS_REPEAT_ON_TUESDAY"

    const/4 v11, 0x0

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    aput-boolean v10, v0, v9

    .line 92
    const/4 v9, 0x3

    const-string v10, "IS_REPEAT_ON_WEDNESDAY"

    const/4 v11, 0x0

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    aput-boolean v10, v0, v9

    .line 93
    const/4 v9, 0x4

    const-string v10, "IS_REPEAT_ON_THURSDAY"

    const/4 v11, 0x0

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    aput-boolean v10, v0, v9

    .line 94
    const/4 v9, 0x5

    const-string v10, "IS_REPEAT_ON_FRIDAY"

    const/4 v11, 0x0

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    aput-boolean v10, v0, v9

    .line 95
    const/4 v9, 0x6

    const-string v10, "IS_REPEAT_ON_SATURDAY"

    const/4 v11, 0x0

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    aput-boolean v10, v0, v9

    .line 97
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 98
    .local v2, "calendar":Ljava/util/Calendar;
    const/16 v9, 0xb

    invoke-virtual {v2, v9, v4}, Ljava/util/Calendar;->set(II)V

    .line 99
    const/16 v9, 0xc

    invoke-virtual {v2, v9, v6}, Ljava/util/Calendar;->set(II)V

    .line 100
    const/16 v9, 0xd

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 101
    const/16 v9, 0xe

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 103
    const/4 v9, 0x7

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 104
    .local v3, "dayOfWeek":I
    add-int/lit8 v3, v3, -0x1

    .line 105
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    const/4 v9, 0x7

    if-ge v5, v9, :cond_4

    .line 106
    rem-int/lit8 v3, v3, 0x7

    .line 107
    aget-boolean v9, v0, v3

    if-eqz v9, :cond_3

    .line 108
    invoke-static {v2}, Lcom/mcdonalds/app/msa/MSASettings;->checkForNextAlarmTime(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    .line 109
    .local v1, "c":Ljava/util/Calendar;
    if-nez v1, :cond_0

    .line 113
    .end local v1    # "c":Ljava/util/Calendar;
    :cond_3
    const/16 v9, 0xa

    const/16 v10, 0x18

    invoke-virtual {v2, v9, v10}, Ljava/util/Calendar;->add(II)V

    .line 114
    add-int/lit8 v3, v3, 0x1

    .line 105
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    move-object v1, v2

    .line 117
    goto/16 :goto_0
.end method

.method public static getAlarmDesc(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.msa.MSASettings"

    const-string v2, "getAlarmDesc"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    invoke-static {}, Lcom/mcdonalds/app/msa/MSASettings;->getPrefName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ALARM_TONE_DESC"

    const-string v2, ""

    .line 177
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    return-object v0
.end method

.method public static getAlarmId(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.msa.MSASettings"

    const-string v2, "getAlarmId"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    invoke-static {}, Lcom/mcdonalds/app/msa/MSASettings;->getPrefName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ALARM_TONE_ID"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAlarmType(Landroid/content/Context;)I
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.msa.MSASettings"

    const-string v2, "getAlarmType"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    invoke-static {}, Lcom/mcdonalds/app/msa/MSASettings;->getPrefName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ALARM_TONE_TYPE"

    const/4 v2, -0x1

    .line 188
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 187
    return v0
.end method

.method public static getPrefName()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.msa.MSASettings"

    const-string v3, "getPrefName"

    invoke-static {v1, v2, v3, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getPrefSavedLogin()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "username":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSASettings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 249
    :cond_0
    return-object v1
.end method

.method public static getRandomTune()Lcom/mcdonalds/app/msa/MSATuneItem;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v1, "com.mcdonalds.app.msa.MSASettings"

    const-string v2, "getRandomTune"

    invoke-static {v3, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    sget-object v2, Lcom/mcdonalds/app/msa/MSASettings;->BUNDLED_TUNES:[Lcom/mcdonalds/app/msa/MSATuneItem;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 255
    .local v0, "rand":I
    sget-object v1, Lcom/mcdonalds/app/msa/MSASettings;->BUNDLED_TUNES:[Lcom/mcdonalds/app/msa/MSATuneItem;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public static saveAlarmId(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "alarmType"    # I
    .param p2, "alarmId"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "com.mcdonalds.app.msa.MSASettings"

    const-string v4, "saveAlarmId"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v8

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    const/4 v6, 0x3

    aput-object p3, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    invoke-static {}, Lcom/mcdonalds/app/msa/MSASettings;->getPrefName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 162
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 163
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    const-string v2, "ALARM_TONE_TYPE"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 164
    const-string v2, "ALARM_TONE_ID"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 165
    const-string v2, "ALARM_TONE_DESC"

    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 166
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 167
    return-void
.end method

.method public static saveSettings(Landroid/content/Context;II[Z)V
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "hour"    # I
    .param p2, "min"    # I
    .param p3, "alarmDays"    # [Z

    .prologue
    const/4 v3, 0x0

    const-string v4, "com.mcdonalds.app.msa.MSASettings"

    const-string v5, "saveSettings"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v6, v7

    const/4 v7, 0x2

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object p3, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getPrefSavedLogin()Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, "username":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 236
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-static {}, Lcom/mcdonalds/app/msa/MSASettings;->getPrefName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 224
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 226
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    const-string v3, "HOUR"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 227
    const-string v3, "MINUTE"

    invoke-interface {v0, v3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 228
    const-string v3, "IS_REPEAT_ON_SUNDAY"

    const/4 v4, 0x0

    aget-boolean v4, p3, v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 229
    const-string v3, "IS_REPEAT_ON_MONDAY"

    const/4 v4, 0x1

    aget-boolean v4, p3, v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 230
    const-string v3, "IS_REPEAT_ON_TUESDAY"

    const/4 v4, 0x2

    aget-boolean v4, p3, v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 231
    const-string v3, "IS_REPEAT_ON_WEDNESDAY"

    const/4 v4, 0x3

    aget-boolean v4, p3, v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 232
    const-string v3, "IS_REPEAT_ON_THURSDAY"

    const/4 v4, 0x4

    aget-boolean v4, p3, v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 233
    const-string v3, "IS_REPEAT_ON_FRIDAY"

    const/4 v4, 0x5

    aget-boolean v4, p3, v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 234
    const-string v3, "IS_REPEAT_ON_SATURDAY"

    const/4 v4, 0x6

    aget-boolean v4, p3, v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 235
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static scheduleNextAlarm(Landroid/content/Context;)V
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.msa.MSASettings"

    const-string v2, "scheduleNextAlarm"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mcdonalds/app/msa/PersistService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 59
    return-void
.end method

.method public static scheduleNotification(Landroid/content/Context;J)V
    .locals 11
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "time"    # J

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    const-string v4, "com.mcdonalds.app.msa.MSASettings"

    const-string v5, "scheduleNotification"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v9

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/Long;

    invoke-direct {v8, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/mcdonalds/app/msa/MSANotificationPublisher;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    .local v1, "notificationIntent":Landroid/content/Intent;
    const/high16 v3, 0x8000000

    invoke-static {p0, v9, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 143
    .local v2, "pIntent":Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 144
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_0

    .line 145
    invoke-virtual {v0, v9, p1, p2, v2}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 151
    :goto_0
    return-void

    .line 146
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_1

    .line 147
    invoke-virtual {v0, v9, p1, p2, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {v0, v9, p1, p2, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public static startNextAlarm(Landroid/content/Context;)V
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.msa.MSASettings"

    const-string v3, "startNextAlarm"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    invoke-static {p0}, Lcom/mcdonalds/app/msa/MSASettings;->findNextAlarm(Landroid/content/Context;)Ljava/util/Calendar;

    move-result-object v0

    .line 64
    .local v0, "alarm":Ljava/util/Calendar;
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/mcdonalds/app/msa/MSASettings;->scheduleNotification(Landroid/content/Context;J)V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-static {p0}, Lcom/mcdonalds/app/msa/MSASettings;->cancelAlarm(Landroid/content/Context;)V

    goto :goto_0
.end method
