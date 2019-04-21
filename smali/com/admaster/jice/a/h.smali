.class Lcom/admaster/jice/a/h;
.super Ljava/lang/Thread;
.source "JiceCore.java"


# instance fields
.field final synthetic a:Lcom/admaster/jice/a/d;

.field private b:Z

.field private final c:Lcom/admaster/jice/a/b;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/admaster/jice/a/d;Lcom/admaster/jice/a/b;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/admaster/jice/a/b;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 891
    iput-object p1, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    .line 890
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 885
    iput-boolean v3, p0, Lcom/admaster/jice/a/h;->b:Z

    .line 888
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admaster/jice/a/h;->e:Ljava/lang/Object;

    .line 892
    iput-object p2, p0, Lcom/admaster/jice/a/h;->c:Lcom/admaster/jice/a/b;

    .line 893
    iput-object p3, p0, Lcom/admaster/jice/a/h;->d:Ljava/util/List;

    .line 894
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    .line 895
    iget-object v1, p0, Lcom/admaster/jice/a/h;->c:Lcom/admaster/jice/a/b;

    sget-object v2, Lcom/admaster/jice/a/b;->NORMAL:Lcom/admaster/jice/a/b;

    if-ne v1, v2, :cond_0

    .line 896
    invoke-static {p1, v0}, Lcom/admaster/jice/a/d;->a(Lcom/admaster/jice/a/d;I)V

    .line 900
    :goto_0
    iput-boolean v3, p0, Lcom/admaster/jice/a/h;->b:Z

    .line 901
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/admaster/jice/a/h;->e:Ljava/lang/Object;

    .line 902
    return-void

    .line 898
    :cond_0
    invoke-static {p1, v0}, Lcom/admaster/jice/a/d;->b(Lcom/admaster/jice/a/d;I)V

    goto :goto_0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 943
    iget-object v0, p0, Lcom/admaster/jice/a/h;->c:Lcom/admaster/jice/a/b;

    sget-object v1, Lcom/admaster/jice/a/b;->NORMAL:Lcom/admaster/jice/a/b;

    if-ne v0, v1, :cond_0

    .line 944
    iget-object v0, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v0}, Lcom/admaster/jice/a/d;->b(Lcom/admaster/jice/a/d;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/admaster/jice/a/d;->a(Lcom/admaster/jice/a/d;I)V

    .line 948
    :goto_0
    return-void

    .line 946
    :cond_0
    iget-object v0, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v0}, Lcom/admaster/jice/a/d;->a(Lcom/admaster/jice/a/d;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/admaster/jice/a/d;->b(Lcom/admaster/jice/a/d;I)V

    goto :goto_0
.end method

.method private a(Landroid/support/v4/util/Pair;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 972
    :try_start_0
    iget-object v2, p1, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 973
    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 977
    iget-object v3, p1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v4, :cond_0

    array-length v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v5, 0x3

    if-ge v3, v5, :cond_7

    .line 979
    :cond_0
    :try_start_1
    const-string v3, "JiceError"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "judgeEventHasExpired expire legal format:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "   event:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 980
    iget-object v2, p1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 979
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iget-object v2, p1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 986
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 987
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "judgeEventHasExpired event legal format:"

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 994
    :goto_0
    const-string v3, "errormsg"

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 995
    iget-object v2, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v2}, Lcom/admaster/jice/a/d;->i(Lcom/admaster/jice/a/d;)Lcom/admaster/jice/a/c;

    move-result-object v2

    invoke-static {v2}, Lcom/admaster/jice/a/c;->a(Lcom/admaster/jice/a/c;)Lcom/admaster/jice/a/a;

    move-result-object v3

    sget-object v5, Lcom/admaster/jice/a/b;->FAILED:Lcom/admaster/jice/a/b;

    iget-object v2, p1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v5, v2}, Lcom/admaster/jice/a/a;->a(Lcom/admaster/jice/a/b;Ljava/lang/String;)V

    .line 996
    iget-object v2, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v2}, Lcom/admaster/jice/a/d;->d(Lcom/admaster/jice/a/d;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 998
    iget-object v2, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v2}, Lcom/admaster/jice/a/d;->c(Lcom/admaster/jice/a/d;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "EXCEPTION"

    const-string v7, "the event of expire is legal format"

    .line 999
    iget-object v2, p1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, p1, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 998
    invoke-static {v5, v6, v7, v2, v3}, Lcom/admaster/jice/d/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    iget-object v2, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v2, v6, v7}, Lcom/admaster/jice/a/d;->a(Lcom/admaster/jice/a/d;J)Ljava/lang/String;

    move-result-object v5

    .line 1003
    new-instance v3, Landroid/support/v4/util/Pair;

    instance-of v2, v4, Lorg/json/JSONObject;

    if-nez v2, :cond_2

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-direct {v3, v2, v5}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1004
    :try_start_2
    iget-object v2, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v2}, Lcom/admaster/jice/a/d;->i(Lcom/admaster/jice/a/d;)Lcom/admaster/jice/a/c;

    move-result-object v2

    invoke-static {v2}, Lcom/admaster/jice/a/c;->a(Lcom/admaster/jice/a/c;)Lcom/admaster/jice/a/a;

    move-result-object v6

    sget-object v7, Lcom/admaster/jice/a/b;->FAILED:Lcom/admaster/jice/a/b;

    instance-of v2, v4, Lorg/json/JSONObject;

    if-nez v2, :cond_3

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v6, v7, v2, v5}, Lcom/admaster/jice/a/a;->a(Lcom/admaster/jice/a/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    iget-object v2, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v2}, Lcom/admaster/jice/a/d;->d(Lcom/admaster/jice/a/d;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1006
    const-string v2, "#"

    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    move-object p1, v3

    .line 1020
    :goto_3
    const/4 v3, 0x0

    :try_start_3
    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 1021
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1022
    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1023
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1024
    const-wide/32 v8, 0x240c8400

    add-long/2addr v8, v10

    .line 1027
    cmp-long v3, v8, v6

    if-lez v3, :cond_6

    .line 1029
    int-to-long v2, v2

    const-wide/16 v8, 0xa

    cmp-long v2, v2, v8

    if-ltz v2, :cond_5

    .line 1031
    cmp-long v2, v6, v4

    if-lez v2, :cond_4

    .line 1035
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1036
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1037
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1038
    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1039
    const/16 v6, 0x17

    const/16 v7, 0x3b

    const/16 v8, 0x3b

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    .line 1040
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 1042
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1043
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1044
    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1045
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1046
    const-string v2, "#"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1047
    const-string v2, "1"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1050
    iget-object v2, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v2}, Lcom/admaster/jice/a/d;->i(Lcom/admaster/jice/a/d;)Lcom/admaster/jice/a/c;

    move-result-object v2

    invoke-static {v2}, Lcom/admaster/jice/a/c;->a(Lcom/admaster/jice/a/c;)Lcom/admaster/jice/a/a;

    move-result-object v3

    iget-object v5, p0, Lcom/admaster/jice/a/h;->c:Lcom/admaster/jice/a/b;

    iget-object v2, p1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v2, v6}, Lcom/admaster/jice/a/a;->a(Lcom/admaster/jice/a/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    iget-object v2, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v2}, Lcom/admaster/jice/a/d;->d(Lcom/admaster/jice/a/d;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1052
    new-instance v3, Landroid/support/v4/util/Pair;

    iget-object v2, p1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1053
    iget-object v2, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v2}, Lcom/admaster/jice/a/d;->d(Lcom/admaster/jice/a/d;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1054
    invoke-direct {p0, v3}, Lcom/admaster/jice/a/h;->b(Landroid/support/v4/util/Pair;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1103
    :goto_4
    return-void

    .line 989
    :cond_1
    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    iget-object v2, p1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 990
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "judgeEventHasExpired expire legal format:"

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 1003
    :cond_2
    move-object v0, v4

    check-cast v0, Lorg/json/JSONObject;

    move-object v2, v0

    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v2

    goto/16 :goto_1

    .line 1004
    :cond_3
    :try_start_5
    check-cast v4, Lorg/json/JSONObject;

    invoke-static {v4}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v2

    goto/16 :goto_2

    .line 1010
    :catch_0
    move-exception v2

    .line 1011
    :goto_5
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1012
    iget-object v2, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v2}, Lcom/admaster/jice/a/d;->d(Lcom/admaster/jice/a/d;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1013
    iget-object v2, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v2}, Lcom/admaster/jice/a/d;->i(Lcom/admaster/jice/a/d;)Lcom/admaster/jice/a/c;

    move-result-object v2

    invoke-static {v2}, Lcom/admaster/jice/a/c;->a(Lcom/admaster/jice/a/c;)Lcom/admaster/jice/a/a;

    move-result-object v3

    sget-object v4, Lcom/admaster/jice/a/b;->FAILED:Lcom/admaster/jice/a/b;

    iget-object v2, p1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/admaster/jice/a/a;->a(Lcom/admaster/jice/a/b;Ljava/lang/String;)V

    .line 1014
    invoke-direct {p0}, Lcom/admaster/jice/a/h;->a()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    .line 1099
    :catch_1
    move-exception v2

    .line 1100
    invoke-direct {p0}, Lcom/admaster/jice/a/h;->a()V

    .line 1101
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 1075
    :cond_4
    :try_start_7
    iget-object v2, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v2}, Lcom/admaster/jice/a/d;->d(Lcom/admaster/jice/a/d;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1076
    invoke-direct {p0}, Lcom/admaster/jice/a/h;->a()V

    goto :goto_4

    .line 1085
    :cond_5
    invoke-direct {p0, p1}, Lcom/admaster/jice/a/h;->b(Landroid/support/v4/util/Pair;)V

    goto :goto_4

    .line 1092
    :cond_6
    iget-object v2, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v2}, Lcom/admaster/jice/a/d;->d(Lcom/admaster/jice/a/d;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1093
    iget-object v2, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v2}, Lcom/admaster/jice/a/d;->i(Lcom/admaster/jice/a/d;)Lcom/admaster/jice/a/c;

    move-result-object v2

    invoke-static {v2}, Lcom/admaster/jice/a/c;->a(Lcom/admaster/jice/a/c;)Lcom/admaster/jice/a/a;

    move-result-object v3

    iget-object v4, p0, Lcom/admaster/jice/a/h;->c:Lcom/admaster/jice/a/b;

    iget-object v2, p1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/admaster/jice/a/a;->a(Lcom/admaster/jice/a/b;Ljava/lang/String;)V

    .line 1094
    invoke-direct {p0}, Lcom/admaster/jice/a/h;->a()V

    .line 1095
    iget-object v2, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v2}, Lcom/admaster/jice/a/d;->c(Lcom/admaster/jice/a/d;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "INVALIDED"

    const-string v6, "record has invalided,delete it "

    iget-object v2, p1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, p1, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v5, v6, v2, v3}, Lcom/admaster/jice/d/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_4

    .line 1010
    :catch_2
    move-exception v2

    move-object p1, v3

    goto :goto_5

    :cond_7
    move-object v2, v4

    goto/16 :goto_3
.end method

.method private b()I
    .locals 2

    .prologue
    .line 951
    iget-object v0, p0, Lcom/admaster/jice/a/h;->c:Lcom/admaster/jice/a/b;

    sget-object v1, Lcom/admaster/jice/a/b;->NORMAL:Lcom/admaster/jice/a/b;

    if-ne v0, v1, :cond_0

    .line 952
    iget-object v0, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v0}, Lcom/admaster/jice/a/d;->b(Lcom/admaster/jice/a/d;)I

    move-result v0

    .line 954
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v0}, Lcom/admaster/jice/a/d;->a(Lcom/admaster/jice/a/d;)I

    move-result v0

    goto :goto_0
.end method

.method private declared-synchronized b(Landroid/support/v4/util/Pair;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 1107
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/admaster/jice/a/h;->e:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1111
    :try_start_1
    iget-object v0, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v0}, Lcom/admaster/jice/a/d;->e(Lcom/admaster/jice/a/d;)Lcom/admaster/jice/d/b;

    move-result-object v1

    invoke-static {}, Lcom/admaster/jice/b/a;->e()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1112
    invoke-static {}, Lcom/admaster/jice/b/a;->f()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    .line 1111
    invoke-virtual {v1, v3, v0, v4}, Lcom/admaster/jice/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLSocketFactory;)Z

    move-result v0

    .line 1124
    if-eqz v0, :cond_1

    .line 1126
    iget-object v0, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v0}, Lcom/admaster/jice/a/d;->i(Lcom/admaster/jice/a/d;)Lcom/admaster/jice/a/c;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/jice/a/c;->a(Lcom/admaster/jice/a/c;)Lcom/admaster/jice/a/a;

    move-result-object v1

    iget-object v3, p0, Lcom/admaster/jice/a/h;->c:Lcom/admaster/jice/a/b;

    iget-object v0, p1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/admaster/jice/a/a;->a(Lcom/admaster/jice/a/b;Ljava/lang/String;)V

    .line 1127
    iget-object v0, p0, Lcom/admaster/jice/a/h;->c:Lcom/admaster/jice/a/b;

    sget-object v1, Lcom/admaster/jice/a/b;->NORMAL:Lcom/admaster/jice/a/b;

    if-ne v0, v1, :cond_0

    .line 1128
    iget-object v0, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v0}, Lcom/admaster/jice/a/d;->f(Lcom/admaster/jice/a/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1133
    :goto_0
    iget-object v0, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v0}, Lcom/admaster/jice/a/d;->i(Lcom/admaster/jice/a/d;)Lcom/admaster/jice/a/c;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/admaster/jice/a/h;->c:Lcom/admaster/jice/a/b;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " task:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/admaster/jice/d/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p1, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1134
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  index:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/admaster/jice/a/h;->b()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " flush success has decrease on list"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1133
    invoke-static {v1, v0}, Lcom/admaster/jice/a/c;->a(Lcom/admaster/jice/a/c;Ljava/lang/String;)V

    .line 1107
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1214
    :goto_2
    :try_start_2
    invoke-direct {p0}, Lcom/admaster/jice/a/h;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1216
    monitor-exit p0

    return-void

    .line 1130
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v0}, Lcom/admaster/jice/a/d;->d(Lcom/admaster/jice/a/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1107
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1210
    :catch_0
    move-exception v0

    .line 1211
    :try_start_5
    const-string v1, "JiceSDK"

    const-string v2, "executeTask request exception"

    invoke-static {v1, v2, v0}, Lcom/admaster/jice/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 1107
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1137
    :cond_1
    :try_start_6
    iget-object v0, p1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1138
    :cond_2
    const-string v1, "JiceError"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "executeTask failed expire:"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "   event:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    :cond_3
    iget-object v0, p0, Lcom/admaster/jice/a/h;->c:Lcom/admaster/jice/a/b;

    sget-object v1, Lcom/admaster/jice/a/b;->NORMAL:Lcom/admaster/jice/a/b;

    if-ne v0, v1, :cond_4

    .line 1144
    iget-object v0, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v0}, Lcom/admaster/jice/a/d;->i(Lcom/admaster/jice/a/d;)Lcom/admaster/jice/a/c;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/jice/a/c;->a(Lcom/admaster/jice/a/c;)Lcom/admaster/jice/a/a;

    move-result-object v1

    sget-object v3, Lcom/admaster/jice/a/b;->NORMAL:Lcom/admaster/jice/a/b;

    .line 1145
    iget-object v0, p1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1144
    invoke-virtual {v1, v3, v0}, Lcom/admaster/jice/a/a;->a(Lcom/admaster/jice/a/b;Ljava/lang/String;)V

    .line 1146
    iget-object v0, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v0}, Lcom/admaster/jice/a/d;->i(Lcom/admaster/jice/a/d;)Lcom/admaster/jice/a/c;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/jice/a/c;->a(Lcom/admaster/jice/a/c;)Lcom/admaster/jice/a/a;

    move-result-object v3

    sget-object v4, Lcom/admaster/jice/a/b;->FAILED:Lcom/admaster/jice/a/b;

    .line 1147
    iget-object v0, p1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1146
    invoke-virtual {v3, v4, v0, v1}, Lcom/admaster/jice/a/a;->a(Lcom/admaster/jice/a/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    iget-object v0, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v0}, Lcom/admaster/jice/a/d;->f(Lcom/admaster/jice/a/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1151
    iget-object v0, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v0}, Lcom/admaster/jice/a/d;->d(Lcom/admaster/jice/a/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1153
    iget-object v0, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v0}, Lcom/admaster/jice/a/d;->i(Lcom/admaster/jice/a/d;)Lcom/admaster/jice/a/c;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/admaster/jice/a/h;->c:Lcom/admaster/jice/a/b;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  task:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/admaster/jice/d/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p1, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  index:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/admaster/jice/a/h;->b()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1154
    const-string v3, " flush failed, remove from normal list and cache to fail list"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1153
    invoke-static {v1, v0}, Lcom/admaster/jice/a/c;->a(Lcom/admaster/jice/a/c;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1158
    :cond_4
    iget-object v0, p1, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1162
    if-eqz v0, :cond_6

    array-length v1, v0

    if-le v1, v5, :cond_6

    .line 1163
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1164
    add-int/lit8 v1, v1, 0x1

    .line 1166
    int-to-long v4, v1

    const-wide/16 v6, 0xa

    cmp-long v3, v4, v6

    if-gtz v3, :cond_5

    .line 1169
    iget-object v3, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v3}, Lcom/admaster/jice/a/d;->d(Lcom/admaster/jice/a/d;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1172
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1174
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1175
    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1176
    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1177
    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1178
    const-string v0, "#"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1179
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1181
    iget-object v0, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v0}, Lcom/admaster/jice/a/d;->i(Lcom/admaster/jice/a/d;)Lcom/admaster/jice/a/c;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/jice/a/c;->a(Lcom/admaster/jice/a/c;)Lcom/admaster/jice/a/a;

    move-result-object v1

    iget-object v4, p0, Lcom/admaster/jice/a/h;->c:Lcom/admaster/jice/a/b;

    iget-object v0, p1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v0, v5}, Lcom/admaster/jice/a/a;->a(Lcom/admaster/jice/a/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    new-instance v1, Landroid/support/v4/util/Pair;

    iget-object v0, p1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1185
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1184
    invoke-direct {v1, v0, v4}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1186
    iget-object v0, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v0}, Lcom/admaster/jice/a/d;->d(Lcom/admaster/jice/a/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1190
    iget-object v0, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v0}, Lcom/admaster/jice/a/d;->i(Lcom/admaster/jice/a/d;)Lcom/admaster/jice/a/c;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/admaster/jice/a/h;->c:Lcom/admaster/jice/a/b;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "  task:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/admaster/jice/d/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1191
    iget-object v0, p1, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "  index:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/admaster/jice/a/h;->b()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1192
    const-string v4, " flush failed,update expire data:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  filelistCount:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v3}, Lcom/admaster/jice/a/d;->d(Lcom/admaster/jice/a/d;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1190
    invoke-static {v1, v0}, Lcom/admaster/jice/a/c;->a(Lcom/admaster/jice/a/c;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1195
    :cond_5
    iget-object v0, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v0}, Lcom/admaster/jice/a/d;->d(Lcom/admaster/jice/a/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1196
    iget-object v0, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v0}, Lcom/admaster/jice/a/d;->i(Lcom/admaster/jice/a/d;)Lcom/admaster/jice/a/c;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/admaster/jice/a/h;->c:Lcom/admaster/jice/a/b;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  task:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/admaster/jice/d/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p1, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  index:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/admaster/jice/a/h;->b()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " has beyond current day limit,today don`t try send :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v3}, Lcom/admaster/jice/a/d;->d(Lcom/admaster/jice/a/d;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/admaster/jice/a/c;->a(Lcom/admaster/jice/a/c;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1200
    :cond_6
    iget-object v0, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v0}, Lcom/admaster/jice/a/d;->d(Lcom/admaster/jice/a/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1201
    iget-object v0, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v0}, Lcom/admaster/jice/a/d;->i(Lcom/admaster/jice/a/d;)Lcom/admaster/jice/a/c;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/admaster/jice/a/h;->c:Lcom/admaster/jice/a/b;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  task:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/admaster/jice/d/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p1, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  index:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/admaster/jice/a/h;->b()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " invalid data format"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/admaster/jice/a/c;->a(Lcom/admaster/jice/a/c;Ljava/lang/String;)V

    .line 1202
    iget-object v0, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v0}, Lcom/admaster/jice/a/d;->c(Lcom/admaster/jice/a/d;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "EXCEPTION"

    const-string v5, "this record  has beyond retry day and count"

    iget-object v0, p1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v3, v4, v5, v0, v1}, Lcom/admaster/jice/d/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    const-string v1, "JiceError"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "executeTask failed invalid data format:"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "   event:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1
.end method

.method private c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 959
    iget-object v0, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v0, v1}, Lcom/admaster/jice/a/d;->a(Lcom/admaster/jice/a/d;I)V

    .line 960
    iget-object v0, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v0, v1}, Lcom/admaster/jice/a/d;->b(Lcom/admaster/jice/a/d;I)V

    .line 961
    return-void
.end method


# virtual methods
.method public isInterrupted()Z
    .locals 1

    .prologue
    .line 906
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/admaster/jice/a/h;->b:Z

    .line 907
    iget-object v0, p0, Lcom/admaster/jice/a/h;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 908
    invoke-direct {p0}, Lcom/admaster/jice/a/h;->c()V

    .line 909
    invoke-super {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 914
    iget-object v0, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v0}, Lcom/admaster/jice/a/d;->i(Lcom/admaster/jice/a/d;)Lcom/admaster/jice/a/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "execute:["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  allist:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/admaster/jice/a/h;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  failcount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v2}, Lcom/admaster/jice/a/d;->a(Lcom/admaster/jice/a/d;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  normalcount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v2}, Lcom/admaster/jice/a/d;->b(Lcom/admaster/jice/a/d;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/admaster/jice/a/c;->a(Lcom/admaster/jice/a/c;Ljava/lang/String;)V

    .line 916
    iget-object v2, p0, Lcom/admaster/jice/a/h;->e:Ljava/lang/Object;

    monitor-enter v2

    .line 918
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/admaster/jice/a/h;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 916
    monitor-exit v2

    .line 940
    :goto_1
    return-void

    .line 920
    :cond_0
    iget-object v0, p0, Lcom/admaster/jice/a/h;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/Pair;

    .line 921
    iget-boolean v3, p0, Lcom/admaster/jice/a/h;->b:Z

    if-eqz v3, :cond_1

    .line 922
    invoke-direct {p0}, Lcom/admaster/jice/a/h;->c()V

    .line 923
    iget-object v0, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v0}, Lcom/admaster/jice/a/d;->i(Lcom/admaster/jice/a/d;)Lcom/admaster/jice/a/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "EventTask:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " has interupted!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/admaster/jice/a/c;->a(Lcom/admaster/jice/a/c;Ljava/lang/String;)V

    .line 924
    iget-object v0, p0, Lcom/admaster/jice/a/h;->a:Lcom/admaster/jice/a/d;

    invoke-static {v0}, Lcom/admaster/jice/a/d;->c(Lcom/admaster/jice/a/d;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "EXCEPTION"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has interupted!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EventTask"

    const-string v5, ""

    invoke-static {v0, v1, v3, v4, v5}, Lcom/admaster/jice/d/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    monitor-exit v2

    goto :goto_1

    .line 916
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 933
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/admaster/jice/a/h;->c:Lcom/admaster/jice/a/b;

    sget-object v4, Lcom/admaster/jice/a/b;->NORMAL:Lcom/admaster/jice/a/b;

    if-ne v3, v4, :cond_2

    .line 934
    invoke-direct {p0, v0}, Lcom/admaster/jice/a/h;->b(Landroid/support/v4/util/Pair;)V

    .line 918
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 936
    :cond_2
    invoke-direct {p0, v0}, Lcom/admaster/jice/a/h;->a(Landroid/support/v4/util/Pair;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method
