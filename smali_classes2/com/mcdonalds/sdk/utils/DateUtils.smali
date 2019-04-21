.class public Lcom/mcdonalds/sdk/utils/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field public static final DAY_IN_MILLIS:J

.field public static final DAY_SECONDS_MINUS_ONE_MINUTE:I = 0x15144

.field private static final FORMAT_HHMM:Ljava/lang/String; = "HH:mm"

.field private static final FORMAT_ISO8631:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss"

.field public static final HOUR_IN_MILLIS:J

.field public static final MINUTE_IN_MILLIS:J

.field public static final SECOND_IN_MILLIS:J = 0x3e8L

.field private static final TIME_ZONE_CONFIG_KEY:Ljava/lang/String; = "modules.customer.useTimeZoneNameForNotification"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x1

    .line 28
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/mcdonalds/sdk/utils/DateUtils;->MINUTE_IN_MILLIS:J

    .line 29
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/mcdonalds/sdk/utils/DateUtils;->HOUR_IN_MILLIS:J

    .line 30
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/mcdonalds/sdk/utils/DateUtils;->DAY_IN_MILLIS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areTimesEqualOrWithinAMinute(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "fromTime"    # Ljava/lang/String;
    .param p1, "toTime"    # Ljava/lang/String;

    .prologue
    .line 88
    const/4 v2, 0x0

    .line 91
    .local v2, "open24Hours":Z
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 93
    const/4 v2, 0x1

    .line 127
    :cond_0
    :goto_0
    return v2

    .line 96
    :cond_1
    :try_start_0
    const-string v5, "hh:mm a"

    const/4 v6, 0x1

    invoke-static {p0, v5, v6}, Lcom/mcdonalds/sdk/utils/DateUtils;->parseFromFormat(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Date;

    move-result-object v1

    .line 97
    .local v1, "fromTimeDate":Ljava/util/Date;
    const-string v5, "hh:mm a"

    const/4 v6, 0x1

    invoke-static {p1, v5, v6}, Lcom/mcdonalds/sdk/utils/DateUtils;->parseFromFormat(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Date;

    move-result-object v4

    .line 98
    .local v4, "toTimeDate":Ljava/util/Date;
    invoke-virtual {v1, v4}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v5

    if-nez v5, :cond_2

    .line 99
    const/4 v2, 0x1

    goto :goto_0

    .line 107
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 108
    .local v0, "fromCalendar":Ljava/util/Calendar;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 109
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 110
    .local v3, "toCalendar":Ljava/util/Calendar;
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 111
    const/16 v5, 0xc

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 112
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v5

    if-nez v5, :cond_3

    .line 113
    const/4 v2, 0x1

    goto :goto_0

    .line 115
    :cond_3
    const/16 v5, 0xa

    const/16 v6, 0x18

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 116
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    .line 117
    const/4 v2, 0x1

    goto :goto_0

    .line 122
    .end local v0    # "fromCalendar":Ljava/util/Calendar;
    .end local v1    # "fromTimeDate":Ljava/util/Date;
    .end local v3    # "toCalendar":Ljava/util/Calendar;
    .end local v4    # "toTimeDate":Ljava/util/Date;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public static dayFromStringToInt(Ljava/lang/String;)I
    .locals 2
    .param p0, "day"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x2

    .line 193
    const-string v1, "sunday"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    const/4 v0, 0x1

    .line 208
    :cond_0
    :goto_0
    return v0

    .line 195
    :cond_1
    const-string v1, "monday"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    const-string v1, "tuesday"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    const/4 v0, 0x3

    goto :goto_0

    .line 199
    :cond_2
    const-string v1, "wednesday"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 200
    const/4 v0, 0x4

    goto :goto_0

    .line 201
    :cond_3
    const-string v1, "thursday"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 202
    const/4 v0, 0x5

    goto :goto_0

    .line 203
    :cond_4
    const-string v1, "friday"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 204
    const/4 v0, 0x6

    goto :goto_0

    .line 205
    :cond_5
    const-string v1, "saturday"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    const/4 v0, 0x7

    goto :goto_0
.end method

.method public static format24HourTimeToSystemFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "time24HourFormat"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 251
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    .end local p0    # "time24HourFormat":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "time24HourFormat":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/mcdonalds/sdk/utils/DateUtils;->formatTo12Hour(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 166
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yy, hh:mm aaa"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, "format":Ljava/text/DateFormat;
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatDateInSummary(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 172
    if-eqz p1, :cond_1

    .line 173
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "M/d/yyyy, h:mm a"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, "df":Ljava/text/SimpleDateFormat;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getDeviceLanguage()Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "language":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    const-string v2, "yyyy/M/d ah:mm"

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 179
    :cond_0
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 182
    .end local v0    # "df":Ljava/text/SimpleDateFormat;
    .end local v1    # "language":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/mcdonalds/sdk/R$string;->unknown:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static formatRange(Landroid/content/Context;J)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rangeMillis"    # J

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 133
    .local v3, "res":Landroid/content/res/Resources;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .local v4, "stringBuilder":Ljava/lang/StringBuilder;
    sget-wide v6, Lcom/mcdonalds/sdk/utils/DateUtils;->DAY_IN_MILLIS:J

    cmp-long v5, p1, v6

    if-ltz v5, :cond_0

    .line 136
    sget-wide v6, Lcom/mcdonalds/sdk/utils/DateUtils;->DAY_IN_MILLIS:J

    div-long v6, p1, v6

    long-to-int v0, v6

    .line 137
    .local v0, "days":I
    sget v5, Lcom/mcdonalds/sdk/R$plurals;->numberOfDays:I

    new-array v6, v12, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-virtual {v3, v5, v0, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    int-to-long v6, v0

    sget-wide v8, Lcom/mcdonalds/sdk/utils/DateUtils;->DAY_IN_MILLIS:J

    mul-long/2addr v6, v8

    sub-long/2addr p1, v6

    .line 142
    .end local v0    # "days":I
    :cond_0
    sget-wide v6, Lcom/mcdonalds/sdk/utils/DateUtils;->HOUR_IN_MILLIS:J

    cmp-long v5, p1, v6

    if-ltz v5, :cond_2

    .line 143
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 144
    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_1
    sget-wide v6, Lcom/mcdonalds/sdk/utils/DateUtils;->HOUR_IN_MILLIS:J

    div-long v6, p1, v6

    long-to-int v1, v6

    .line 148
    .local v1, "hours":I
    sget v5, Lcom/mcdonalds/sdk/R$plurals;->numberOfHours:I

    new-array v6, v12, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-virtual {v3, v5, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    int-to-long v6, v1

    sget-wide v8, Lcom/mcdonalds/sdk/utils/DateUtils;->HOUR_IN_MILLIS:J

    mul-long/2addr v6, v8

    sub-long/2addr p1, v6

    .line 153
    .end local v1    # "hours":I
    :cond_2
    sget-wide v6, Lcom/mcdonalds/sdk/utils/DateUtils;->MINUTE_IN_MILLIS:J

    cmp-long v5, p1, v6

    if-ltz v5, :cond_4

    .line 154
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 155
    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :cond_3
    sget-wide v6, Lcom/mcdonalds/sdk/utils/DateUtils;->MINUTE_IN_MILLIS:J

    div-long v6, p1, v6

    long-to-int v2, v6

    .line 159
    .local v2, "minutes":I
    sget v5, Lcom/mcdonalds/sdk/R$plurals;->numberOfMinutes:I

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v3, v5, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .end local v2    # "minutes":I
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static formatTimeToSystemFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "timeFormat"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 259
    invoke-static {p0}, Lcom/mcdonalds/sdk/utils/DateUtils;->formatTo24Hour(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "time24HourFormat":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/mcdonalds/sdk/utils/DateUtils;->format24HourTimeToSystemFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatTo12Hour(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "time"    # Ljava/lang/String;

    .prologue
    .line 264
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 265
    .local v2, "sdf24hr":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "hh:mm a"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 266
    .local v1, "sdf12hr":Ljava/text/SimpleDateFormat;
    const/4 v0, 0x0

    .line 269
    .local v0, "date":Ljava/util/Date;
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 273
    :goto_0
    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    .line 276
    .end local p0    # "time":Ljava/lang/String;
    :cond_0
    return-object p0

    .line 270
    .restart local p0    # "time":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static formatTo24Hour(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "time"    # Ljava/lang/String;

    .prologue
    .line 281
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 282
    .local v2, "sdf24hr":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "hh:mm a"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 283
    .local v1, "sdf12hr":Ljava/text/SimpleDateFormat;
    const/4 v0, 0x0

    .line 286
    .local v0, "date":Ljava/util/Date;
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 290
    :goto_0
    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    .line 293
    .end local p0    # "time":Ljava/lang/String;
    :cond_0
    return-object p0

    .line 287
    .restart local p0    # "time":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static formatToISO8631(Ljava/util/Date;Z)Ljava/lang/String;
    .locals 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "useUTC"    # Z

    .prologue
    .line 43
    if-nez p0, :cond_0

    .line 44
    const-string v1, ""

    .line 51
    :goto_0
    return-object v1

    .line 47
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 48
    .local v0, "formatter":Ljava/text/SimpleDateFormat;
    if-eqz p1, :cond_1

    .line 49
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 51
    :cond_1
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getBaseDate(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 2
    .param p0, "c"    # Ljava/util/Calendar;

    .prologue
    const/4 v1, 0x0

    .line 336
    const/16 v0, 0xb

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 337
    const/16 v0, 0xc

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 338
    const/16 v0, 0xd

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 339
    return-object p0
.end method

.method public static getHoursTimeInTimeZone(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 316
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 317
    const-string v4, ""

    .line 327
    :goto_0
    return-object v4

    .line 319
    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 321
    .local v2, "timeInLong":J
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "hh:mm a"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 322
    .local v1, "formatter":Ljava/text/DateFormat;
    if-eqz p1, :cond_1

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    :goto_1
    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 324
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 325
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 327
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 323
    .end local v0    # "calendar":Ljava/util/Calendar;
    :cond_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    goto :goto_1
.end method

.method public static getTimeField(Ljava/lang/String;I)I
    .locals 5
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "field"    # I

    .prologue
    const/4 v3, 0x0

    .line 221
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "HH:mm"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 222
    .local v2, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/text/ParsePosition;

    invoke-direct {v4, v3}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v2, p0, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    .line 223
    .local v1, "d":Ljava/util/Date;
    if-eqz v1, :cond_0

    .line 224
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 225
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 226
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 228
    .end local v0    # "c":Ljava/util/Calendar;
    :cond_0
    return v3
.end method

.method public static getTimeInHours(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "time"    # Ljava/lang/String;

    .prologue
    .line 297
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 299
    .local v4, "timeInLong":J
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "hh:mm a"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 300
    .local v1, "formatter":Ljava/text/DateFormat;
    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 301
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 302
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 304
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, "hourString":Ljava/lang/String;
    return-object v2
.end method

.method public static is24HourOpen(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 14
    .param p0, "startTime"    # Ljava/lang/String;
    .param p1, "endTime"    # Ljava/lang/String;

    .prologue
    .line 351
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 352
    :cond_0
    const/4 v10, 0x0

    .line 371
    :goto_0
    return v10

    .line 354
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 355
    .local v1, "date":Ljava/util/Calendar;
    invoke-static {v1}, Lcom/mcdonalds/sdk/utils/DateUtils;->getBaseDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 356
    .local v0, "baseDate":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Calendar;

    .line 357
    .local v6, "from":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Calendar;

    .line 358
    .local v7, "to":Ljava/util/Calendar;
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long v8, v10, v12

    .line 359
    .local v8, "start":J
    const/16 v10, 0xd

    long-to-int v11, v8

    invoke-virtual {v6, v10, v11}, Ljava/util/Calendar;->add(II)V

    .line 360
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long v4, v10, v12

    .line 361
    .local v4, "end":J
    const/16 v10, 0xd

    long-to-int v11, v4

    invoke-virtual {v7, v10, v11}, Ljava/util/Calendar;->add(II)V

    .line 363
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    div-long v2, v10, v12

    .line 364
    .local v2, "diff":J
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-gtz v10, :cond_2

    .line 365
    const/4 v10, 0x5

    const/4 v11, 0x1

    invoke-virtual {v7, v10, v11}, Ljava/util/Calendar;->add(II)V

    .line 367
    :cond_2
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    div-long v2, v10, v12

    .line 368
    const-wide/32 v10, 0x15144

    cmp-long v10, v2, v10

    if-ltz v10, :cond_3

    .line 369
    const/4 v10, 0x1

    goto :goto_0

    .line 371
    :cond_3
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public static parseFromFormat(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Date;
    .locals 2
    .param p0, "dateString"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "useUTC"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 73
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    if-eqz p2, :cond_0

    .line 74
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 76
    :cond_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static parseFromISO8631(Ljava/lang/String;Z)Ljava/util/Date;
    .locals 3
    .param p0, "dateString"    # Ljava/lang/String;
    .param p1, "useUTC"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 56
    .local v0, "parser":Ljava/text/SimpleDateFormat;
    if-eqz p1, :cond_0

    .line 57
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 59
    :cond_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static timeCheck(IIIIII)Z
    .locals 2
    .param p0, "hourOfDay"    # I
    .param p1, "minute"    # I
    .param p2, "hourOfDayFrom"    # I
    .param p3, "minuteFrom"    # I
    .param p4, "hourOfDayTo"    # I
    .param p5, "minuteTo"    # I

    .prologue
    .line 246
    mul-int/lit8 v0, p0, 0x3c

    add-int/2addr v0, p1

    mul-int/lit8 v1, p2, 0x3c

    add-int/2addr v1, p3

    if-lt v0, v1, :cond_0

    mul-int/lit8 v0, p0, 0x3c

    add-int/2addr v0, p1

    mul-int/lit8 v1, p4, 0x3c

    add-int/2addr v1, p5

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static timeZoneForNotificationCall()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 376
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "modules.customer.useTimeZoneNameForNotification"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "timezone":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 379
    .end local v0    # "timezone":Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "timezone":Ljava/lang/String;
    goto :goto_0
.end method
