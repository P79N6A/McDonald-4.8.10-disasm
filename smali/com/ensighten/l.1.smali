.class public final Lcom/ensighten/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ensighten/f$a;
.implements Lcom/ensighten/h$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ensighten/l$a;
    }
.end annotation


# instance fields
.field public a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ensighten/U;",
            ">;>;"
        }
    .end annotation
.end field

.field public b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ensighten/U;",
            ">;>;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/ensighten/l$a;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lcom/ensighten/utils/BatteryInfoManager;

.field public g:Lorg/json/JSONObject;

.field private h:Landroid/content/Context;

.field private i:Lcom/ensighten/m;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lcom/ensighten/T;

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/ensighten/m;

    invoke-direct {v0}, Lcom/ensighten/m;-><init>()V

    iput-object v0, p0, Lcom/ensighten/l;->i:Lcom/ensighten/m;

    .line 67
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ensighten/l;->a:Landroid/util/SparseArray;

    .line 72
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ensighten/l;->b:Landroid/util/SparseArray;

    .line 102
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ensighten/l;->e:Ljava/util/Set;

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ensighten/l;->m:Z

    .line 127
    iput-object p1, p0, Lcom/ensighten/l;->h:Landroid/content/Context;

    .line 129
    :try_start_0
    new-instance v0, Lcom/ensighten/utils/BatteryInfoManager;

    invoke-direct {v0}, Lcom/ensighten/utils/BatteryInfoManager;-><init>()V

    iput-object v0, p0, Lcom/ensighten/l;->f:Lcom/ensighten/utils/BatteryInfoManager;

    .line 130
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/ensighten/l;->h:Landroid/content/Context;

    iget-object v1, p0, Lcom/ensighten/l;->f:Lcom/ensighten/utils/BatteryInfoManager;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ensighten/l;->m:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    invoke-static {v0}, Lcom/ensighten/i;->c(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ensighten/R;",
            ">;"
        }
    .end annotation

    .prologue
    .line 824
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 825
    invoke-static {}, Lcom/ensighten/Ensighten;->getConfigurationManager()Lcom/ensighten/f;

    move-result-object v0

    .line 38181
    iget-object v3, v0, Lcom/ensighten/f;->a:Lcom/ensighten/e;

    .line 38510
    :try_start_0
    iget-object v0, v3, Lcom/ensighten/e;->i:Ljava/util/Map;

    .line 828
    const-string v1, "MoviePlayback"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 829
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 830
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 831
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/regex/Pattern;

    .line 832
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 833
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38522
    iget-object v1, v3, Lcom/ensighten/e;->j:Ljava/util/Map;

    .line 834
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 835
    if-eqz v0, :cond_0

    .line 836
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 837
    new-instance v3, Lcom/ensighten/R;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/ensighten/R;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 844
    :catch_0
    move-exception v0

    .line 845
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 846
    const-string v1, "The JSON format for keyframes in the configuration was invalid."

    invoke-static {v1, v0}, Lcom/ensighten/i;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 848
    :cond_1
    return-object v2
.end method

.method private a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 879
    iget-object v1, p0, Lcom/ensighten/l;->e:Ljava/util/Set;

    monitor-enter v1

    .line 880
    :try_start_0
    iget-object v0, p0, Lcom/ensighten/l;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ensighten/l$a;

    .line 881
    invoke-interface {v0}, Lcom/ensighten/l$a;->a()V

    goto :goto_0

    .line 883
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private a(Lorg/json/JSONArray;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Z)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 724
    invoke-static {}, Lcom/ensighten/Ensighten;->getConfigurationManager()Lcom/ensighten/f;

    move-result-object v2

    .line 30181
    iget-object v2, v2, Lcom/ensighten/f;->a:Lcom/ensighten/e;

    .line 30450
    iget-boolean v3, v2, Lcom/ensighten/e;->n:Z

    .line 725
    if-nez v3, :cond_0

    .line 30494
    iget-boolean v3, v2, Lcom/ensighten/e;->y:Z

    .line 725
    if-eqz v3, :cond_2

    .line 726
    :cond_0
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 727
    const-string v1, "Skipped processing rules: isPrivacyMode: %b batteryKillEnabled: %b"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 31450
    iget-boolean v4, v2, Lcom/ensighten/e;->n:Z

    .line 727
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    .line 31494
    iget-boolean v0, v2, Lcom/ensighten/e;->y:Z

    .line 727
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    .line 780
    :cond_1
    :goto_0
    return-void

    .line 731
    :cond_2
    if-eqz p1, :cond_1

    .line 735
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v2, v0

    .line 736
    :goto_1
    if-ge v2, v4, :cond_1

    .line 737
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 738
    const-string v0, "enabled"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 739
    const-string v0, "id"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "id"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/ensighten/l;->c:Ljava/lang/String;

    .line 741
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 742
    const-string v0, "Processing rule %s."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/ensighten/l;->c:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ensighten/i;->b(Ljava/lang/String;)V

    .line 744
    :cond_3
    const-string v0, "criteria"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "criteria"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 745
    :goto_3
    const-string v5, "data"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 748
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstructionProcessor()Lcom/ensighten/E;

    move-result-object v6

    .line 749
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_a

    .line 750
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 751
    const-string v3, "Processing criteria"

    invoke-static {v3}, Lcom/ensighten/i;->b(Ljava/lang/String;)V

    .line 753
    :cond_4
    invoke-virtual {v6, p4}, Lcom/ensighten/E;->a([Ljava/lang/Object;)V

    .line 31881
    iput-object p2, v6, Lcom/ensighten/E;->e:Ljava/lang/Object;

    .line 31889
    iput-object p3, v6, Lcom/ensighten/E;->f:Ljava/lang/String;

    .line 757
    invoke-static {v0}, Lcom/ensighten/Utils;->jsonRulesToArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v6, v3, p5}, Lcom/ensighten/E;->a(Ljava/util/ArrayList;Z)Ljava/lang/String;

    move-result-object v3

    .line 759
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 760
    const-string v7, "Criteria return value is %s."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ensighten/i;->b(Ljava/lang/String;)V

    .line 763
    :cond_5
    :goto_4
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "true"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 765
    invoke-virtual {v6, p4}, Lcom/ensighten/E;->a([Ljava/lang/Object;)V

    .line 32881
    iput-object p2, v6, Lcom/ensighten/E;->e:Ljava/lang/Object;

    .line 32889
    iput-object p3, v6, Lcom/ensighten/E;->f:Ljava/lang/String;

    .line 769
    invoke-static {v5}, Lcom/ensighten/Utils;->jsonRulesToArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v6, v0, p5}, Lcom/ensighten/E;->a(Ljava/util/ArrayList;Z)Ljava/lang/String;

    move-result-object v0

    .line 771
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 772
    const-string v3, "Instructions return value is %s."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ensighten/i;->b(Ljava/lang/String;)V

    .line 736
    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    .line 739
    :cond_8
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :cond_9
    move-object v0, v1

    .line 744
    goto/16 :goto_3

    .line 776
    :catch_0
    move-exception v0

    .line 777
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 778
    invoke-static {v0}, Lcom/ensighten/i;->c(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_a
    move-object v3, v1

    goto :goto_4
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/ensighten/l;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ensighten/l;->k:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 698
    iput-object v0, p0, Lcom/ensighten/l;->j:Ljava/lang/String;

    .line 699
    iput-object v0, p0, Lcom/ensighten/l;->k:Ljava/lang/String;

    .line 700
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 160
    invoke-static {}, Lcom/ensighten/Ensighten;->getConfigurationManager()Lcom/ensighten/f;

    move-result-object v0

    .line 1181
    iget-object v0, v0, Lcom/ensighten/f;->a:Lcom/ensighten/e;

    .line 1442
    iget-boolean v1, v0, Lcom/ensighten/e;->v:Z

    .line 161
    if-eqz v1, :cond_0

    .line 2422
    iget-object v1, v0, Lcom/ensighten/e;->e:Lorg/json/JSONArray;

    .line 162
    invoke-virtual {p0, v1, v2, v2, v2}, Lcom/ensighten/l;->a(Lorg/json/JSONArray;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2478
    iput-object v2, v0, Lcom/ensighten/e;->e:Lorg/json/JSONArray;

    .line 165
    :cond_0
    return-void
.end method

.method public a(Lcom/ensighten/H;)V
    .locals 14

    .prologue
    const/4 v7, 0x0

    .line 489
    invoke-static {}, Lcom/ensighten/Ensighten;->getConfigurationManager()Lcom/ensighten/f;

    move-result-object v1

    .line 17181
    iget-object v10, v1, Lcom/ensighten/f;->a:Lcom/ensighten/e;

    .line 492
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/ensighten/G;

    move-object v1, v0

    .line 493
    invoke-interface {p1}, Lcom/ensighten/H;->a()Ljava/lang/String;

    move-result-object v3

    .line 18035
    iget-object v11, v1, Lcom/ensighten/G;->b:Ljava/lang/String;

    .line 19031
    iget-object v2, v1, Lcom/ensighten/G;->a:Ljava/lang/String;

    .line 19569
    if-eqz v2, :cond_0

    .line 19570
    const-string v4, "seekComplete"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 19571
    invoke-static {}, Lcom/ensighten/Ensighten;->getJavascriptProcessor()Lcom/ensighten/h;

    move-result-object v4

    const-string v5, "Bootstrapper.onSeekComplete();"

    invoke-virtual {v4, v5}, Lcom/ensighten/h;->c(Ljava/lang/String;)V

    .line 500
    :cond_0
    :goto_0
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_18

    .line 501
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aget-object v2, v2, v4

    move-object v9, v2

    .line 503
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 504
    iget-object v2, p0, Lcom/ensighten/l;->i:Lcom/ensighten/m;

    .line 20239
    iget-object v2, v2, Lcom/ensighten/m;->b:Ljava/util/Map;

    .line 504
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    .line 20510
    iget-object v4, v10, Lcom/ensighten/e;->i:Ljava/util/Map;

    .line 505
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 21411
    iget-object v4, v10, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    .line 507
    const-string v5, "notifications"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "notifications"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 508
    :goto_2
    const-string v5, "MoviePlayback"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "MoviePlayback"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    move-object v8, v4

    .line 510
    :goto_3
    if-nez v2, :cond_14

    if-eqz v3, :cond_14

    if-eqz v8, :cond_14

    .line 513
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 514
    :goto_4
    if-eqz v4, :cond_e

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 516
    :goto_5
    if-nez v4, :cond_12

    .line 517
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object v6, v4

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 518
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/regex/Pattern;

    .line 519
    invoke-virtual {v5, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 520
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 522
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 523
    :goto_7
    if-eqz v4, :cond_10

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 524
    :goto_8
    if-nez v4, :cond_12

    :goto_9
    move-object v6, v4

    .line 528
    goto :goto_6

    .line 19572
    :cond_1
    const-string v4, "seekStart"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 19573
    invoke-static {}, Lcom/ensighten/Ensighten;->getJavascriptProcessor()Lcom/ensighten/h;

    move-result-object v4

    const-string v5, "Bootstrapper.onSeekStart();"

    invoke-virtual {v4, v5}, Lcom/ensighten/h;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 557
    :catch_0
    move-exception v1

    .line 558
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 24486
    iget-boolean v2, v10, Lcom/ensighten/e;->w:Z

    .line 558
    if-eqz v2, :cond_2

    .line 559
    invoke-static {v1}, Lcom/ensighten/i;->b(Ljava/lang/Exception;)V

    .line 561
    :cond_2
    :goto_a
    return-void

    .line 19574
    :cond_3
    :try_start_1
    const-string v4, "chapterComplete"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 19575
    invoke-static {}, Lcom/ensighten/Ensighten;->getJavascriptProcessor()Lcom/ensighten/h;

    move-result-object v4

    const-string v5, "Bootstrapper.onChapterComplete();"

    invoke-virtual {v4, v5}, Lcom/ensighten/h;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 19576
    :cond_4
    const-string v4, "chapterStart"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 19577
    invoke-static {}, Lcom/ensighten/Ensighten;->getJavascriptProcessor()Lcom/ensighten/h;

    move-result-object v4

    const-string v5, "Bootstrapper.onChapterComplete();"

    invoke-virtual {v4, v5}, Lcom/ensighten/h;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 19578
    :cond_5
    const-string v4, "adComplete"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 19579
    invoke-static {}, Lcom/ensighten/Ensighten;->getJavascriptProcessor()Lcom/ensighten/h;

    move-result-object v4

    const-string v5, "Bootstrapper.onAdComplete();"

    invoke-virtual {v4, v5}, Lcom/ensighten/h;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 19580
    :cond_6
    const-string v4, "adStart"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 19581
    invoke-static {}, Lcom/ensighten/Ensighten;->getJavascriptProcessor()Lcom/ensighten/h;

    move-result-object v4

    const-string v5, "Bootstrapper.onAdStart();"

    invoke-virtual {v4, v5}, Lcom/ensighten/h;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 19582
    :cond_7
    const-string v4, "pause"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 19583
    invoke-static {}, Lcom/ensighten/Ensighten;->getJavascriptProcessor()Lcom/ensighten/h;

    move-result-object v4

    const-string v5, "Bootstrapper.onVideoPause();"

    invoke-virtual {v4, v5}, Lcom/ensighten/h;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 19584
    :cond_8
    const-string v4, "resume"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 19585
    invoke-static {}, Lcom/ensighten/Ensighten;->getJavascriptProcessor()Lcom/ensighten/h;

    move-result-object v4

    const-string v5, "Bootstrapper.onVideoPlay();"

    invoke-virtual {v4, v5}, Lcom/ensighten/h;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 19586
    :cond_9
    const-string v4, "complete"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 19587
    invoke-static {}, Lcom/ensighten/Ensighten;->getJavascriptProcessor()Lcom/ensighten/h;

    move-result-object v4

    const-string v5, "Bootstrapper.onVideoComplete();  Bootstrapper.onVideoUnload();"

    invoke-virtual {v4, v5}, Lcom/ensighten/h;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 19588
    :cond_a
    const-string/jumbo v4, "videoLoad"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 19589
    invoke-static {}, Lcom/ensighten/Ensighten;->getJavascriptProcessor()Lcom/ensighten/h;

    move-result-object v4

    const-string v5, "Bootstrapper.onVideoLoad();"

    invoke-virtual {v4, v5}, Lcom/ensighten/h;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    move-object v4, v7

    .line 507
    goto/16 :goto_2

    :cond_c
    move-object v8, v7

    .line 508
    goto/16 :goto_3

    :cond_d
    move-object v4, v7

    .line 513
    goto/16 :goto_4

    :cond_e
    move-object v4, v7

    .line 514
    goto/16 :goto_5

    :cond_f
    move-object v4, v7

    .line 522
    goto/16 :goto_7

    :cond_10
    move-object v4, v7

    .line 523
    goto/16 :goto_8

    :cond_11
    move-object v4, v6

    .line 531
    :cond_12
    if-eqz v4, :cond_14

    const-string v3, "rules"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 532
    const-string v2, "rules"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 533
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 534
    const-string v3, "Adding notification rule to queue with key %d."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v12, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    .line 535
    :cond_13
    iget-object v3, p0, Lcom/ensighten/l;->i:Lcom/ensighten/m;

    .line 22239
    iget-object v3, v3, Lcom/ensighten/m;->b:Ljava/util/Map;

    .line 535
    invoke-interface {v3, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    :cond_14
    if-eqz v2, :cond_15

    .line 541
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 542
    const/4 v4, 0x0

    .line 23035
    iget-object v5, v1, Lcom/ensighten/G;->b:Ljava/lang/String;

    .line 542
    aput-object v5, v3, v4

    .line 543
    const/4 v4, 0x1

    .line 24031
    iget-object v5, v1, Lcom/ensighten/G;->a:Ljava/lang/String;

    .line 543
    aput-object v5, v3, v4

    .line 544
    const/4 v4, 0x2

    .line 24039
    iget v5, v1, Lcom/ensighten/G;->c:I

    .line 544
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 545
    const/4 v4, 0x3

    .line 24043
    iget v1, v1, Lcom/ensighten/G;->d:I

    .line 545
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    .line 546
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 547
    const-string/jumbo v4, "undefined"

    .line 548
    invoke-virtual {p0, v2, v1, v4, v3}, Lcom/ensighten/l;->a(Lorg/json/JSONArray;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 553
    :cond_15
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 554
    const-string v1, "Adding empty notification rule to queue with key %d."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v12, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    .line 555
    :cond_16
    iget-object v1, p0, Lcom/ensighten/l;->i:Lcom/ensighten/m;

    .line 24239
    iget-object v1, v1, Lcom/ensighten/m;->b:Ljava/util/Map;

    .line 555
    sget-object v2, Lcom/ensighten/a;->b:Lorg/json/JSONArray;

    invoke-interface {v1, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_a

    :cond_17
    move-object v4, v6

    goto/16 :goto_9

    :cond_18
    move-object v9, v2

    goto/16 :goto_1
.end method

.method public final a(Lcom/ensighten/e;)V
    .locals 16

    .prologue
    .line 172
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ensighten/l;->i:Lcom/ensighten/m;

    .line 3054
    iget-object v1, v6, Lcom/ensighten/m;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 3056
    if-eqz p1, :cond_0

    .line 3411
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    .line 3056
    if-nez v1, :cond_1

    .line 173
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/ensighten/l;->c()V

    .line 174
    return-void

    .line 4411
    :cond_1
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    .line 3062
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 3065
    :try_start_0
    const-string v2, "classes"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "classes"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    move-object v5, v1

    .line 3066
    :goto_1
    if-eqz v5, :cond_4

    .line 3067
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 3068
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    .line 3069
    :cond_2
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3070
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3071
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 3072
    invoke-static {v1}, Lcom/ensighten/Utils;->isSimpleClassOrMethodName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3073
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 3074
    const/4 v2, 0x0

    .line 3075
    if-eqz v10, :cond_b

    .line 3076
    invoke-virtual {v10}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v12

    move v3, v2

    .line 3077
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3078
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3079
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v13, "rules"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 3080
    invoke-static {v2}, Lcom/ensighten/Utils;->isSimpleClassOrMethodName(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 3081
    if-nez v4, :cond_3

    .line 3082
    sget-object v4, Lcom/ensighten/a;->b:Lorg/json/JSONArray;

    .line 3084
    :cond_3
    iget-object v13, v6, Lcom/ensighten/m;->b:Ljava/util/Map;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "|"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 3103
    :cond_4
    :goto_4
    iput-object v7, v6, Lcom/ensighten/m;->a:Lorg/json/JSONObject;

    .line 3105
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3106
    const-string v1, "New rule cache after processing config is %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v6, Lcom/ensighten/m;->b:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    .line 3107
    const-string v2, "New config cache after processing config is %s."

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v1, v6, Lcom/ensighten/m;->a:Lorg/json/JSONObject;

    instance-of v5, v1, Lorg/json/JSONObject;

    if-nez v5, :cond_e

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5
    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    .line 3112
    :cond_5
    :try_start_1
    iget-object v1, v6, Lcom/ensighten/m;->a:Lorg/json/JSONObject;

    if-eqz v1, :cond_f

    iget-object v1, v6, Lcom/ensighten/m;->a:Lorg/json/JSONObject;

    const-string v2, "classes"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v6, Lcom/ensighten/m;->a:Lorg/json/JSONObject;

    const-string v2, "classes"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    move-object v3, v1

    .line 3113
    :goto_6
    if-eqz v3, :cond_0

    .line 3114
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3115
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3116
    iget-object v2, v6, Lcom/ensighten/m;->c:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3118
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 3119
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3120
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3121
    iget-object v7, v6, Lcom/ensighten/m;->d:Ljava/util/Map;

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    invoke-interface {v7, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3122
    sget-object v7, Lcom/ensighten/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "onCrash"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3123
    invoke-static {}, Lcom/ensighten/Ensighten;->getExceptionManager()Lcom/ensighten/exception/ExceptionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ensighten/exception/ExceptionManager;->b()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    .line 3128
    :catch_1
    move-exception v1

    .line 3129
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 3065
    :cond_8
    const/4 v1, 0x0

    move-object v5, v1

    goto/16 :goto_1

    .line 3086
    :cond_9
    :try_start_2
    invoke-virtual {v11, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3087
    const/4 v3, 0x1

    .line 3089
    goto/16 :goto_3

    :cond_a
    move v2, v3

    .line 3091
    :cond_b
    if-eqz v2, :cond_2

    .line 3092
    invoke-virtual {v8, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2

    .line 3095
    :cond_c
    invoke-virtual {v8, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2

    .line 3098
    :cond_d
    const-string v1, "classes"

    invoke-virtual {v7, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    .line 3107
    :cond_e
    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    .line 3112
    :cond_f
    const/4 v1, 0x0

    move-object v3, v1

    goto :goto_6
.end method

.method public final a(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 187
    return-void
.end method

.method public final a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 197
    .line 6209
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 6210
    :cond_0
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6211
    const-string v0, "The class or method is null during event evaluation."

    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    .line 6212
    :cond_1
    :goto_0
    return-void

    .line 6215
    :cond_2
    const-wide/16 v0, 0x0

    .line 6216
    invoke-static {}, Lcom/ensighten/j;->a()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_6

    .line 6217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v6, v0

    .line 6220
    :goto_1
    invoke-static {}, Lcom/ensighten/Ensighten;->getConfigurationManager()Lcom/ensighten/f;

    move-result-object v0

    .line 7181
    iget-object v0, v0, Lcom/ensighten/f;->a:Lcom/ensighten/e;

    .line 6221
    invoke-virtual {v0}, Lcom/ensighten/e;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7442
    iget-boolean v1, v0, Lcom/ensighten/e;->v:Z

    .line 6221
    if-eqz v1, :cond_4

    .line 6222
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 6223
    invoke-direct {p0, v1, p2}, Lcom/ensighten/l;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6226
    iput-object v1, p0, Lcom/ensighten/l;->j:Ljava/lang/String;

    .line 6227
    iput-object p2, p0, Lcom/ensighten/l;->k:Ljava/lang/String;

    .line 7450
    iget-boolean v0, v0, Lcom/ensighten/e;->n:Z

    .line 6230
    if-nez v0, :cond_4

    .line 6232
    :try_start_0
    iget-object v0, p0, Lcom/ensighten/l;->i:Lcom/ensighten/m;

    invoke-virtual {v0, p2, p3, v1}, Lcom/ensighten/m;->a(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 6233
    if-eqz v1, :cond_3

    .line 6234
    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/ensighten/l;->a(Lorg/json/JSONArray;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6240
    :cond_3
    invoke-direct {p0}, Lcom/ensighten/l;->d()V

    .line 6245
    :cond_4
    :goto_2
    invoke-static {}, Lcom/ensighten/j;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_1

    .line 6246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v6

    .line 6247
    const-string v2, "\tEvent evaluation of %s.%s took %d."

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ensighten/j;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 6236
    :catch_0
    move-exception v0

    .line 6237
    :try_start_1
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6238
    invoke-static {v0}, Lcom/ensighten/i;->c(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6240
    :cond_5
    invoke-direct {p0}, Lcom/ensighten/l;->d()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/ensighten/l;->d()V

    throw v0

    :cond_6
    move-wide v6, v0

    goto :goto_1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ensighten/l;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Z)V

    .line 260
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Z)V
    .locals 17

    .prologue
    .line 272
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-nez v4, :cond_2

    .line 273
    :cond_0
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 274
    const-string v2, "The class or method is null during event evaluation."

    invoke-static {v2}, Lcom/ensighten/i;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/ensighten/l;->d()V

    .line 420
    :goto_0
    return-void

    .line 278
    :cond_2
    const-wide/16 v2, 0x0

    .line 279
    :try_start_1
    invoke-static {}, Lcom/ensighten/j;->a()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    if-ne v5, v6, :cond_21

    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-wide v8, v2

    .line 283
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    .line 284
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v10, v1}, Lcom/ensighten/l;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    .line 419
    invoke-direct/range {p0 .. p0}, Lcom/ensighten/l;->d()V

    goto :goto_0

    .line 287
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/ensighten/l;->j:Ljava/lang/String;

    .line 288
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ensighten/l;->k:Ljava/lang/String;

    .line 291
    invoke-static {}, Lcom/ensighten/Ensighten;->getConfigurationManager()Lcom/ensighten/f;

    move-result-object v2

    .line 8181
    iget-object v5, v2, Lcom/ensighten/f;->a:Lcom/ensighten/e;

    .line 292
    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/widget/VideoView;

    .line 293
    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ensighten/l;->d:Z

    if-nez v2, :cond_4

    .line 8486
    iget-boolean v2, v5, Lcom/ensighten/e;->w:Z

    .line 293
    if-eqz v2, :cond_5

    const-string v2, "start"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 294
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ensighten/l;->l:Lcom/ensighten/T;

    if-nez v2, :cond_5

    .line 295
    new-instance v3, Lcom/ensighten/T;

    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/VideoView;

    move-object v2, v0

    invoke-direct {v3, v2}, Lcom/ensighten/T;-><init>(Landroid/widget/VideoView;)V

    .line 296
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/ensighten/l;->l:Lcom/ensighten/T;

    .line 297
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 298
    const-string v2, "A video tracker has been created for source %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ensighten/i;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 304
    :cond_5
    :try_start_3
    const-string v2, "loadAd"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 305
    invoke-static/range {p1 .. p1}, Lcom/ensighten/google/ads/AdHandler;->handleLoadAd(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 312
    :cond_6
    :goto_2
    const/4 v4, 0x0

    .line 313
    const/4 v3, 0x0

    .line 314
    :try_start_4
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    invoke-static {}, Lcom/ensighten/Ensighten;->getStorageManager()Lcom/ensighten/N;

    move-result-object v6

    .line 316
    const-string v2, "onResume"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_11

    .line 317
    const/4 v3, 0x1

    .line 318
    move-object/from16 v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    .line 319
    invoke-static {}, Lcom/ensighten/Ensighten;->getViewManager()Lcom/ensighten/W;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/ensighten/W;->a(Landroid/app/Activity;)V

    .line 320
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 321
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/ensighten/l;->m:Z

    if-nez v11, :cond_7

    .line 322
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ensighten/l;->h:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ensighten/l;->f:Lcom/ensighten/utils/BatteryInfoManager;

    new-instance v13, Landroid/content/IntentFilter;

    const-string v14, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v13, v14}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 324
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/ensighten/l;->a(Landroid/app/Activity;)V

    .line 325
    invoke-static {}, Lcom/ensighten/Ensighten;->getWebManager()Lcom/ensighten/X;

    move-result-object v11

    .line 9458
    iget-boolean v12, v11, Lcom/ensighten/X;->k:Z

    if-nez v12, :cond_8

    .line 9459
    invoke-virtual {v11}, Lcom/ensighten/X;->b()V

    .line 326
    :cond_8
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 327
    const-string v11, "Checking if current activity %s is root: %b"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v7, v12, v13

    const/4 v7, 0x1

    invoke-virtual {v2}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v7

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    .line 329
    :cond_9
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 330
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    .line 331
    const-string v7, "onPauseTime"

    invoke-virtual {v6, v7}, Lcom/ensighten/N;->c(Ljava/lang/String;)J

    move-result-wide v6

    .line 333
    const-wide/16 v14, 0x0

    cmp-long v11, v6, v14

    if-nez v11, :cond_10

    .line 334
    invoke-static {}, Lcom/ensighten/Ensighten;->getJavascriptProcessor()Lcom/ensighten/h;

    move-result-object v6

    const-string v7, "Bootstrapper.onAppEnterForeground(params);"

    invoke-virtual {v6, v7}, Lcom/ensighten/h;->c(Ljava/lang/String;)V

    .line 10458
    :cond_a
    :goto_3
    iget-boolean v6, v5, Lcom/ensighten/e;->t:Z

    .line 346
    if-eqz v6, :cond_b

    .line 10466
    iget-boolean v6, v5, Lcom/ensighten/e;->o:Z

    .line 346
    if-nez v6, :cond_b

    .line 347
    invoke-static {v2}, Lcom/ensighten/Utils;->showPrivacyDialog(Landroid/app/Activity;)V

    :cond_b
    move v2, v3

    move v3, v4

    .line 387
    :goto_4
    if-eqz v2, :cond_c

    .line 389
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ensighten/Ensighten;->a()V

    .line 393
    :cond_c
    invoke-virtual {v5}, Lcom/ensighten/e;->a()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 15442
    iget-boolean v2, v5, Lcom/ensighten/e;->v:Z

    .line 393
    if-eqz v2, :cond_d

    .line 16411
    iget-object v2, v5, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    .line 395
    const-string v4, "debugMode"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    const-string v4, "debugMode"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 397
    invoke-static {}, Lcom/ensighten/Ensighten;->getJavascriptProcessor()Lcom/ensighten/h;

    move-result-object v2

    const-string v3, "%s(\'%s\',\'%s\',\'%s\');"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ensightenDebug"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ensighten/h;->c(Ljava/lang/String;)V

    .line 411
    :cond_d
    :goto_5
    invoke-static {}, Lcom/ensighten/j;->a()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_e

    .line 412
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v8

    .line 413
    const-string v4, "\tEvent evaluation of %s.%s took %d."

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v10, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ensighten/j;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 419
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/ensighten/l;->d()V

    goto/16 :goto_0

    .line 308
    :catch_0
    move-exception v2

    :try_start_5
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 309
    const-string v2, "Unable to find Google AdMob library, no ad tracking is available"

    invoke-static {v2}, Lcom/ensighten/i;->d(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 415
    :catch_1
    move-exception v2

    .line 416
    :try_start_6
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 417
    invoke-static {v2}, Lcom/ensighten/i;->c(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 419
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/ensighten/l;->d()V

    goto/16 :goto_0

    .line 338
    :cond_10
    sub-long v6, v12, v6

    .line 339
    const-wide/16 v12, 0x7d0

    cmp-long v6, v6, v12

    if-lez v6, :cond_a

    .line 340
    :try_start_7
    invoke-static {}, Lcom/ensighten/Ensighten;->getJavascriptProcessor()Lcom/ensighten/h;

    move-result-object v6

    const-string v7, "Bootstrapper.onAppEnterBackground(params);"

    invoke-virtual {v6, v7}, Lcom/ensighten/h;->c(Ljava/lang/String;)V

    .line 341
    invoke-static {}, Lcom/ensighten/Ensighten;->getJavascriptProcessor()Lcom/ensighten/h;

    move-result-object v6

    const-string v7, "Bootstrapper.onAppEnterForeground(params);"

    invoke-virtual {v6, v7}, Lcom/ensighten/h;->c(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_3

    .line 419
    :catchall_0
    move-exception v2

    invoke-direct/range {p0 .. p0}, Lcom/ensighten/l;->d()V

    throw v2

    .line 349
    :cond_11
    :try_start_8
    const-string v2, "onPause"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_1b

    .line 353
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    .line 354
    const-string v2, "onPauseTime"

    invoke-virtual {v6, v2, v12, v13}, Lcom/ensighten/N;->a(Ljava/lang/String;J)V

    .line 356
    invoke-static {}, Lcom/ensighten/Ensighten;->getJavascriptProcessor()Lcom/ensighten/h;

    move-result-object v2

    .line 11257
    iget-boolean v4, v2, Lcom/ensighten/h;->e:Z

    if-eqz v4, :cond_13

    .line 11258
    invoke-static {}, Lcom/ensighten/Ensighten;->getConfigurationManager()Lcom/ensighten/f;

    move-result-object v4

    .line 12181
    iget-object v4, v4, Lcom/ensighten/f;->a:Lcom/ensighten/e;

    .line 12438
    iget-boolean v4, v4, Lcom/ensighten/e;->s:Z

    .line 11259
    if-eqz v4, :cond_19

    .line 11260
    iget-object v4, v2, Lcom/ensighten/h;->b:Ljava/lang/Thread;

    if-eqz v4, :cond_12

    iget-object v4, v2, Lcom/ensighten/h;->b:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-nez v4, :cond_18

    .line 11261
    :cond_12
    new-instance v4, Lcom/ensighten/h$1;

    invoke-direct {v4, v2}, Lcom/ensighten/h$1;-><init>(Lcom/ensighten/h;)V

    iput-object v4, v2, Lcom/ensighten/h;->b:Ljava/lang/Thread;

    .line 11283
    iget-object v2, v2, Lcom/ensighten/h;->b:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 358
    :cond_13
    :goto_6
    const/4 v2, 0x1

    .line 13438
    iget-boolean v4, v5, Lcom/ensighten/e;->s:Z

    .line 360
    if-eqz v4, :cond_14

    .line 361
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 365
    :cond_14
    invoke-static {}, Lcom/ensighten/Utils;->hidePrivacyDialog()V

    .line 367
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ensighten/l;->l:Lcom/ensighten/T;

    if-eqz v4, :cond_17

    .line 368
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 369
    const-string v6, "Video paused for activity %s. Shutting down the tracker for source %s."

    const/4 v4, 0x2

    new-array v7, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/ensighten/Ensighten;->getViewManager()Lcom/ensighten/W;

    move-result-object v11

    .line 13978
    iget-object v11, v11, Lcom/ensighten/W;->b:Ljava/lang/String;

    .line 369
    aput-object v11, v7, v4

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ensighten/l;->l:Lcom/ensighten/T;

    .line 14079
    iget-object v12, v4, Lcom/ensighten/T;->h:Landroid/widget/VideoView;

    if-nez v12, :cond_1a

    const-string/jumbo v4, "undefined"

    .line 369
    :goto_7
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    .line 370
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ensighten/l;->l:Lcom/ensighten/T;

    .line 14102
    iget-object v6, v4, Lcom/ensighten/T;->i:Lcom/ensighten/S;

    if-eqz v6, :cond_16

    .line 14103
    iget-object v6, v4, Lcom/ensighten/T;->i:Lcom/ensighten/S;

    .line 15036
    iget-object v6, v6, Lcom/ensighten/S;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 15075
    :cond_16
    iget-object v6, v4, Lcom/ensighten/T;->g:Ljava/lang/String;

    .line 14105
    const-string v7, "closed"

    const/high16 v11, -0x80000000

    const/high16 v12, -0x80000000

    invoke-static {v6, v7, v11, v12}, Lcom/ensighten/T;->a(Ljava/lang/String;Ljava/lang/String;II)Landroid/os/Message;

    move-result-object v6

    .line 14106
    iget-object v4, v4, Lcom/ensighten/T;->f:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 371
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/ensighten/l;->l:Lcom/ensighten/T;

    :cond_17
    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    .line 373
    goto/16 :goto_4

    .line 11285
    :cond_18
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 11286
    const-string v2, "Queue save called while previous save is in progress."

    invoke-static {v2}, Lcom/ensighten/i;->c(Ljava/lang/String;)V

    goto :goto_6

    .line 11289
    :cond_19
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 11290
    const-string v2, "Not saving queue due to disabled persistent storage."

    invoke-static {v2}, Lcom/ensighten/i;->b(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 14079
    :cond_1a
    iget-object v4, v4, Lcom/ensighten/T;->h:Landroid/widget/VideoView;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    .line 373
    :cond_1b
    const-string v2, "onRestart"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_1c

    .line 374
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 375
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    .line 376
    invoke-virtual {v6, v2}, Lcom/ensighten/N;->a(Ljava/util/Date;)I

    move-result v2

    .line 377
    const-string v7, "lastUseDate"

    invoke-virtual {v6, v7, v12, v13}, Lcom/ensighten/N;->a(Ljava/lang/String;J)V

    .line 378
    const-string v7, "previousSessionLength"

    int-to-long v12, v2

    invoke-virtual {v6, v7, v12, v13}, Lcom/ensighten/N;->a(Ljava/lang/String;J)V

    .line 379
    invoke-virtual {v6}, Lcom/ensighten/N;->a()V

    move v2, v3

    move v3, v4

    .line 380
    goto/16 :goto_4

    :cond_1c
    const-string v2, "dispatchTouchEvent"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_1e

    .line 381
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 382
    const-string v2, "Proxying dispatchTouchEvent via Ensighten from class %s."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    .line 383
    :cond_1d
    const/4 v2, 0x0

    aget-object v2, p3, v2

    check-cast v2, Landroid/view/MotionEvent;

    .line 384
    invoke-static {}, Lcom/ensighten/model/EnsightenGestureRecognizerFactory;->getFourFingerGestureRecognizer()Lcom/ensighten/model/EnsightenGestureRecognizer;

    move-result-object v6

    invoke-interface {v6, v2}, Lcom/ensighten/model/EnsightenGestureRecognizer;->process(Landroid/view/MotionEvent;)V

    :cond_1e
    move v2, v3

    move v3, v4

    goto/16 :goto_4

    .line 398
    :cond_1f
    invoke-static {}, Lcom/ensighten/Ensighten;->isAdminMode()Z

    move-result v2

    if-eqz v2, :cond_20

    if-eqz v3, :cond_20

    .line 400
    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_d

    .line 401
    check-cast p1, Landroid/app/Activity;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/ensighten/Utils;->takeScreenShot(Landroid/view/View;)V

    goto/16 :goto_5

    .line 403
    :cond_20
    invoke-static {}, Lcom/ensighten/Ensighten;->isAdminMode()Z

    move-result v2

    if-nez v2, :cond_d

    .line 16450
    iget-boolean v2, v5, Lcom/ensighten/e;->n:Z

    .line 403
    if-nez v2, :cond_d

    .line 404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ensighten/l;->i:Lcom/ensighten/m;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v1, v10}, Lcom/ensighten/m;->a(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 405
    if-eqz v3, :cond_d

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    .line 406
    invoke-direct/range {v2 .. v7}, Lcom/ensighten/l;->a(Lorg/json/JSONArray;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_5

    :cond_21
    move-wide v8, v2

    goto/16 :goto_1
.end method

.method public final a(Lorg/json/JSONArray;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 711
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/ensighten/l;->a(Lorg/json/JSONArray;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Z)V

    .line 712
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 178
    invoke-static {}, Lcom/ensighten/Ensighten;->getConfigurationManager()Lcom/ensighten/f;

    move-result-object v0

    .line 5181
    iget-object v0, v0, Lcom/ensighten/f;->a:Lcom/ensighten/e;

    .line 179
    if-eqz v0, :cond_0

    .line 5422
    iget-object v0, v0, Lcom/ensighten/e;->e:Lorg/json/JSONArray;

    .line 180
    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/ensighten/l;->a(Lorg/json/JSONArray;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    :cond_0
    return-void
.end method

.method public b(Lcom/ensighten/H;)V
    .locals 12

    .prologue
    const/4 v7, 0x0

    .line 601
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/ensighten/y;

    move-object v1, v0

    .line 25015
    iget-object v3, v1, Lcom/ensighten/y;->a:Ljava/lang/String;

    .line 25019
    iget-object v9, v1, Lcom/ensighten/y;->b:Ljava/lang/String;

    .line 604
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/ensighten/H;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 605
    iget-object v2, p0, Lcom/ensighten/l;->i:Lcom/ensighten/m;

    .line 25239
    iget-object v2, v2, Lcom/ensighten/m;->b:Ljava/util/Map;

    .line 605
    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    .line 607
    invoke-static {}, Lcom/ensighten/Ensighten;->getConfigurationManager()Lcom/ensighten/f;

    move-result-object v4

    .line 26181
    iget-object v4, v4, Lcom/ensighten/f;->a:Lcom/ensighten/e;

    .line 26510
    iget-object v5, v4, Lcom/ensighten/e;->i:Ljava/util/Map;

    .line 608
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 27411
    iget-object v4, v4, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    .line 610
    const-string v5, "notifications"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "notifications"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 611
    :goto_0
    const-string v5, "Ad"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "Ad"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    move-object v8, v4

    .line 612
    :goto_1
    if-nez v2, :cond_7

    if-eqz v8, :cond_7

    .line 614
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 616
    :goto_2
    if-nez v4, :cond_5

    .line 617
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v6, v4

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 618
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/regex/Pattern;

    .line 619
    invoke-virtual {v5, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 620
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 622
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 623
    :goto_4
    if-nez v4, :cond_5

    :goto_5
    move-object v6, v4

    .line 627
    goto :goto_3

    :cond_0
    move-object v4, v7

    .line 610
    goto :goto_0

    :cond_1
    move-object v8, v7

    .line 611
    goto :goto_1

    :cond_2
    move-object v4, v7

    .line 614
    goto :goto_2

    :cond_3
    move-object v4, v7

    .line 622
    goto :goto_4

    :cond_4
    move-object v4, v6

    .line 630
    :cond_5
    if-eqz v4, :cond_7

    const-string v3, "rules"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 631
    const-string v2, "rules"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 632
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 633
    const-string v3, "Inserted notification rule %s into cache."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    .line 634
    :cond_6
    iget-object v3, p0, Lcom/ensighten/l;->i:Lcom/ensighten/m;

    .line 28239
    iget-object v3, v3, Lcom/ensighten/m;->b:Ljava/util/Map;

    .line 634
    invoke-interface {v3, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    :cond_7
    if-eqz v2, :cond_9

    .line 639
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 640
    const/4 v4, 0x0

    .line 29019
    iget-object v1, v1, Lcom/ensighten/y;->b:Ljava/lang/String;

    .line 640
    aput-object v1, v3, v4

    .line 641
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 642
    const-string/jumbo v4, "undefined"

    .line 643
    invoke-virtual {p0, v2, v1, v4, v3}, Lcom/ensighten/l;->a(Lorg/json/JSONArray;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 656
    :cond_8
    :goto_6
    return-void

    .line 648
    :cond_9
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 649
    const-string v1, "Inserted empty notification rule %s into cache."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    .line 650
    :cond_a
    iget-object v1, p0, Lcom/ensighten/l;->i:Lcom/ensighten/m;

    .line 29239
    iget-object v1, v1, Lcom/ensighten/m;->b:Ljava/util/Map;

    .line 650
    sget-object v2, Lcom/ensighten/a;->b:Lorg/json/JSONArray;

    invoke-interface {v1, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 652
    :catch_0
    move-exception v1

    .line 653
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 654
    invoke-static {v1}, Lcom/ensighten/i;->b(Ljava/lang/Exception;)V

    goto :goto_6

    :cond_b
    move-object v4, v6

    goto :goto_5
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 805
    invoke-static {}, Lcom/ensighten/Ensighten;->getConfigurationManager()Lcom/ensighten/f;

    move-result-object v0

    .line 33181
    iget-object v0, v0, Lcom/ensighten/f;->a:Lcom/ensighten/e;

    .line 33498
    iget-boolean v1, v0, Lcom/ensighten/e;->z:Z

    .line 806
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ensighten/l;->f:Lcom/ensighten/utils/BatteryInfoManager;

    if-eqz v1, :cond_0

    .line 807
    iget-object v1, p0, Lcom/ensighten/l;->f:Lcom/ensighten/utils/BatteryInfoManager;

    .line 34045
    iget v1, v1, Lcom/ensighten/utils/BatteryInfoManager;->a:I

    .line 34502
    iget v2, v0, Lcom/ensighten/e;->B:I

    .line 35502
    iget v3, v0, Lcom/ensighten/e;->B:I

    .line 807
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 808
    const/4 v1, 0x1

    .line 36490
    iput-boolean v1, v0, Lcom/ensighten/e;->y:Z

    .line 813
    :cond_0
    :goto_0
    return-void

    .line 810
    :cond_1
    const/4 v1, 0x0

    .line 37490
    iput-boolean v1, v0, Lcom/ensighten/e;->y:Z

    goto :goto_0
.end method
