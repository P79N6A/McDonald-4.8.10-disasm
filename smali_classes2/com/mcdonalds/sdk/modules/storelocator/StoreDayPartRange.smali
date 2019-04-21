.class public Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;
.super Ljava/lang/Object;
.source "StoreDayPartRange.java"


# static fields
.field private static final formatter:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private baseDate:Ljava/util/Calendar;

.field public from:Ljava/util/Calendar;

.field public to:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->formatter:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 6
    .param p1, "date"    # Ljava/util/Calendar;

    .prologue
    const/16 v5, 0xd

    const/16 v4, 0xc

    const/16 v3, 0xb

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->baseDate:Ljava/util/Calendar;

    .line 27
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->baseDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 28
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->baseDate:Ljava/util/Calendar;

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 29
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->baseDate:Ljava/util/Calendar;

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 31
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->from:Ljava/util/Calendar;

    .line 32
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->from:Ljava/util/Calendar;

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 33
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->from:Ljava/util/Calendar;

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 34
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->from:Ljava/util/Calendar;

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 35
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->from:Ljava/util/Calendar;

    invoke-virtual {v0, v2, v2}, Ljava/util/Calendar;->add(II)V

    .line 37
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->to:Ljava/util/Calendar;

    .line 38
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->to:Ljava/util/Calendar;

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 39
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->to:Ljava/util/Calendar;

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 40
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->to:Ljava/util/Calendar;

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 41
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->to:Ljava/util/Calendar;

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 42
    return-void
.end method

.method private createCalendarInstance(Ljava/util/Date;)Ljava/util/Calendar;
    .locals 6
    .param p1, "time"    # Ljava/util/Date;

    .prologue
    const/16 v5, 0xd

    const/16 v4, 0xc

    const/16 v3, 0xb

    .line 73
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 74
    .local v1, "timeTemp":Ljava/util/Calendar;
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 75
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 76
    .local v0, "newInstance":Ljava/util/Calendar;
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->baseDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 77
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 78
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 79
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 80
    return-object v0
.end method

.method public static formatTimeString(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "time"    # Ljava/util/Date;

    .prologue
    .line 107
    sget-object v0, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->formatter:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentTime(Ljava/util/Calendar;)Ljava/util/Date;
    .locals 3
    .param p0, "date"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "now":Ljava/lang/String;
    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method private static parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "timeString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 89
    if-nez p0, :cond_0

    .line 90
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 93
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->formatter:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_0
.end method

.method public static parseFromTimeString(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "timeString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-static {p0}, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static parseToTimeString(Ljava/lang/String;)Ljava/util/Date;
    .locals 6
    .param p0, "timeString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-static {p0}, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 98
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x3b

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x3e7

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 99
    return-object v0
.end method


# virtual methods
.method public expandRange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "fromString"    # Ljava/lang/String;
    .param p2, "toString"    # Ljava/lang/String;

    .prologue
    .line 47
    :try_start_0
    invoke-static {p1}, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->parseFromTimeString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 48
    .local v2, "fromTime":Ljava/util/Date;
    invoke-static {p2}, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->parseToTimeString(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 54
    .local v4, "toTime":Ljava/util/Date;
    invoke-direct {p0, v2}, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->createCalendarInstance(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object v1

    .line 55
    .local v1, "fromNew":Ljava/util/Calendar;
    invoke-direct {p0, v4}, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->createCalendarInstance(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object v3

    .line 57
    .local v3, "toNew":Ljava/util/Calendar;
    invoke-virtual {v3, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 58
    const/4 v5, 0x5

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 61
    :cond_0
    iget-object v5, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->from:Ljava/util/Calendar;

    invoke-virtual {v5, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 62
    iget-object v5, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->from:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 65
    :cond_1
    iget-object v5, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->to:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 66
    iget-object v5, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->to:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 67
    iget-object v5, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->to:Ljava/util/Calendar;

    const/16 v6, 0xd

    const/16 v7, 0x3b

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 68
    iget-object v5, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->to:Ljava/util/Calendar;

    const/16 v6, 0xe

    const/16 v7, 0x3e7

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 70
    .end local v1    # "fromNew":Ljava/util/Calendar;
    .end local v2    # "fromTime":Ljava/util/Date;
    .end local v3    # "toNew":Ljava/util/Calendar;
    .end local v4    # "toTime":Ljava/util/Date;
    :cond_2
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/text/ParseException;
    const-string v5, "DAYPART"

    const-string v6, "Error while trying to parse the from and/or to hours of the store day part (expandRange)"

    invoke-static {v5, v6}, Lcom/mcdonalds/sdk/services/log/MCDLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
