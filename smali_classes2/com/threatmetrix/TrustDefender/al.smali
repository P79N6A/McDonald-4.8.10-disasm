.class Lcom/threatmetrix/TrustDefender/al;
.super Lcom/threatmetrix/TrustDefender/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/threatmetrix/TrustDefender/al$c;,
        Lcom/threatmetrix/TrustDefender/al$b;,
        Lcom/threatmetrix/TrustDefender/al$a;
    }
.end annotation


# static fields
.field private static final O:Ljava/lang/String;


# instance fields
.field private P:Ljava/lang/Object;

.field private Q:Ljava/lang/Object;

.field private R:Ljava/lang/Object;

.field private S:Ljava/lang/Object;

.field private T:Ljava/lang/Object;

.field private U:Lcom/threatmetrix/TrustDefender/ao;

.field private V:Lcom/threatmetrix/TrustDefender/ap;

.field private volatile W:Z

.field private final X:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/threatmetrix/TrustDefender/al;

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/al;->O:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/threatmetrix/TrustDefender/l;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threatmetrix/TrustDefender/al;->W:Z

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/al;->X:Ljava/lang/Object;

    .line 218
    return-void
.end method

.method static synthetic a(Lcom/threatmetrix/TrustDefender/al;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/threatmetrix/TrustDefender/al;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/al;->P:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/threatmetrix/TrustDefender/al;)Lcom/threatmetrix/TrustDefender/ao;
    .locals 1
    .param p0, "x0"    # Lcom/threatmetrix/TrustDefender/al;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/al;->U:Lcom/threatmetrix/TrustDefender/ao;

    return-object v0
.end method

.method static synthetic c(Lcom/threatmetrix/TrustDefender/al;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/threatmetrix/TrustDefender/al;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/al;->X:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lcom/threatmetrix/TrustDefender/al;)Z
    .locals 1
    .param p0, "x0"    # Lcom/threatmetrix/TrustDefender/al;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/threatmetrix/TrustDefender/al;->W:Z

    return v0
.end method

.method static synthetic e(Lcom/threatmetrix/TrustDefender/al;)Lcom/threatmetrix/TrustDefender/ap;
    .locals 1
    .param p0, "x0"    # Lcom/threatmetrix/TrustDefender/al;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/al;->V:Lcom/threatmetrix/TrustDefender/ap;

    return-object v0
.end method

.method static synthetic k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/threatmetrix/TrustDefender/al;->O:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method final declared-synchronized a(Landroid/content/Context;JJILcom/threatmetrix/TrustDefender/ao;Lcom/threatmetrix/TrustDefender/ap;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interval"    # J
    .param p4, "fastestInterval"    # J
    .param p6, "accuracy"    # I
    .param p7, "tdLocationListener"    # Lcom/threatmetrix/TrustDefender/ao;
    .param p8, "tdLocationManager"    # Lcom/threatmetrix/TrustDefender/ap;

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/threatmetrix/TrustDefender/al;->a(Landroid/content/Context;)Lcom/threatmetrix/TrustDefender/l$a;

    move-result-object v2

    sget-object v3, Lcom/threatmetrix/TrustDefender/l$a;->c:Lcom/threatmetrix/TrustDefender/l$a;

    if-ne v2, v3, :cond_0

    .line 67
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/al;->V:Lcom/threatmetrix/TrustDefender/ap;

    .line 68
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/al;->U:Lcom/threatmetrix/TrustDefender/ao;

    .line 70
    new-instance v9, Lcom/threatmetrix/TrustDefender/al$a;

    invoke-direct {v9, p0}, Lcom/threatmetrix/TrustDefender/al$a;-><init>(Lcom/threatmetrix/TrustDefender/al;)V

    .line 72
    .local v9, "connectCallBackHandler":Ljava/lang/reflect/InvocationHandler;
    new-instance v10, Lcom/threatmetrix/TrustDefender/al$b;

    invoke-direct {v10, p0}, Lcom/threatmetrix/TrustDefender/al$b;-><init>(Lcom/threatmetrix/TrustDefender/al;)V

    .line 73
    .local v10, "locationListenerHandler":Ljava/lang/reflect/InvocationHandler;
    new-instance v11, Lcom/threatmetrix/TrustDefender/al$b;

    invoke-direct {v11, p0}, Lcom/threatmetrix/TrustDefender/al$b;-><init>(Lcom/threatmetrix/TrustDefender/al;)V

    .local v11, "passiveLocationListenerHandler":Ljava/lang/reflect/InvocationHandler;
    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    .line 75
    invoke-virtual/range {v2 .. v11}, Lcom/threatmetrix/TrustDefender/al;->a(Landroid/content/Context;JJILjava/lang/reflect/InvocationHandler;Ljava/lang/reflect/InvocationHandler;Ljava/lang/reflect/InvocationHandler;)V

    .line 78
    invoke-virtual {p0}, Lcom/threatmetrix/TrustDefender/al;->g()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/threatmetrix/TrustDefender/al;->T:Ljava/lang/Object;

    .line 79
    invoke-virtual {p0}, Lcom/threatmetrix/TrustDefender/al;->d()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/threatmetrix/TrustDefender/al;->Q:Ljava/lang/Object;

    .line 80
    invoke-virtual {p0}, Lcom/threatmetrix/TrustDefender/al;->c()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/threatmetrix/TrustDefender/al;->P:Ljava/lang/Object;

    .line 81
    invoke-virtual {p0}, Lcom/threatmetrix/TrustDefender/al;->e()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/threatmetrix/TrustDefender/al;->R:Ljava/lang/Object;

    .line 82
    invoke-virtual {p0}, Lcom/threatmetrix/TrustDefender/al;->f()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/threatmetrix/TrustDefender/al;->S:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .end local v9    # "connectCallBackHandler":Ljava/lang/reflect/InvocationHandler;
    .end local v10    # "locationListenerHandler":Ljava/lang/reflect/InvocationHandler;
    .end local v11    # "passiveLocationListenerHandler":Ljava/lang/reflect/InvocationHandler;
    :cond_0
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method final a(Z)V
    .locals 0
    .param p1, "isPaused"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/threatmetrix/TrustDefender/al;->W:Z

    .line 115
    return-void
.end method

.method final i()V
    .locals 3

    .prologue
    .line 98
    new-instance v0, Lcom/threatmetrix/TrustDefender/al$c;

    invoke-direct {v0, p0}, Lcom/threatmetrix/TrustDefender/al$c;-><init>(Lcom/threatmetrix/TrustDefender/al;)V

    .line 99
    .local v0, "resultCallbackHandler":Ljava/lang/reflect/InvocationHandler;
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/al;->Q:Ljava/lang/Object;

    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/al;->S:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v0}, Lcom/threatmetrix/TrustDefender/al;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/InvocationHandler;)V

    .line 100
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/al;->R:Ljava/lang/Object;

    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/al;->T:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v0}, Lcom/threatmetrix/TrustDefender/al;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/InvocationHandler;)V

    .line 101
    return-void
.end method

.method final declared-synchronized j()V
    .locals 1

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/threatmetrix/TrustDefender/al;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
