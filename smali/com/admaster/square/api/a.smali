.class public Lcom/admaster/square/api/a;
.super Landroid/os/HandlerThread;
.source "ConvMobiHandler.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static a:Lcom/admaster/square/api/k;

.field private static synthetic k:[I


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Lcom/admaster/square/api/b;

.field private e:Lcom/admaster/square/api/p;

.field private f:Lcom/admaster/square/api/o;

.field private g:Lcom/admaster/square/api/c;

.field private h:Ljava/util/concurrent/ScheduledExecutorService;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/admaster/square/api/a;->a:Lcom/admaster/square/api/k;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    const-string v0, "AdMasterConvMobi"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-object v2, p0, Lcom/admaster/square/api/a;->b:Landroid/content/Context;

    .line 39
    iput-object v2, p0, Lcom/admaster/square/api/a;->c:Ljava/lang/String;

    .line 40
    iput-object v2, p0, Lcom/admaster/square/api/a;->d:Lcom/admaster/square/api/b;

    .line 41
    iput-object v2, p0, Lcom/admaster/square/api/a;->e:Lcom/admaster/square/api/p;

    .line 42
    iput-object v2, p0, Lcom/admaster/square/api/a;->f:Lcom/admaster/square/api/o;

    .line 43
    iput-object v2, p0, Lcom/admaster/square/api/a;->g:Lcom/admaster/square/api/c;

    .line 45
    iput-object v2, p0, Lcom/admaster/square/api/a;->h:Ljava/util/concurrent/ScheduledExecutorService;

    .line 46
    iput-object v2, p0, Lcom/admaster/square/api/a;->i:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcom/admaster/square/api/a;->j:Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Lcom/admaster/square/api/a;->start()V

    .line 52
    iput-object p1, p0, Lcom/admaster/square/api/a;->b:Landroid/content/Context;

    .line 53
    iput-object p3, p0, Lcom/admaster/square/api/a;->c:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/admaster/square/api/a;->i:Ljava/lang/String;

    .line 55
    invoke-direct {p0}, Lcom/admaster/square/api/a;->c()V

    .line 56
    new-instance v0, Lcom/admaster/square/api/b;

    invoke-virtual {p0}, Lcom/admaster/square/api/a;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/admaster/square/api/b;-><init>(Landroid/os/Looper;Lcom/admaster/square/api/a;)V

    iput-object v0, p0, Lcom/admaster/square/api/a;->d:Lcom/admaster/square/api/b;

    .line 57
    const-string v0, "sp_store"

    const-string v1, "ch"

    invoke-static {p1, v0, v1}, Lcom/admaster/square/utils/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admaster/square/api/a;->j:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/admaster/square/api/a;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 61
    const-string v0, "sp_store"

    iget-object v1, p0, Lcom/admaster/square/api/a;->j:Ljava/lang/String;

    invoke-static {p1, v0, p2, v1}, Lcom/admaster/square/utils/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/admaster/square/api/a;->g:Lcom/admaster/square/api/c;

    if-nez v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/admaster/square/api/a;->b:Landroid/content/Context;

    sget-object v1, Lcom/admaster/square/api/a;->a:Lcom/admaster/square/api/k;

    invoke-static {v0, v1}, Lcom/admaster/square/api/c;->a(Landroid/content/Context;Lcom/admaster/square/api/k;)Lcom/admaster/square/api/c;

    move-result-object v0

    iput-object v0, p0, Lcom/admaster/square/api/a;->g:Lcom/admaster/square/api/c;

    .line 76
    :cond_1
    invoke-direct {p0}, Lcom/admaster/square/api/a;->d()Z

    move-result v0

    .line 77
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 78
    if-eqz v0, :cond_5

    .line 79
    sget-object v0, Lcom/admaster/square/api/CustomEvent;->ADSTART:Lcom/admaster/square/api/CustomEvent;

    invoke-virtual {v0}, Lcom/admaster/square/api/CustomEvent;->ordinal()I

    move-result v0

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 88
    :goto_1
    iget-object v0, p0, Lcom/admaster/square/api/a;->d:Lcom/admaster/square/api/b;

    invoke-virtual {v0, v1}, Lcom/admaster/square/api/b;->sendMessage(Landroid/os/Message;)Z

    .line 89
    return-void

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/admaster/square/api/a;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 64
    const-string v0, "sp_store"

    iget-object v1, p0, Lcom/admaster/square/api/a;->i:Ljava/lang/String;

    invoke-static {p1, v0, p2, v1}, Lcom/admaster/square/utils/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_3
    iget-object v0, p0, Lcom/admaster/square/api/a;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    const-string v0, "sp_store"

    invoke-static {p1, v0, p2, v2}, Lcom/admaster/square/utils/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_4
    const-string v0, "sp_store"

    invoke-static {p1, v0, p2, p3}, Lcom/admaster/square/utils/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_5
    if-nez p5, :cond_6

    .line 83
    sget-object v0, Lcom/admaster/square/api/CustomEvent;->ADACTIVE:Lcom/admaster/square/api/CustomEvent;

    invoke-virtual {v0}, Lcom/admaster/square/api/CustomEvent;->ordinal()I

    move-result v0

    iput v0, v1, Landroid/os/Message;->arg1:I

    goto :goto_1

    .line 85
    :cond_6
    sget-object v0, Lcom/admaster/square/api/CustomEvent;->ADSTART:Lcom/admaster/square/api/CustomEvent;

    invoke-virtual {v0}, Lcom/admaster/square/api/CustomEvent;->ordinal()I

    move-result v0

    iput v0, v1, Landroid/os/Message;->arg1:I

    goto :goto_1
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    const-string v0, "AdMasterConvMobi"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-object v2, p0, Lcom/admaster/square/api/a;->b:Landroid/content/Context;

    .line 39
    iput-object v2, p0, Lcom/admaster/square/api/a;->c:Ljava/lang/String;

    .line 40
    iput-object v2, p0, Lcom/admaster/square/api/a;->d:Lcom/admaster/square/api/b;

    .line 41
    iput-object v2, p0, Lcom/admaster/square/api/a;->e:Lcom/admaster/square/api/p;

    .line 42
    iput-object v2, p0, Lcom/admaster/square/api/a;->f:Lcom/admaster/square/api/o;

    .line 43
    iput-object v2, p0, Lcom/admaster/square/api/a;->g:Lcom/admaster/square/api/c;

    .line 45
    iput-object v2, p0, Lcom/admaster/square/api/a;->h:Ljava/util/concurrent/ScheduledExecutorService;

    .line 46
    iput-object v2, p0, Lcom/admaster/square/api/a;->i:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcom/admaster/square/api/a;->j:Ljava/lang/String;

    .line 93
    invoke-virtual {p0}, Lcom/admaster/square/api/a;->start()V

    .line 94
    iput-object p1, p0, Lcom/admaster/square/api/a;->b:Landroid/content/Context;

    .line 95
    const-string v0, "sp_store"

    const-string v1, "ch"

    invoke-static {p1, v0, v1}, Lcom/admaster/square/utils/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admaster/square/api/a;->c:Ljava/lang/String;

    .line 96
    iput-object p3, p0, Lcom/admaster/square/api/a;->i:Ljava/lang/String;

    .line 98
    invoke-direct {p0}, Lcom/admaster/square/api/a;->c()V

    .line 99
    new-instance v0, Lcom/admaster/square/api/b;

    invoke-virtual {p0}, Lcom/admaster/square/api/a;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/admaster/square/api/b;-><init>(Landroid/os/Looper;Lcom/admaster/square/api/a;)V

    iput-object v0, p0, Lcom/admaster/square/api/a;->d:Lcom/admaster/square/api/b;

    .line 100
    iget-object v0, p0, Lcom/admaster/square/api/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/admaster/square/api/a;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    const-string v0, "sp_store"

    iget-object v1, p0, Lcom/admaster/square/api/a;->i:Ljava/lang/String;

    invoke-static {p1, v0, p2, v1}, Lcom/admaster/square/utils/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_0
    iget-object v0, p0, Lcom/admaster/square/api/a;->g:Lcom/admaster/square/api/c;

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/admaster/square/api/a;->b:Landroid/content/Context;

    sget-object v1, Lcom/admaster/square/api/a;->a:Lcom/admaster/square/api/k;

    invoke-static {v0, v1}, Lcom/admaster/square/api/c;->a(Landroid/content/Context;Lcom/admaster/square/api/k;)Lcom/admaster/square/api/c;

    move-result-object v0

    iput-object v0, p0, Lcom/admaster/square/api/a;->g:Lcom/admaster/square/api/c;

    .line 116
    :cond_0
    invoke-direct {p0}, Lcom/admaster/square/api/a;->d()Z

    move-result v0

    .line 117
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 118
    if-eqz v0, :cond_4

    .line 119
    sget-object v0, Lcom/admaster/square/api/CustomEvent;->ADSTART:Lcom/admaster/square/api/CustomEvent;

    invoke-virtual {v0}, Lcom/admaster/square/api/CustomEvent;->ordinal()I

    move-result v0

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 128
    :goto_1
    iget-object v0, p0, Lcom/admaster/square/api/a;->d:Lcom/admaster/square/api/b;

    invoke-virtual {v0, v1}, Lcom/admaster/square/api/b;->sendMessage(Landroid/os/Message;)Z

    .line 129
    return-void

    .line 104
    :cond_1
    const-string v0, "sp_store"

    invoke-static {p1, v0, p2, v2}, Lcom/admaster/square/utils/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/admaster/square/api/a;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 108
    const-string v0, "sp_store"

    iget-object v1, p0, Lcom/admaster/square/api/a;->i:Ljava/lang/String;

    invoke-static {p1, v0, p2, v1}, Lcom/admaster/square/utils/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_3
    const-string v0, "sp_store"

    iget-object v1, p0, Lcom/admaster/square/api/a;->c:Ljava/lang/String;

    invoke-static {p1, v0, p2, v1}, Lcom/admaster/square/utils/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_4
    if-nez p4, :cond_5

    .line 123
    sget-object v0, Lcom/admaster/square/api/CustomEvent;->ADACTIVE:Lcom/admaster/square/api/CustomEvent;

    invoke-virtual {v0}, Lcom/admaster/square/api/CustomEvent;->ordinal()I

    move-result v0

    iput v0, v1, Landroid/os/Message;->arg1:I

    goto :goto_1

    .line 125
    :cond_5
    sget-object v0, Lcom/admaster/square/api/CustomEvent;->ADSTART:Lcom/admaster/square/api/CustomEvent;

    invoke-virtual {v0}, Lcom/admaster/square/api/CustomEvent;->ordinal()I

    move-result v0

    iput v0, v1, Landroid/os/Message;->arg1:I

    goto :goto_1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/admaster/square/api/a;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 133
    const-class v6, Lcom/admaster/square/api/a;

    monitor-enter v6

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    const-string v1, "AdMasterConvMobi missing m2id!"

    invoke-static {v1}, Lcom/admaster/square/api/m;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :goto_0
    monitor-exit v6

    return-object v0

    .line 138
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/admaster/square/api/e;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 139
    const-string v1, "AdMasterConvMobiis not initialize correctly"

    invoke-static {v1}, Lcom/admaster/square/api/m;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    .line 143
    :cond_1
    :try_start_2
    new-instance v0, Lcom/admaster/square/api/a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/admaster/square/api/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/admaster/square/api/a;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 149
    const-class v1, Lcom/admaster/square/api/a;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    const-string v2, "AdMasterConvMobi missing m2id!"

    invoke-static {v2}, Lcom/admaster/square/api/m;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :goto_0
    monitor-exit v1

    return-object v0

    .line 154
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/admaster/square/api/e;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 155
    const-string v2, "AdMasterConvMobiis not initialize correctly"

    invoke-static {v2}, Lcom/admaster/square/api/m;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 158
    :cond_1
    :try_start_2
    new-instance v0, Lcom/admaster/square/api/a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/admaster/square/api/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/admaster/square/api/a;)V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/admaster/square/api/a;->c()V

    return-void
.end method

.method static synthetic a(Lcom/admaster/square/api/a;Ljava/lang/String;Lcom/admaster/square/utils/Order;JLcom/admaster/square/api/CustomEvent;)V
    .locals 1

    .prologue
    .line 223
    invoke-direct/range {p0 .. p5}, Lcom/admaster/square/api/a;->a(Ljava/lang/String;Lcom/admaster/square/utils/Order;JLcom/admaster/square/api/CustomEvent;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/admaster/square/utils/Order;JLcom/admaster/square/api/CustomEvent;)V
    .locals 7

    .prologue
    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/admaster/square/api/a;->b:Landroid/content/Context;

    .line 226
    const-string v1, "com.admaster.convmobisdk.failed.active"

    .line 225
    invoke-static {v0, v1}, Lcom/admaster/square/utils/i;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 227
    invoke-static {}, Lcom/admaster/square/api/a;->b()[I

    move-result-object v1

    invoke-virtual {p5}, Lcom/admaster/square/api/CustomEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 259
    :goto_0
    :pswitch_0
    return-void

    .line 229
    :pswitch_1
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/admaster/square/api/a;->g:Lcom/admaster/square/api/c;

    const/4 v2, 0x0

    move-object v1, p1

    move-object v3, p5

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/admaster/square/api/c;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/admaster/square/api/CustomEvent;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/square/api/m;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 232
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/admaster/square/api/a;->e()V

    goto :goto_0

    .line 236
    :pswitch_2
    iget-object v0, p0, Lcom/admaster/square/api/a;->g:Lcom/admaster/square/api/c;

    const/4 v2, 0x0

    move-object v1, p1

    move-object v3, p5

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/admaster/square/api/c;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/admaster/square/api/CustomEvent;J)V

    goto :goto_0

    .line 240
    :pswitch_3
    iget-object v0, p0, Lcom/admaster/square/api/a;->g:Lcom/admaster/square/api/c;

    const/4 v2, 0x0

    move-object v1, p1

    move-object v3, p5

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/admaster/square/api/c;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/admaster/square/api/CustomEvent;J)V

    goto :goto_0

    .line 244
    :pswitch_4
    iget-object v0, p0, Lcom/admaster/square/api/a;->g:Lcom/admaster/square/api/c;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/admaster/square/api/c;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/admaster/square/api/CustomEvent;J)V

    goto :goto_0

    .line 253
    :pswitch_5
    iget-object v0, p0, Lcom/admaster/square/api/a;->g:Lcom/admaster/square/api/c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, p5

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/admaster/square/api/c;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/admaster/square/api/CustomEvent;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic b(Lcom/admaster/square/api/a;)V
    .locals 0

    .prologue
    .line 449
    invoke-direct {p0}, Lcom/admaster/square/api/a;->g()V

    return-void
.end method

.method static synthetic b()[I
    .locals 3

    .prologue
    .line 37
    sget-object v0, Lcom/admaster/square/api/a;->k:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/admaster/square/api/CustomEvent;->values()[Lcom/admaster/square/api/CustomEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/admaster/square/api/CustomEvent;->ADACTIVE:Lcom/admaster/square/api/CustomEvent;

    invoke-virtual {v1}, Lcom/admaster/square/api/CustomEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_d

    :goto_1
    :try_start_1
    sget-object v1, Lcom/admaster/square/api/CustomEvent;->ADAPPLIST:Lcom/admaster/square/api/CustomEvent;

    invoke-virtual {v1}, Lcom/admaster/square/api/CustomEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_c

    :goto_2
    :try_start_2
    sget-object v1, Lcom/admaster/square/api/CustomEvent;->ADCRASH:Lcom/admaster/square/api/CustomEvent;

    invoke-virtual {v1}, Lcom/admaster/square/api/CustomEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_b

    :goto_3
    :try_start_3
    sget-object v1, Lcom/admaster/square/api/CustomEvent;->ADCUSTOM1:Lcom/admaster/square/api/CustomEvent;

    invoke-virtual {v1}, Lcom/admaster/square/api/CustomEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_a

    :goto_4
    :try_start_4
    sget-object v1, Lcom/admaster/square/api/CustomEvent;->ADCUSTOM2:Lcom/admaster/square/api/CustomEvent;

    invoke-virtual {v1}, Lcom/admaster/square/api/CustomEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_9

    :goto_5
    :try_start_5
    sget-object v1, Lcom/admaster/square/api/CustomEvent;->ADCUSTOM3:Lcom/admaster/square/api/CustomEvent;

    invoke-virtual {v1}, Lcom/admaster/square/api/CustomEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_8

    :goto_6
    :try_start_6
    sget-object v1, Lcom/admaster/square/api/CustomEvent;->ADCUSTOM4:Lcom/admaster/square/api/CustomEvent;

    invoke-virtual {v1}, Lcom/admaster/square/api/CustomEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_7

    :goto_7
    :try_start_7
    sget-object v1, Lcom/admaster/square/api/CustomEvent;->ADCUSTOM5:Lcom/admaster/square/api/CustomEvent;

    invoke-virtual {v1}, Lcom/admaster/square/api/CustomEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_6

    :goto_8
    :try_start_8
    sget-object v1, Lcom/admaster/square/api/CustomEvent;->ADLOGIN:Lcom/admaster/square/api/CustomEvent;

    invoke-virtual {v1}, Lcom/admaster/square/api/CustomEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_5

    :goto_9
    :try_start_9
    sget-object v1, Lcom/admaster/square/api/CustomEvent;->ADORDER:Lcom/admaster/square/api/CustomEvent;

    invoke-virtual {v1}, Lcom/admaster/square/api/CustomEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_4

    :goto_a
    :try_start_a
    sget-object v1, Lcom/admaster/square/api/CustomEvent;->ADPLIST:Lcom/admaster/square/api/CustomEvent;

    invoke-virtual {v1}, Lcom/admaster/square/api/CustomEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_3

    :goto_b
    :try_start_b
    sget-object v1, Lcom/admaster/square/api/CustomEvent;->ADPURCHASE:Lcom/admaster/square/api/CustomEvent;

    invoke-virtual {v1}, Lcom/admaster/square/api/CustomEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_2

    :goto_c
    :try_start_c
    sget-object v1, Lcom/admaster/square/api/CustomEvent;->ADREG:Lcom/admaster/square/api/CustomEvent;

    invoke-virtual {v1}, Lcom/admaster/square/api/CustomEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_1

    :goto_d
    :try_start_d
    sget-object v1, Lcom/admaster/square/api/CustomEvent;->ADSTART:Lcom/admaster/square/api/CustomEvent;

    invoke-virtual {v1}, Lcom/admaster/square/api/CustomEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_0

    :goto_e
    sput-object v0, Lcom/admaster/square/api/a;->k:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_e

    :catch_1
    move-exception v1

    goto :goto_d

    :catch_2
    move-exception v1

    goto :goto_c

    :catch_3
    move-exception v1

    goto :goto_b

    :catch_4
    move-exception v1

    goto :goto_a

    :catch_5
    move-exception v1

    goto :goto_9

    :catch_6
    move-exception v1

    goto :goto_8

    :catch_7
    move-exception v1

    goto :goto_7

    :catch_8
    move-exception v1

    goto :goto_6

    :catch_9
    move-exception v1

    goto :goto_5

    :catch_a
    move-exception v1

    goto :goto_4

    :catch_b
    move-exception v1

    goto/16 :goto_3

    :catch_c
    move-exception v1

    goto/16 :goto_2

    :catch_d
    move-exception v1

    goto/16 :goto_1
.end method

.method private c()V
    .locals 2

    .prologue
    .line 215
    sget-object v0, Lcom/admaster/square/api/a;->a:Lcom/admaster/square/api/k;

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Lcom/admaster/square/api/k;

    iget-object v1, p0, Lcom/admaster/square/api/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/admaster/square/api/k;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/admaster/square/api/a;->a:Lcom/admaster/square/api/k;

    .line 218
    :cond_0
    return-void
.end method

.method private d()Z
    .locals 3

    .prologue
    .line 414
    iget-object v0, p0, Lcom/admaster/square/api/a;->b:Landroid/content/Context;

    const-string v1, "sp_store"

    const-string v2, "is_install"

    invoke-static {v0, v1, v2}, Lcom/admaster/square/utils/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 423
    iget-object v0, p0, Lcom/admaster/square/api/a;->f:Lcom/admaster/square/api/o;

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/admaster/square/api/a;->f:Lcom/admaster/square/api/o;

    invoke-virtual {v0}, Lcom/admaster/square/api/o;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/admaster/square/api/a;->f:Lcom/admaster/square/api/o;

    invoke-virtual {v0}, Lcom/admaster/square/api/o;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/admaster/square/api/a;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/admaster/square/api/a;->b:Landroid/content/Context;

    .line 431
    const-string v1, "com.admaster.convmobisdk.failed.active"

    .line 430
    invoke-static {v0, v1}, Lcom/admaster/square/utils/i;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 432
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    new-instance v0, Lcom/admaster/square/api/o;

    const-string v1, "com.admaster.convmobisdk.failed.active"

    iget-object v2, p0, Lcom/admaster/square/api/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/admaster/square/api/o;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/admaster/square/api/a;->f:Lcom/admaster/square/api/o;

    .line 435
    iget-object v0, p0, Lcom/admaster/square/api/a;->f:Lcom/admaster/square/api/o;

    invoke-virtual {v0}, Lcom/admaster/square/api/o;->start()V

    goto :goto_0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 440
    :try_start_0
    iget-object v0, p0, Lcom/admaster/square/api/a;->h:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/admaster/square/api/a;->h:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 442
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admaster/square/api/a;->h:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 444
    :catch_0
    move-exception v0

    .line 445
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/square/api/m;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private g()V
    .locals 7

    .prologue
    .line 451
    :try_start_0
    iget-object v0, p0, Lcom/admaster/square/api/a;->h:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admaster/square/api/a;->h:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    :cond_0
    new-instance v0, Lcom/admaster/square/api/p;

    const-string v1, "com.admaster.convmobisdk.falied"

    iget-object v2, p0, Lcom/admaster/square/api/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/admaster/square/api/p;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/admaster/square/api/a;->e:Lcom/admaster/square/api/p;

    .line 454
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/admaster/square/api/a;->h:Ljava/util/concurrent/ScheduledExecutorService;

    .line 455
    iget-object v0, p0, Lcom/admaster/square/api/a;->h:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/admaster/square/api/a;->e:Lcom/admaster/square/api/p;

    const-wide/16 v2, 0x3e8

    const-wide/32 v4, 0x493e0

    .line 456
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 455
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    :cond_1
    :goto_0
    return-void

    .line 458
    :catch_0
    move-exception v0

    .line 459
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/square/api/m;->b(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 398
    :try_start_0
    iget-object v0, p0, Lcom/admaster/square/api/a;->e:Lcom/admaster/square/api/p;

    if-eqz v0, :cond_0

    .line 399
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admaster/square/api/a;->e:Lcom/admaster/square/api/p;

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/admaster/square/api/a;->f:Lcom/admaster/square/api/o;

    if-eqz v0, :cond_2

    .line 402
    iget-object v0, p0, Lcom/admaster/square/api/a;->f:Lcom/admaster/square/api/o;

    invoke-virtual {v0}, Lcom/admaster/square/api/o;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/admaster/square/api/a;->f:Lcom/admaster/square/api/o;

    invoke-virtual {v0}, Lcom/admaster/square/api/o;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/admaster/square/api/a;->f:Lcom/admaster/square/api/o;

    invoke-virtual {v0}, Lcom/admaster/square/api/o;->interrupt()V

    .line 404
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admaster/square/api/a;->f:Lcom/admaster/square/api/o;

    .line 406
    :cond_2
    invoke-direct {p0}, Lcom/admaster/square/api/a;->f()V

    .line 407
    invoke-virtual {p0}, Lcom/admaster/square/api/a;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :goto_0
    return-void

    .line 408
    :catch_0
    move-exception v0

    .line 409
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/square/api/m;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 543
    .line 544
    if-eqz p1, :cond_1

    .line 546
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 547
    const-string v2, "referrer"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 551
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 553
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 554
    const-string v2, "referrer"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 559
    :cond_0
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 560
    iget-object v1, p0, Lcom/admaster/square/api/a;->b:Landroid/content/Context;

    const-string v2, "sp_store"

    const-string v3, "ch"

    invoke-static {v1, v2, v3, v0}, Lcom/admaster/square/utils/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    :cond_1
    return-void

    .line 548
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 549
    goto :goto_0

    .line 555
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 556
    goto :goto_1
.end method

.method public a(Lcom/admaster/square/api/CustomEvent;J)V
    .locals 2

    .prologue
    .line 341
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 342
    invoke-virtual {p1}, Lcom/admaster/square/api/CustomEvent;->ordinal()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 343
    iget-object v1, p0, Lcom/admaster/square/api/a;->d:Lcom/admaster/square/api/b;

    invoke-virtual {v1, v0}, Lcom/admaster/square/api/b;->sendMessage(Landroid/os/Message;)Z

    .line 344
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 169
    iput-object p1, p0, Lcom/admaster/square/api/a;->i:Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcom/admaster/square/api/a;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/admaster/square/api/a;->b:Landroid/content/Context;

    const-string v1, "sp_store"

    const-string v2, "ch"

    iget-object v3, p0, Lcom/admaster/square/api/a;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/admaster/square/utils/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 184
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 185
    sget-object v1, Lcom/admaster/square/api/CustomEvent;->ADREG:Lcom/admaster/square/api/CustomEvent;

    invoke-virtual {v1}, Lcom/admaster/square/api/CustomEvent;->ordinal()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 186
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 187
    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v2, "timer"

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 189
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 190
    iget-object v1, p0, Lcom/admaster/square/api/a;->d:Lcom/admaster/square/api/b;

    invoke-virtual {v1, v0}, Lcom/admaster/square/api/b;->sendMessage(Landroid/os/Message;)Z

    .line 191
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/admaster/square/utils/Order;)V
    .locals 3

    .prologue
    .line 270
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 271
    sget-object v1, Lcom/admaster/square/api/CustomEvent;->ADORDER:Lcom/admaster/square/api/CustomEvent;

    invoke-virtual {v1}, Lcom/admaster/square/api/CustomEvent;->ordinal()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 272
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 273
    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v2, "order"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 275
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 276
    iget-object v1, p0, Lcom/admaster/square/api/a;->d:Lcom/admaster/square/api/b;

    invoke-virtual {v1, v0}, Lcom/admaster/square/api/b;->sendMessage(Landroid/os/Message;)Z

    .line 277
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 353
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 354
    sget-object v2, Lcom/admaster/square/api/CustomEvent;->ADCRASH:Lcom/admaster/square/api/CustomEvent;

    invoke-virtual {v2}, Lcom/admaster/square/api/CustomEvent;->ordinal()I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg1:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 359
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 360
    new-instance v2, Ljava/io/PrintStream;

    invoke-direct {v2, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 361
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 362
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 363
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v0

    .line 368
    :goto_0
    :try_start_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 370
    new-instance v4, Lcom/admaster/square/utils/l;

    invoke-direct {v4}, Lcom/admaster/square/utils/l;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 372
    :try_start_3
    invoke-virtual {v4, v2, v3}, Lcom/admaster/square/utils/l;->a(J)V

    .line 373
    invoke-virtual {v4, v2, v3}, Lcom/admaster/square/utils/l;->b(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 377
    :goto_1
    const/4 v0, 0x1

    :try_start_4
    invoke-virtual {v4, v0}, Lcom/admaster/square/utils/l;->a(I)V

    .line 378
    invoke-direct {p0}, Lcom/admaster/square/api/a;->c()V

    .line 379
    iget-object v0, p0, Lcom/admaster/square/api/a;->g:Lcom/admaster/square/api/c;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v5, Lcom/admaster/square/api/CustomEvent;->ADCRASH:Lcom/admaster/square/api/CustomEvent;

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/admaster/square/api/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admaster/square/api/CustomEvent;)Ljava/lang/String;

    move-result-object v0

    .line 380
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 391
    :cond_0
    :goto_2
    return-void

    .line 365
    :catch_0
    move-exception v0

    .line 366
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/square/api/m;->b(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 388
    :catch_1
    move-exception v0

    .line 389
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/square/api/m;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 374
    :catch_2
    move-exception v0

    .line 375
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/square/api/m;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 383
    :cond_1
    invoke-virtual {v4, v0}, Lcom/admaster/square/utils/l;->a(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/admaster/square/api/a;->b:Landroid/content/Context;

    const-string v2, "com.admaster.convmobisdk.falied"

    .line 386
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 385
    invoke-static {v0, v2, v1, v4}, Lcom/admaster/square/utils/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2
.end method

.method public b(Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 202
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 203
    sget-object v1, Lcom/admaster/square/api/CustomEvent;->ADLOGIN:Lcom/admaster/square/api/CustomEvent;

    invoke-virtual {v1}, Lcom/admaster/square/api/CustomEvent;->ordinal()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 204
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 205
    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v2, "timer"

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 207
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 208
    iget-object v1, p0, Lcom/admaster/square/api/a;->d:Lcom/admaster/square/api/b;

    invoke-virtual {v1, v0}, Lcom/admaster/square/api/b;->sendMessage(Landroid/os/Message;)Z

    .line 209
    return-void
.end method

.method public b(Ljava/lang/String;Lcom/admaster/square/utils/Order;)V
    .locals 3

    .prologue
    .line 319
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    const-string/jumbo v0, "userId cann\'t be null or empty!"

    invoke-static {v0}, Lcom/admaster/square/api/m;->b(Ljava/lang/String;)V

    .line 330
    :goto_0
    return-void

    .line 323
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 324
    sget-object v1, Lcom/admaster/square/api/CustomEvent;->ADPURCHASE:Lcom/admaster/square/api/CustomEvent;

    invoke-virtual {v1}, Lcom/admaster/square/api/CustomEvent;->ordinal()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 325
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 326
    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v2, "order"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 328
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 329
    iget-object v1, p0, Lcom/admaster/square/api/a;->d:Lcom/admaster/square/api/b;

    invoke-virtual {v1, v0}, Lcom/admaster/square/api/b;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
