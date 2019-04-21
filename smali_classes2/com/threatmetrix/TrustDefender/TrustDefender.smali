.class public Lcom/threatmetrix/TrustDefender/TrustDefender;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/threatmetrix/TrustDefender/TrustDefender$d;,
        Lcom/threatmetrix/TrustDefender/TrustDefender$c;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;

.field private static final e:Z

.field private static final f:Ljava/util/concurrent/Executor;

.field private static final g:Ljava/util/concurrent/locks/Lock;

.field private static volatile h:Lcom/threatmetrix/TrustDefender/TrustDefender;

.field private static i:Z

.field private static j:Z

.field private static k:Z


# instance fields
.field private volatile A:Z

.field private volatile B:J

.field private volatile C:I

.field private volatile D:Lcom/threatmetrix/TrustDefender/k;

.field private volatile E:Z

.field private F:Ljava/util/Timer;

.field private G:I

.field private final H:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/threatmetrix/TrustDefender/y;",
            ">;"
        }
    .end annotation
.end field

.field private final I:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final J:Ljava/util/concurrent/locks/Lock;

.field private final K:Ljava/util/concurrent/locks/Lock;

.field private final L:Lcom/threatmetrix/TrustDefender/ap;

.field private final M:Z

.field private final N:Lcom/threatmetrix/TrustDefender/TrustDefender$d;

.field final a:Lcom/threatmetrix/TrustDefender/ar;

.field final b:Lcom/threatmetrix/TrustDefender/ad;

.field volatile c:Lcom/threatmetrix/TrustDefender/am;

.field private l:Landroid/content/Context;

.field private m:I

.field private n:I

.field private volatile o:Ljava/util/concurrent/atomic/AtomicLong;

.field private volatile p:I

.field private volatile q:I

.field private volatile r:I

.field private volatile s:Z

.field private volatile t:Z

.field private volatile u:Ljava/lang/String;

.field private volatile v:Ljava/lang/Thread;

.field private volatile w:Lcom/threatmetrix/TrustDefender/EndNotifierBase;

.field private volatile x:Lcom/threatmetrix/TrustDefender/ak;

.field private volatile y:Lcom/threatmetrix/TrustDefender/d;

.field private volatile z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 36
    const-class v1, Lcom/threatmetrix/TrustDefender/TrustDefender;

    invoke-static {v1}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/threatmetrix/TrustDefender/TrustDefender;->d:Ljava/lang/String;

    .line 45
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v1, Lcom/threatmetrix/TrustDefender/TrustDefender;->g:Ljava/util/concurrent/locks/Lock;

    .line 46
    const/4 v1, 0x0

    sput-object v1, Lcom/threatmetrix/TrustDefender/TrustDefender;->h:Lcom/threatmetrix/TrustDefender/TrustDefender;

    .line 48
    sput-boolean v3, Lcom/threatmetrix/TrustDefender/TrustDefender;->i:Z

    .line 49
    sput-boolean v3, Lcom/threatmetrix/TrustDefender/TrustDefender;->j:Z

    .line 50
    sput-boolean v3, Lcom/threatmetrix/TrustDefender/TrustDefender;->k:Z

    .line 116
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/threatmetrix/TrustDefender/TrustDefender;->f:Ljava/util/concurrent/Executor;

    .line 120
    const-string v1, "java.vm.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "vmVersion":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "2.0.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 122
    :goto_0
    sput-boolean v1, Lcom/threatmetrix/TrustDefender/TrustDefender;->e:Z

    if-eqz v1, :cond_0

    .line 124
    sget-object v1, Lcom/threatmetrix/TrustDefender/TrustDefender;->d:Ljava/lang/String;

    const-string v4, "Broken join() detected, activating fallback routine"

    invoke-static {v1, v4}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_0
    const-string v1, "com.squareup.okhttp.OkHttpClient"

    invoke-static {v1}, Lcom/threatmetrix/TrustDefender/at;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    sput-boolean v1, Lcom/threatmetrix/TrustDefender/TrustDefender;->j:Z

    .line 128
    const-string v1, "okhttp3.OkHttpClient"

    invoke-static {v1}, Lcom/threatmetrix/TrustDefender/at;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_2
    sput-boolean v1, Lcom/threatmetrix/TrustDefender/TrustDefender;->i:Z

    .line 129
    const-string v1, "okio.Okio"

    invoke-static {v1}, Lcom/threatmetrix/TrustDefender/at;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_4

    :goto_3
    sput-boolean v2, Lcom/threatmetrix/TrustDefender/TrustDefender;->k:Z

    .line 130
    return-void

    :cond_1
    move v1, v3

    .line 121
    goto :goto_0

    :cond_2
    move v1, v3

    .line 127
    goto :goto_1

    :cond_3
    move v1, v3

    .line 128
    goto :goto_2

    :cond_4
    move v2, v3

    .line 129
    goto :goto_3
.end method

.method private constructor <init>()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/16 v5, 0x2710

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/threatmetrix/TrustDefender/ar;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/threatmetrix/TrustDefender/ar;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    .line 54
    new-instance v0, Lcom/threatmetrix/TrustDefender/ad;

    invoke-direct {v0}, Lcom/threatmetrix/TrustDefender/ad;-><init>()V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    .line 57
    iput-object v2, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->l:Landroid/content/Context;

    .line 60
    iput v3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->m:I

    .line 61
    const/16 v0, 0x7530

    iput v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->n:I

    .line 66
    iput-object v2, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->c:Lcom/threatmetrix/TrustDefender/am;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->o:Ljava/util/concurrent/atomic/AtomicLong;

    .line 69
    iput v5, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->p:I

    .line 71
    iput v5, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->q:I

    .line 72
    iput v3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->r:I

    .line 73
    iput-boolean v4, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->s:Z

    .line 74
    iput-boolean v3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->t:Z

    .line 76
    iput-object v2, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->u:Ljava/lang/String;

    .line 77
    iput-object v2, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->v:Ljava/lang/Thread;

    .line 78
    iput-object v2, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->w:Lcom/threatmetrix/TrustDefender/EndNotifierBase;

    .line 79
    iput-object v2, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->x:Lcom/threatmetrix/TrustDefender/ak;

    .line 80
    iput-object v2, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->y:Lcom/threatmetrix/TrustDefender/d;

    .line 82
    iput-boolean v4, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->z:Z

    .line 83
    iput-boolean v4, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->A:Z

    .line 85
    iput-wide v6, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->B:J

    .line 86
    iput v3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->C:I

    .line 88
    iput-object v2, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->D:Lcom/threatmetrix/TrustDefender/k;

    .line 89
    iput-boolean v3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->E:Z

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->H:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->I:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 100
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->I:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->J:Ljava/util/concurrent/locks/Lock;

    .line 101
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->I:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->K:Ljava/util/concurrent/locks/Lock;

    .line 102
    new-instance v0, Lcom/threatmetrix/TrustDefender/ap;

    invoke-direct {v0}, Lcom/threatmetrix/TrustDefender/ap;-><init>()V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->L:Lcom/threatmetrix/TrustDefender/ap;

    .line 103
    iput-boolean v4, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->M:Z

    .line 104
    new-instance v0, Lcom/threatmetrix/TrustDefender/TrustDefender$d;

    invoke-direct {v0, p0}, Lcom/threatmetrix/TrustDefender/TrustDefender$d;-><init>(Lcom/threatmetrix/TrustDefender/TrustDefender;)V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->N:Lcom/threatmetrix/TrustDefender/TrustDefender$d;

    .line 133
    return-void
.end method

.method static synthetic a(Lcom/threatmetrix/TrustDefender/TrustDefender;I)I
    .locals 0
    .param p0, "x0"    # Lcom/threatmetrix/TrustDefender/TrustDefender;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->C:I

    return p1
.end method

.method static synthetic a(Lcom/threatmetrix/TrustDefender/TrustDefender;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/threatmetrix/TrustDefender/TrustDefender;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->l:Landroid/content/Context;

    return-object v0
.end method

.method private a(Z)Lcom/threatmetrix/TrustDefender/THMStatusCode;
    .locals 12
    .param p1, "failedOkay"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1142
    sget-object v3, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_NotYet:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    .line 1147
    .local v3, "statusCode":Lcom/threatmetrix/TrustDefender/THMStatusCode;
    :try_start_0
    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->J:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->lockInterruptibly()V

    .line 1148
    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->H:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/threatmetrix/TrustDefender/y;

    .line 1150
    .local v4, "t":Lcom/threatmetrix/TrustDefender/y;
    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v7}, Lcom/threatmetrix/TrustDefender/ad;->a()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1152
    :cond_1
    sget-object v3, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_Interrupted_Error:Lcom/threatmetrix/TrustDefender/THMStatusCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1220
    .end local v4    # "t":Lcom/threatmetrix/TrustDefender/y;
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->J:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1229
    sget-object v7, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_NotYet:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    if-ne v3, v7, :cond_3

    .line 1230
    sget-object v3, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_OK:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    .line 1232
    :cond_3
    return-object v3

    .line 1158
    .restart local v4    # "t":Lcom/threatmetrix/TrustDefender/y;
    :cond_4
    :try_start_1
    iget v7, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->p:I

    int-to-long v8, v7

    invoke-virtual {v4, v8, v9}, Lcom/threatmetrix/TrustDefender/y;->join(J)V

    .line 1159
    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/y;->getState()Ljava/lang/Thread$State;

    move-result-object v7

    sget-object v8, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v7, v8, :cond_7

    .line 1161
    sget-object v7, Lcom/threatmetrix/TrustDefender/TrustDefender;->d:Ljava/lang/String;

    const-string v8, "Connection hasn\'t completed before the timeout expired, aborting"

    invoke-static {v7, v8}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    sget-object v3, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_Connection_Error:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    .line 1164
    if-nez p1, :cond_6

    .line 1166
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/threatmetrix/TrustDefender/TrustDefender;->b(Z)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1204
    :catch_0
    move-exception v0

    .line 1206
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v7}, Lcom/threatmetrix/TrustDefender/ad;->a()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1209
    sget-object v7, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_NotYet:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    if-ne v3, v7, :cond_5

    .line 1210
    sget-object v3, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_Connection_Error:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    .line 1213
    :cond_5
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/threatmetrix/TrustDefender/TrustDefender;->b(Z)V

    .line 1215
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    .line 1216
    .local v6, "thisThread":Ljava/lang/Thread;
    sget-object v7, Lcom/threatmetrix/TrustDefender/TrustDefender;->d:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "thread join: this thread = TID "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1224
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "t":Lcom/threatmetrix/TrustDefender/y;
    .end local v6    # "thisThread":Ljava/lang/Thread;
    :catchall_0
    move-exception v7

    .line 1226
    iget-object v8, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->J:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v7

    .line 1171
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "t":Lcom/threatmetrix/TrustDefender/y;
    :cond_6
    :try_start_3
    invoke-direct {p0, v4}, Lcom/threatmetrix/TrustDefender/TrustDefender;->a(Ljava/lang/Thread;)V

    goto/16 :goto_0

    .line 1176
    :cond_7
    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/y;->a()Lcom/threatmetrix/TrustDefender/o;

    move-result-object v2

    .line 1177
    .local v2, "runner":Lcom/threatmetrix/TrustDefender/o;
    if-eqz v2, :cond_0

    .line 1179
    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/y;->a()Lcom/threatmetrix/TrustDefender/o;

    move-result-object v7

    invoke-virtual {v7}, Lcom/threatmetrix/TrustDefender/o;->a()Lcom/threatmetrix/TrustDefender/THMStatusCode;

    move-result-object v5

    .line 1180
    .local v5, "tempStatus":Lcom/threatmetrix/TrustDefender/THMStatusCode;
    sget-object v7, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_OK:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    if-ne v5, v7, :cond_8

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefender/o;->b()I

    move-result v7

    const/16 v8, 0xc8

    if-eq v7, v8, :cond_8

    .line 1182
    sget-object v7, Lcom/threatmetrix/TrustDefender/TrustDefender;->d:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Connection returned http status code:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefender/o;->b()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    sget-object v3, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_Connection_Error:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    .line 1185
    if-nez p1, :cond_0

    .line 1187
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/threatmetrix/TrustDefender/TrustDefender;->b(Z)V

    goto/16 :goto_1

    .line 1191
    :cond_8
    sget-object v7, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_OK:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    if-eq v5, v7, :cond_0

    .line 1193
    sget-object v7, Lcom/threatmetrix/TrustDefender/TrustDefender;->d:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Connection returned status :"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefender/o;->a()Lcom/threatmetrix/TrustDefender/THMStatusCode;

    move-result-object v9

    invoke-virtual {v9}, Lcom/threatmetrix/TrustDefender/THMStatusCode;->getDesc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    move-object v3, v5

    .line 1196
    if-nez p1, :cond_0

    .line 1198
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/threatmetrix/TrustDefender/TrustDefender;->b(Z)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/threatmetrix/TrustDefender/TrustDefender;Lcom/threatmetrix/TrustDefender/d;)Lcom/threatmetrix/TrustDefender/d;
    .locals 0
    .param p0, "x0"    # Lcom/threatmetrix/TrustDefender/TrustDefender;
    .param p1, "x1"    # Lcom/threatmetrix/TrustDefender/d;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->y:Lcom/threatmetrix/TrustDefender/d;

    return-object p1
.end method

.method private a(Ljava/lang/Runnable;)Lcom/threatmetrix/TrustDefender/y;
    .locals 10
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    const/4 v4, 0x0

    .line 1407
    if-nez p1, :cond_0

    move-object v3, v4

    .line 1444
    :goto_0
    return-object v3

    .line 1410
    :cond_0
    iget-object v5, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v5}, Lcom/threatmetrix/TrustDefender/ad;->a()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v3, v4

    .line 1411
    goto :goto_0

    .line 1417
    :cond_1
    :try_start_0
    new-instance v3, Lcom/threatmetrix/TrustDefender/y;

    invoke-direct {v3, p1}, Lcom/threatmetrix/TrustDefender/y;-><init>(Ljava/lang/Runnable;)V

    .line 1421
    .local v3, "t":Lcom/threatmetrix/TrustDefender/y;
    instance-of v5, p1, Lcom/threatmetrix/TrustDefender/o;

    if-eqz v5, :cond_2

    .line 1424
    move-object v0, p1

    check-cast v0, Lcom/threatmetrix/TrustDefender/o;

    move-object v2, v0

    .line 1425
    .local v2, "httpRunner":Lcom/threatmetrix/TrustDefender/o;
    sget-object v5, Lcom/threatmetrix/TrustDefender/TrustDefender;->d:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Adding thread ID: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/threatmetrix/TrustDefender/y;->getId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/threatmetrix/TrustDefender/o;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    iget-object v5, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->K:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1429
    :try_start_1
    iget-object v5, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->H:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1433
    :try_start_2
    iget-object v5, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->K:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1436
    .end local v2    # "httpRunner":Lcom/threatmetrix/TrustDefender/o;
    :cond_2
    invoke-virtual {v3}, Lcom/threatmetrix/TrustDefender/y;->start()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1440
    .end local v3    # "t":Lcom/threatmetrix/TrustDefender/y;
    :catch_0
    move-exception v5

    sget-object v5, Lcom/threatmetrix/TrustDefender/TrustDefender;->d:Ljava/lang/String;

    move-object v3, v4

    .line 1441
    goto :goto_0

    .line 1433
    .restart local v2    # "httpRunner":Lcom/threatmetrix/TrustDefender/o;
    .restart local v3    # "t":Lcom/threatmetrix/TrustDefender/y;
    :catchall_0
    move-exception v5

    :try_start_3
    iget-object v6, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->K:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method static synthetic a(Lcom/threatmetrix/TrustDefender/TrustDefender;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/threatmetrix/TrustDefender/TrustDefender;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->F:Ljava/util/Timer;

    return-object p1
.end method

.method private a(Ljava/lang/Thread;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Thread;

    .prologue
    .line 1290
    sget-object v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->f:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/threatmetrix/TrustDefender/TrustDefender$b;

    invoke-direct {v1, p0, p1}, Lcom/threatmetrix/TrustDefender/TrustDefender$b;-><init>(Lcom/threatmetrix/TrustDefender/TrustDefender;Ljava/lang/Thread;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1291
    return-void
.end method

.method static synthetic a(Lcom/threatmetrix/TrustDefender/TrustDefender;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/threatmetrix/TrustDefender/TrustDefender;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->A:Z

    return p1
.end method

.method static synthetic b(Lcom/threatmetrix/TrustDefender/TrustDefender;)Lcom/threatmetrix/TrustDefender/ak;
    .locals 1
    .param p0, "x0"    # Lcom/threatmetrix/TrustDefender/TrustDefender;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->x:Lcom/threatmetrix/TrustDefender/ak;

    return-object v0
.end method

.method private b(Z)V
    .locals 4
    .param p1, "listLocked"    # Z

    .prologue
    .line 1258
    if-nez p1, :cond_0

    .line 1259
    :try_start_0
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->J:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1260
    :cond_0
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->H:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/threatmetrix/TrustDefender/y;

    .line 1262
    .local v1, "t":Lcom/threatmetrix/TrustDefender/y;
    invoke-direct {p0, v1}, Lcom/threatmetrix/TrustDefender/TrustDefender;->a(Ljava/lang/Thread;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1267
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "t":Lcom/threatmetrix/TrustDefender/y;
    :catchall_0
    move-exception v2

    if-nez p1, :cond_1

    .line 1268
    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->J:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_1
    throw v2

    .line 1267
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    if-nez p1, :cond_3

    .line 1268
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->J:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1270
    :cond_3
    return-void
.end method

.method static synthetic b(Lcom/threatmetrix/TrustDefender/TrustDefender;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/threatmetrix/TrustDefender/TrustDefender;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->z:Z

    return p1
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/threatmetrix/TrustDefender/TrustDefender;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .param p0, "x0"    # Lcom/threatmetrix/TrustDefender/TrustDefender;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->o:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic d(Lcom/threatmetrix/TrustDefender/TrustDefender;)Lcom/threatmetrix/TrustDefender/d;
    .locals 1
    .param p0, "x0"    # Lcom/threatmetrix/TrustDefender/TrustDefender;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->y:Lcom/threatmetrix/TrustDefender/d;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefender/ar;->a()V

    .line 1313
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->L:Lcom/threatmetrix/TrustDefender/ap;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefender/ap;->a()V

    .line 1314
    return-void
.end method

.method private e()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1320
    :try_start_0
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->K:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lockInterruptibly()V

    .line 1321
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1325
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->K:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1326
    return-void

    .line 1325
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->K:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic e(Lcom/threatmetrix/TrustDefender/TrustDefender;)Z
    .locals 1
    .param p0, "x0"    # Lcom/threatmetrix/TrustDefender/TrustDefender;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/threatmetrix/TrustDefender/TrustDefender;->g()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/threatmetrix/TrustDefender/TrustDefender;)I
    .locals 1
    .param p0, "x0"    # Lcom/threatmetrix/TrustDefender/TrustDefender;

    .prologue
    .line 31
    iget v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->n:I

    return v0
.end method

.method private f()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 1459
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$j;->a()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1488
    :cond_0
    :goto_0
    return v5

    .line 1463
    :cond_1
    sget v6, Lcom/threatmetrix/TrustDefender/g$b$a;->c:I

    sget v7, Lcom/threatmetrix/TrustDefender/g$b$b;->m:I

    if-lt v6, v7, :cond_2

    .line 1465
    iget-object v5, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->l:Landroid/content/Context;

    invoke-static {v5}, Lcom/threatmetrix/TrustDefender/r;->a(Landroid/content/Context;)Z

    move-result v5

    goto :goto_0

    .line 1471
    :cond_2
    :try_start_0
    iget-object v6, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->l:Landroid/content/Context;

    const-string v7, "power"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1472
    .local v4, "powerService":Ljava/lang/Object;
    if-eqz v4, :cond_0

    instance-of v6, v4, Landroid/os/PowerManager;

    if-eqz v6, :cond_0

    .line 1476
    move-object v0, v4

    check-cast v0, Landroid/os/PowerManager;

    move-object v3, v0

    .line 1477
    .local v3, "pm":Landroid/os/PowerManager;
    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    goto :goto_0

    .line 1479
    .end local v3    # "pm":Landroid/os/PowerManager;
    .end local v4    # "powerService":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 1482
    .local v2, "ex":Ljava/lang/SecurityException;
    sget-object v6, Lcom/threatmetrix/TrustDefender/TrustDefender;->d:Ljava/lang/String;

    goto :goto_0

    .line 1484
    .end local v2    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 1486
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/threatmetrix/TrustDefender/TrustDefender;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/threatmetrix/TrustDefender/TrustDefender;)I
    .locals 1
    .param p0, "x0"    # Lcom/threatmetrix/TrustDefender/TrustDefender;

    .prologue
    .line 31
    iget v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->G:I

    return v0
.end method

.method private g()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1518
    sget-boolean v3, Lcom/threatmetrix/TrustDefender/TrustDefender;->i:Z

    if-eqz v3, :cond_0

    .line 1520
    new-instance v3, Lcom/threatmetrix/TrustDefender/z;

    invoke-direct {v3}, Lcom/threatmetrix/TrustDefender/z;-><init>()V

    iput-object v3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->c:Lcom/threatmetrix/TrustDefender/am;

    .line 1524
    :try_start_0
    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->c:Lcom/threatmetrix/TrustDefender/am;

    iget-object v4, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->l:Landroid/content/Context;

    iget v4, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->p:I

    iget-object v5, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    iget-object v5, v5, Lcom/threatmetrix/TrustDefender/ar;->C:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/threatmetrix/TrustDefender/am;->a(ILjava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1575
    :goto_0
    return v1

    .line 1527
    :catch_0
    move-exception v0

    .line 1529
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v3, v0, Ljava/lang/IllegalStateException;

    if-eqz v3, :cond_2

    .line 1531
    sget-object v3, Lcom/threatmetrix/TrustDefender/TrustDefender;->d:Ljava/lang/String;

    const-string v4, "Failed to build OkHttp3 client, most probably because of TLS factory"

    invoke-static {v3, v4}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1532
    sget-boolean v3, Lcom/threatmetrix/TrustDefender/TrustDefender;->j:Z

    if-nez v3, :cond_1

    .line 1534
    sget-object v3, Lcom/threatmetrix/TrustDefender/TrustDefender;->d:Ljava/lang/String;

    const-string v4, "Okhttp2 is not available going to okhttp3 without TLS"

    invoke-static {v3, v4}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    :try_start_1
    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->c:Lcom/threatmetrix/TrustDefender/am;

    iget-object v4, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->l:Landroid/content/Context;

    iget v4, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->p:I

    iget-object v5, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    iget-object v5, v5, Lcom/threatmetrix/TrustDefender/ar;->C:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/threatmetrix/TrustDefender/am;->a(ILjava/lang/String;ZZ)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1542
    :catch_1
    move-exception v3

    sget-object v3, Lcom/threatmetrix/TrustDefender/TrustDefender;->d:Ljava/lang/String;

    const-string v4, "Failed to build OkHttp3 client even without TLS factory"

    invoke-static {v3, v4}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    :goto_1
    sget-boolean v3, Lcom/threatmetrix/TrustDefender/TrustDefender;->j:Z

    if-eqz v3, :cond_3

    .line 1558
    new-instance v3, Lcom/threatmetrix/TrustDefender/ab;

    invoke-direct {v3}, Lcom/threatmetrix/TrustDefender/ab;-><init>()V

    iput-object v3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->c:Lcom/threatmetrix/TrustDefender/am;

    .line 1561
    :try_start_2
    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->c:Lcom/threatmetrix/TrustDefender/am;

    iget-object v4, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->l:Landroid/content/Context;

    iget v4, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->p:I

    iget-object v5, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    iget-object v5, v5, Lcom/threatmetrix/TrustDefender/ar;->C:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/threatmetrix/TrustDefender/am;->a(ILjava/lang/String;ZZ)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1566
    :catch_2
    move-exception v1

    sget-object v1, Lcom/threatmetrix/TrustDefender/TrustDefender;->d:Ljava/lang/String;

    const-string v3, "Failed to build okhttp2 client, init failed."

    invoke-static {v1, v3}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move v1, v2

    .line 1575
    goto :goto_0

    .line 1547
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    sget-object v3, Lcom/threatmetrix/TrustDefender/TrustDefender;->d:Ljava/lang/String;

    goto :goto_1

    .line 1552
    :cond_2
    sget-object v3, Lcom/threatmetrix/TrustDefender/TrustDefender;->d:Ljava/lang/String;

    const-string v4, "Failed to build OkHttp3 client"

    invoke-static {v3, v4}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1572
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_3
    sget-object v1, Lcom/threatmetrix/TrustDefender/TrustDefender;->d:Ljava/lang/String;

    const-string v3, "OkHttp3 and okHttp2 libraries can\'t be found aborting init()"

    invoke-static {v1, v3}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static getInstance()Lcom/threatmetrix/TrustDefender/TrustDefender;
    .locals 2

    .prologue
    .line 140
    sget-object v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->h:Lcom/threatmetrix/TrustDefender/TrustDefender;

    if-nez v0, :cond_1

    .line 144
    :try_start_0
    sget-object v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 145
    sget-object v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->h:Lcom/threatmetrix/TrustDefender/TrustDefender;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Lcom/threatmetrix/TrustDefender/TrustDefender;

    invoke-direct {v0}, Lcom/threatmetrix/TrustDefender/TrustDefender;-><init>()V

    sput-object v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->h:Lcom/threatmetrix/TrustDefender/TrustDefender;

    .line 149
    :cond_0
    sget-object v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->h:Lcom/threatmetrix/TrustDefender/TrustDefender;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    sget-object v1, Lcom/threatmetrix/TrustDefender/TrustDefender;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 156
    :goto_0
    return-object v0

    .line 153
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/threatmetrix/TrustDefender/TrustDefender;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 156
    :cond_1
    sget-object v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->h:Lcom/threatmetrix/TrustDefender/TrustDefender;

    goto :goto_0
.end method

.method static synthetic h(Lcom/threatmetrix/TrustDefender/TrustDefender;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/threatmetrix/TrustDefender/TrustDefender;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->F:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic i(Lcom/threatmetrix/TrustDefender/TrustDefender;)Z
    .locals 1
    .param p0, "x0"    # Lcom/threatmetrix/TrustDefender/TrustDefender;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->A:Z

    return v0
.end method


# virtual methods
.method final a()V
    .locals 27

    .prologue
    .line 709
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/ar;->b()V

    .line 715
    sget-object v5, Lcom/threatmetrix/TrustDefender/TrustDefender;->d:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v4, "continuing profile request "

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/ad;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "inited already"

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/ad;->a()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 930
    :catch_0
    move-exception v16

    .line 932
    .local v16, "e":Ljava/lang/InterruptedException;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/ad;->a()Z

    move-result v4

    if-nez v4, :cond_2a

    .line 934
    sget-object v4, Lcom/threatmetrix/TrustDefender/TrustDefender;->d:Ljava/lang/String;

    const-string v5, "profile request interrupted"

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 940
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    sget-object v5, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_Internal_Error:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    invoke-virtual {v4, v5}, Lcom/threatmetrix/TrustDefender/ar;->a(Lcom/threatmetrix/TrustDefender/THMStatusCode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 952
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/ad;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 954
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    sget-object v5, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_Interrupted_Error:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    invoke-virtual {v4, v5}, Lcom/threatmetrix/TrustDefender/ar;->a(Lcom/threatmetrix/TrustDefender/THMStatusCode;)V

    .line 956
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 963
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/threatmetrix/TrustDefender/TrustDefender;->getResult()Lcom/threatmetrix/TrustDefender/ProfilingResult;

    move-result-object v21

    .line 964
    .local v21, "result":Lcom/threatmetrix/TrustDefender/ProfilingResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->w:Lcom/threatmetrix/TrustDefender/EndNotifierBase;

    move-object/from16 v20, v0

    .line 989
    .local v20, "notifier":Lcom/threatmetrix/TrustDefender/EndNotifierBase;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    iget-wide v10, v5, Lcom/threatmetrix/TrustDefender/ar;->W:J

    sub-long/2addr v6, v10

    iput-wide v6, v4, Lcom/threatmetrix/TrustDefender/ar;->X:J

    .line 990
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/ad;->h()V

    .line 991
    sget-object v4, Lcom/threatmetrix/TrustDefender/TrustDefender;->f:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/threatmetrix/TrustDefender/TrustDefender$a;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-direct {v5, v0, v1, v2}, Lcom/threatmetrix/TrustDefender/TrustDefender$a;-><init>(Lcom/threatmetrix/TrustDefender/TrustDefender;Lcom/threatmetrix/TrustDefender/ProfilingResult;Lcom/threatmetrix/TrustDefender/EndNotifierBase;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 992
    .end local v16    # "e":Ljava/lang/InterruptedException;
    :goto_2
    return-void

    .line 715
    .end local v20    # "notifier":Lcom/threatmetrix/TrustDefender/EndNotifierBase;
    .end local v21    # "result":Lcom/threatmetrix/TrustDefender/ProfilingResult;
    :cond_2
    :try_start_2
    const-string v4, " needs init"

    goto/16 :goto_0

    .line 720
    :cond_3
    const/16 v26, 0x0

    .line 721
    .local v26, "waitedForScan":Z
    const/16 v23, 0x0

    .line 723
    .local v23, "shouldWaitForScan":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/ad;->b()Z

    move-result v4

    if-nez v4, :cond_5

    .line 725
    sget-object v4, Lcom/threatmetrix/TrustDefender/TrustDefender;->d:Ljava/lang/String;

    const-string v5, "Not inited"

    invoke-static {v4, v5}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Not inited"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 942
    .end local v23    # "shouldWaitForScan":Z
    .end local v26    # "waitedForScan":Z
    :catch_1
    move-exception v16

    .line 946
    .local v16, "e":Ljava/lang/Exception;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    sget-object v5, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_Internal_Error:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    invoke-virtual {v4, v5}, Lcom/threatmetrix/TrustDefender/ar;->a(Lcom/threatmetrix/TrustDefender/THMStatusCode;)V

    .line 947
    sget-object v4, Lcom/threatmetrix/TrustDefender/TrustDefender;->d:Ljava/lang/String;

    const-string v5, "profile request failed"

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 952
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/ad;->a()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 954
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    sget-object v5, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_Interrupted_Error:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    invoke-virtual {v4, v5}, Lcom/threatmetrix/TrustDefender/ar;->a(Lcom/threatmetrix/TrustDefender/THMStatusCode;)V

    .line 956
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 963
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/threatmetrix/TrustDefender/TrustDefender;->getResult()Lcom/threatmetrix/TrustDefender/ProfilingResult;

    move-result-object v21

    .line 964
    .restart local v21    # "result":Lcom/threatmetrix/TrustDefender/ProfilingResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->w:Lcom/threatmetrix/TrustDefender/EndNotifierBase;

    move-object/from16 v20, v0

    .line 989
    .restart local v20    # "notifier":Lcom/threatmetrix/TrustDefender/EndNotifierBase;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    iget-wide v10, v5, Lcom/threatmetrix/TrustDefender/ar;->W:J

    sub-long/2addr v6, v10

    iput-wide v6, v4, Lcom/threatmetrix/TrustDefender/ar;->X:J

    .line 990
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/ad;->h()V

    .line 991
    sget-object v4, Lcom/threatmetrix/TrustDefender/TrustDefender;->f:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/threatmetrix/TrustDefender/TrustDefender$a;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-direct {v5, v0, v1, v2}, Lcom/threatmetrix/TrustDefender/TrustDefender$a;-><init>(Lcom/threatmetrix/TrustDefender/TrustDefender;Lcom/threatmetrix/TrustDefender/ProfilingResult;Lcom/threatmetrix/TrustDefender/EndNotifierBase;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 730
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v20    # "notifier":Lcom/threatmetrix/TrustDefender/EndNotifierBase;
    .end local v21    # "result":Lcom/threatmetrix/TrustDefender/ProfilingResult;
    .restart local v23    # "shouldWaitForScan":Z
    .restart local v26    # "waitedForScan":Z
    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/ad;->e()Z

    move-result v18

    .line 731
    .local v18, "initInProgress":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/ad;->n()Z

    move-result v22

    .line 732
    .local v22, "scanInProgress":Z
    if-nez v18, :cond_6

    if-eqz v22, :cond_e

    .line 734
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->t:Z

    if-eqz v4, :cond_a

    .line 736
    sget-object v5, Lcom/threatmetrix/TrustDefender/TrustDefender;->d:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v4, "Setting flag to for interrupting "

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v18, :cond_9

    const-string v4, "init"

    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " scan"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/ad;->k()Z

    .line 748
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->p:I

    invoke-virtual {v4, v5}, Lcom/threatmetrix/TrustDefender/ad;->a(I)Z

    move-result v25

    .line 750
    .local v25, "waitForInitResult":Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->t:Z

    if-eqz v4, :cond_7

    .line 753
    invoke-static {}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a()Lcom/threatmetrix/TrustDefender/NativeGatherer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c()I

    .line 754
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/ad;->m()Z

    .line 755
    invoke-static {}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a()Lcom/threatmetrix/TrustDefender/NativeGatherer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->d()I

    .line 759
    :cond_7
    if-nez v25, :cond_d

    .line 762
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/ad;->a()Z

    move-result v4

    if-nez v4, :cond_b

    .line 764
    sget-object v4, Lcom/threatmetrix/TrustDefender/TrustDefender;->d:Ljava/lang/String;

    const-string v5, "Timed out waiting for init thread, aborting"

    invoke-static {v4, v5}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    sget-object v5, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_Internal_Error:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    invoke-virtual {v4, v5}, Lcom/threatmetrix/TrustDefender/ar;->a(Lcom/threatmetrix/TrustDefender/THMStatusCode;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 952
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/ad;->a()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 954
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    sget-object v5, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_Interrupted_Error:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    invoke-virtual {v4, v5}, Lcom/threatmetrix/TrustDefender/ar;->a(Lcom/threatmetrix/TrustDefender/THMStatusCode;)V

    .line 956
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 963
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/threatmetrix/TrustDefender/TrustDefender;->getResult()Lcom/threatmetrix/TrustDefender/ProfilingResult;

    move-result-object v21

    .line 964
    .restart local v21    # "result":Lcom/threatmetrix/TrustDefender/ProfilingResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->w:Lcom/threatmetrix/TrustDefender/EndNotifierBase;

    move-object/from16 v20, v0

    .line 989
    .restart local v20    # "notifier":Lcom/threatmetrix/TrustDefender/EndNotifierBase;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    iget-wide v10, v5, Lcom/threatmetrix/TrustDefender/ar;->W:J

    sub-long/2addr v6, v10

    iput-wide v6, v4, Lcom/threatmetrix/TrustDefender/ar;->X:J

    .line 990
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/ad;->h()V

    .line 991
    sget-object v4, Lcom/threatmetrix/TrustDefender/TrustDefender;->f:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/threatmetrix/TrustDefender/TrustDefender$a;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-direct {v5, v0, v1, v2}, Lcom/threatmetrix/TrustDefender/TrustDefender$a;-><init>(Lcom/threatmetrix/TrustDefender/TrustDefender;Lcom/threatmetrix/TrustDefender/ProfilingResult;Lcom/threatmetrix/TrustDefender/EndNotifierBase;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 736
    .end local v20    # "notifier":Lcom/threatmetrix/TrustDefender/EndNotifierBase;
    .end local v21    # "result":Lcom/threatmetrix/TrustDefender/ProfilingResult;
    .end local v25    # "waitForInitResult":Z
    :cond_9
    :try_start_5
    const-string v4, "package"

    goto/16 :goto_3

    .line 743
    :cond_a
    const/16 v23, 0x1

    .line 744
    const/16 v26, 0x1

    goto/16 :goto_4

    .line 771
    .restart local v25    # "waitForInitResult":Z
    :cond_b
    sget-object v4, Lcom/threatmetrix/TrustDefender/TrustDefender;->d:Ljava/lang/String;

    const-string v5, "Thread interrupted, returning"

    invoke-static {v4, v5}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .line 952
    .end local v18    # "initInProgress":Z
    .end local v22    # "scanInProgress":Z
    .end local v23    # "shouldWaitForScan":Z
    .end local v25    # "waitForInitResult":Z
    .end local v26    # "waitedForScan":Z
    :catchall_0
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v5}, Lcom/threatmetrix/TrustDefender/ad;->a()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 954
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    sget-object v6, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_Interrupted_Error:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    invoke-virtual {v5, v6}, Lcom/threatmetrix/TrustDefender/ar;->a(Lcom/threatmetrix/TrustDefender/THMStatusCode;)V

    .line 956
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 963
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/threatmetrix/TrustDefender/TrustDefender;->getResult()Lcom/threatmetrix/TrustDefender/ProfilingResult;

    move-result-object v21

    .line 964
    .restart local v21    # "result":Lcom/threatmetrix/TrustDefender/ProfilingResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->w:Lcom/threatmetrix/TrustDefender/EndNotifierBase;

    move-object/from16 v20, v0

    .line 989
    .restart local v20    # "notifier":Lcom/threatmetrix/TrustDefender/EndNotifierBase;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    iget-wide v10, v10, Lcom/threatmetrix/TrustDefender/ar;->W:J

    sub-long/2addr v6, v10

    iput-wide v6, v5, Lcom/threatmetrix/TrustDefender/ar;->X:J

    .line 990
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v5}, Lcom/threatmetrix/TrustDefender/ad;->h()V

    .line 991
    sget-object v5, Lcom/threatmetrix/TrustDefender/TrustDefender;->f:Ljava/util/concurrent/Executor;

    new-instance v6, Lcom/threatmetrix/TrustDefender/TrustDefender$a;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-direct {v6, v0, v1, v2}, Lcom/threatmetrix/TrustDefender/TrustDefender$a;-><init>(Lcom/threatmetrix/TrustDefender/TrustDefender;Lcom/threatmetrix/TrustDefender/ProfilingResult;Lcom/threatmetrix/TrustDefender/EndNotifierBase;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 992
    throw v4

    .line 776
    .end local v20    # "notifier":Lcom/threatmetrix/TrustDefender/EndNotifierBase;
    .end local v21    # "result":Lcom/threatmetrix/TrustDefender/ProfilingResult;
    .restart local v18    # "initInProgress":Z
    .restart local v22    # "scanInProgress":Z
    .restart local v23    # "shouldWaitForScan":Z
    .restart local v25    # "waitForInitResult":Z
    .restart local v26    # "waitedForScan":Z
    :cond_d
    if-eqz v23, :cond_e

    .line 777
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/ad;->m()Z

    .line 782
    .end local v25    # "waitForInitResult":Z
    :cond_e
    if-nez v26, :cond_f

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->s:Z

    if-eqz v4, :cond_f

    .line 785
    move-object/from16 v0, p0

    iget v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->q:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    sget-object v7, Lcom/threatmetrix/TrustDefender/TrustDefender$c;->a:Lcom/threatmetrix/TrustDefender/TrustDefender$c;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/threatmetrix/TrustDefender/TrustDefender;->a(IZZLcom/threatmetrix/TrustDefender/TrustDefender$c;)Z

    .line 788
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/ad;->a()Z

    move-result v4

    if-nez v4, :cond_10

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-eqz v4, :cond_11

    :cond_10
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4

    .line 793
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/ar;->h()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/ar;->j()Lcom/threatmetrix/TrustDefender/n;

    move-result-object v7

    new-instance v4, Lcom/threatmetrix/TrustDefender/m;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->c:Lcom/threatmetrix/TrustDefender/am;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-virtual {v10}, Lcom/threatmetrix/TrustDefender/ar;->m()Ljava/util/Map;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    move-object/from16 v9, p0

    invoke-direct/range {v4 .. v10}, Lcom/threatmetrix/TrustDefender/m;-><init>(Lcom/threatmetrix/TrustDefender/am;Ljava/lang/String;Lcom/threatmetrix/TrustDefender/n;Ljava/util/Map;Lcom/threatmetrix/TrustDefender/TrustDefender;Lcom/threatmetrix/TrustDefender/e;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/threatmetrix/TrustDefender/TrustDefender;->a(Ljava/lang/Runnable;)Lcom/threatmetrix/TrustDefender/y;

    move-result-object v5

    if-eqz v5, :cond_13

    move-object v14, v4

    .line 794
    .local v14, "configRunner":Lcom/threatmetrix/TrustDefender/m;
    :goto_6
    if-nez v14, :cond_14

    .line 798
    sget-object v4, Lcom/threatmetrix/TrustDefender/TrustDefender;->d:Ljava/lang/String;

    const-string v5, "Failed to connect to server, aborting"

    invoke-static {v4, v5}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    sget-object v5, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_Internal_Error:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    invoke-virtual {v4, v5}, Lcom/threatmetrix/TrustDefender/ar;->a(Lcom/threatmetrix/TrustDefender/THMStatusCode;)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 952
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/ad;->a()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 954
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    sget-object v5, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_Interrupted_Error:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    invoke-virtual {v4, v5}, Lcom/threatmetrix/TrustDefender/ar;->a(Lcom/threatmetrix/TrustDefender/THMStatusCode;)V

    .line 956
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 963
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/threatmetrix/TrustDefender/TrustDefender;->getResult()Lcom/threatmetrix/TrustDefender/ProfilingResult;

    move-result-object v21

    .line 964
    .restart local v21    # "result":Lcom/threatmetrix/TrustDefender/ProfilingResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->w:Lcom/threatmetrix/TrustDefender/EndNotifierBase;

    move-object/from16 v20, v0

    .line 989
    .restart local v20    # "notifier":Lcom/threatmetrix/TrustDefender/EndNotifierBase;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    iget-wide v10, v5, Lcom/threatmetrix/TrustDefender/ar;->W:J

    sub-long/2addr v6, v10

    iput-wide v6, v4, Lcom/threatmetrix/TrustDefender/ar;->X:J

    .line 990
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/ad;->h()V

    .line 991
    sget-object v4, Lcom/threatmetrix/TrustDefender/TrustDefender;->f:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/threatmetrix/TrustDefender/TrustDefender$a;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-direct {v5, v0, v1, v2}, Lcom/threatmetrix/TrustDefender/TrustDefender$a;-><init>(Lcom/threatmetrix/TrustDefender/TrustDefender;Lcom/threatmetrix/TrustDefender/ProfilingResult;Lcom/threatmetrix/TrustDefender/EndNotifierBase;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 793
    .end local v14    # "configRunner":Lcom/threatmetrix/TrustDefender/m;
    .end local v20    # "notifier":Lcom/threatmetrix/TrustDefender/EndNotifierBase;
    .end local v21    # "result":Lcom/threatmetrix/TrustDefender/ProfilingResult;
    :cond_13
    const/4 v14, 0x0

    goto :goto_6

    .line 804
    .restart local v14    # "configRunner":Lcom/threatmetrix/TrustDefender/m;
    :cond_14
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/ad;->a()Z

    move-result v4

    if-nez v4, :cond_15

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-eqz v4, :cond_16

    :cond_15
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4

    .line 806
    :cond_16
    const/16 v19, 0x0

    .line 807
    .local v19, "needToWaitForBrowser":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->y:Lcom/threatmetrix/TrustDefender/d;

    if-eqz v4, :cond_17

    .line 809
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->y:Lcom/threatmetrix/TrustDefender/d;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/d;->b()Z

    move-result v19

    .line 811
    if-eqz v19, :cond_17

    .line 814
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->y:Lcom/threatmetrix/TrustDefender/d;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/d;->c()V

    .line 815
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/ad;->m()Z

    .line 821
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/ar;->l()V

    .line 823
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/ad;->a()Z

    move-result v4

    if-nez v4, :cond_18

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-eqz v4, :cond_19

    :cond_18
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4

    .line 825
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->y:Lcom/threatmetrix/TrustDefender/d;

    if-eqz v4, :cond_1a

    if-eqz v19, :cond_1a

    .line 827
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->y:Lcom/threatmetrix/TrustDefender/d;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/threatmetrix/TrustDefender/d;->a(Z)V

    .line 828
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->y:Lcom/threatmetrix/TrustDefender/d;

    invoke-virtual {v4, v5}, Lcom/threatmetrix/TrustDefender/ar;->a(Lcom/threatmetrix/TrustDefender/c;)V

    .line 830
    :cond_1a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/threatmetrix/TrustDefender/TrustDefender;->a(Z)Lcom/threatmetrix/TrustDefender/THMStatusCode;

    move-result-object v15

    .line 834
    .local v15, "configStatus":Lcom/threatmetrix/TrustDefender/THMStatusCode;
    invoke-direct/range {p0 .. p0}, Lcom/threatmetrix/TrustDefender/TrustDefender;->e()V

    .line 838
    sget-object v4, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_OK:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    if-eq v15, v4, :cond_1c

    .line 840
    sget-object v4, Lcom/threatmetrix/TrustDefender/TrustDefender;->d:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to retrieve config, aborting: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/threatmetrix/TrustDefender/THMStatusCode;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-virtual {v4, v15}, Lcom/threatmetrix/TrustDefender/ar;->a(Lcom/threatmetrix/TrustDefender/THMStatusCode;)V

    .line 843
    invoke-static {}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a()Lcom/threatmetrix/TrustDefender/NativeGatherer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c()I

    .line 844
    invoke-static {}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a()Lcom/threatmetrix/TrustDefender/NativeGatherer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->d()I
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 952
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/ad;->a()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 954
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    sget-object v5, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_Interrupted_Error:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    invoke-virtual {v4, v5}, Lcom/threatmetrix/TrustDefender/ar;->a(Lcom/threatmetrix/TrustDefender/THMStatusCode;)V

    .line 956
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 963
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/threatmetrix/TrustDefender/TrustDefender;->getResult()Lcom/threatmetrix/TrustDefender/ProfilingResult;

    move-result-object v21

    .line 964
    .restart local v21    # "result":Lcom/threatmetrix/TrustDefender/ProfilingResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->w:Lcom/threatmetrix/TrustDefender/EndNotifierBase;

    move-object/from16 v20, v0

    .line 989
    .restart local v20    # "notifier":Lcom/threatmetrix/TrustDefender/EndNotifierBase;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    iget-wide v10, v5, Lcom/threatmetrix/TrustDefender/ar;->W:J

    sub-long/2addr v6, v10

    iput-wide v6, v4, Lcom/threatmetrix/TrustDefender/ar;->X:J

    .line 990
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/ad;->h()V

    .line 991
    sget-object v4, Lcom/threatmetrix/TrustDefender/TrustDefender;->f:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/threatmetrix/TrustDefender/TrustDefender$a;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-direct {v5, v0, v1, v2}, Lcom/threatmetrix/TrustDefender/TrustDefender$a;-><init>(Lcom/threatmetrix/TrustDefender/TrustDefender;Lcom/threatmetrix/TrustDefender/ProfilingResult;Lcom/threatmetrix/TrustDefender/EndNotifierBase;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 850
    .end local v20    # "notifier":Lcom/threatmetrix/TrustDefender/EndNotifierBase;
    .end local v21    # "result":Lcom/threatmetrix/TrustDefender/ProfilingResult;
    :cond_1c
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    iget-object v5, v14, Lcom/threatmetrix/TrustDefender/m;->a:Lcom/threatmetrix/TrustDefender/aj;

    invoke-virtual {v4, v5}, Lcom/threatmetrix/TrustDefender/ar;->a(Lcom/threatmetrix/TrustDefender/aj;)V

    .line 853
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/ar;->e()Lcom/threatmetrix/TrustDefender/aj;

    move-result-object v13

    .line 854
    .local v13, "confRef":Lcom/threatmetrix/TrustDefender/aj;
    if-eqz v13, :cond_21

    .line 856
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->x:Lcom/threatmetrix/TrustDefender/ak;

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->x:Lcom/threatmetrix/TrustDefender/ak;

    iget-wide v6, v13, Lcom/threatmetrix/TrustDefender/aj;->a:J

    iget-wide v8, v13, Lcom/threatmetrix/TrustDefender/aj;->b:J

    const-string v10, "4.0-90"

    iget v11, v13, Lcom/threatmetrix/TrustDefender/aj;->g:I

    invoke-virtual/range {v5 .. v11}, Lcom/threatmetrix/TrustDefender/ak;->a(JJLjava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1e

    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->x:Lcom/threatmetrix/TrustDefender/ak;

    if-eqz v4, :cond_20

    sget-object v4, Lcom/threatmetrix/TrustDefender/TrustDefender;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "dynamic enableOptions / disableOptions ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v13, Lcom/threatmetrix/TrustDefender/aj;->a:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v13, Lcom/threatmetrix/TrustDefender/aj;->b:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") != saved: m_default values enableOptions / disableOptions / sdk_version / quietPeriod ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->x:Lcom/threatmetrix/TrustDefender/ak;

    invoke-virtual {v5}, Lcom/threatmetrix/TrustDefender/ak;->a()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->x:Lcom/threatmetrix/TrustDefender/ak;

    invoke-virtual {v5}, Lcom/threatmetrix/TrustDefender/ak;->b()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->x:Lcom/threatmetrix/TrustDefender/ak;

    invoke-virtual {v5}, Lcom/threatmetrix/TrustDefender/ak;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->x:Lcom/threatmetrix/TrustDefender/ak;

    invoke-virtual {v5}, Lcom/threatmetrix/TrustDefender/ak;->d()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    invoke-static {}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a()Lcom/threatmetrix/TrustDefender/NativeGatherer;

    move-result-object v4

    const-string v5, "enableOptions"

    iget-wide v6, v13, Lcom/threatmetrix/TrustDefender/aj;->a:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a()Lcom/threatmetrix/TrustDefender/NativeGatherer;

    move-result-object v4

    const-string v5, "disableOptions"

    iget-wide v6, v13, Lcom/threatmetrix/TrustDefender/aj;->b:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a()Lcom/threatmetrix/TrustDefender/NativeGatherer;

    move-result-object v4

    const-string v5, "sdkVersion"

    const-string v6, "4.0-90"

    invoke-virtual {v4, v5, v6}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a()Lcom/threatmetrix/TrustDefender/NativeGatherer;

    move-result-object v4

    const-string v5, "quietPeriod"

    iget v6, v13, Lcom/threatmetrix/TrustDefender/aj;->g:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/threatmetrix/TrustDefender/g$l;

    new-instance v5, Lcom/threatmetrix/TrustDefender/g;

    invoke-direct {v5}, Lcom/threatmetrix/TrustDefender/g;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->l:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->u:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v4, v5, v6, v7, v10}, Lcom/threatmetrix/TrustDefender/g$l;-><init>(Lcom/threatmetrix/TrustDefender/g;Landroid/content/Context;Ljava/lang/String;I)V

    const-string v5, "enableOptions"

    iget-wide v6, v13, Lcom/threatmetrix/TrustDefender/aj;->a:J

    invoke-virtual {v4, v5, v6, v7}, Lcom/threatmetrix/TrustDefender/g$l;->b(Ljava/lang/String;J)V

    const-string v5, "disableOptions"

    iget-wide v6, v13, Lcom/threatmetrix/TrustDefender/aj;->b:J

    invoke-virtual {v4, v5, v6, v7}, Lcom/threatmetrix/TrustDefender/g$l;->b(Ljava/lang/String;J)V

    const-string v5, "sdkVersion"

    const-string v6, "4.0-90"

    invoke-virtual {v4, v5, v6}, Lcom/threatmetrix/TrustDefender/g$l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "quietPeriod"

    iget v6, v13, Lcom/threatmetrix/TrustDefender/aj;->g:I

    invoke-virtual {v4, v5, v6}, Lcom/threatmetrix/TrustDefender/g$l;->b(Ljava/lang/String;I)V

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/g$l;->a()V

    .line 859
    :cond_1e
    iget v4, v13, Lcom/threatmetrix/TrustDefender/aj;->g:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->C:I

    .line 869
    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/ad;->a()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 870
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4

    .line 856
    :cond_20
    sget-object v4, Lcom/threatmetrix/TrustDefender/TrustDefender;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "dynamic enableOptions / disableOptions ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v13, Lcom/threatmetrix/TrustDefender/aj;->a:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v13, Lcom/threatmetrix/TrustDefender/aj;->b:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") != saved: m_default is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 863
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/ad;->a()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 865
    sget-object v4, Lcom/threatmetrix/TrustDefender/TrustDefender;->d:Ljava/lang/String;

    const-string v5, "Failed to get config, bailing out"

    invoke-static {v4, v5}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 952
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/ad;->a()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 954
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    sget-object v5, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_Interrupted_Error:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    invoke-virtual {v4, v5}, Lcom/threatmetrix/TrustDefender/ar;->a(Lcom/threatmetrix/TrustDefender/THMStatusCode;)V

    .line 956
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 963
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/threatmetrix/TrustDefender/TrustDefender;->getResult()Lcom/threatmetrix/TrustDefender/ProfilingResult;

    move-result-object v21

    .line 964
    .restart local v21    # "result":Lcom/threatmetrix/TrustDefender/ProfilingResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->w:Lcom/threatmetrix/TrustDefender/EndNotifierBase;

    move-object/from16 v20, v0

    .line 989
    .restart local v20    # "notifier":Lcom/threatmetrix/TrustDefender/EndNotifierBase;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    iget-wide v10, v5, Lcom/threatmetrix/TrustDefender/ar;->W:J

    sub-long/2addr v6, v10

    iput-wide v6, v4, Lcom/threatmetrix/TrustDefender/ar;->X:J

    .line 990
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/ad;->h()V

    .line 991
    sget-object v4, Lcom/threatmetrix/TrustDefender/TrustDefender;->f:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/threatmetrix/TrustDefender/TrustDefender$a;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-direct {v5, v0, v1, v2}, Lcom/threatmetrix/TrustDefender/TrustDefender$a;-><init>(Lcom/threatmetrix/TrustDefender/TrustDefender;Lcom/threatmetrix/TrustDefender/ProfilingResult;Lcom/threatmetrix/TrustDefender/EndNotifierBase;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 873
    .end local v20    # "notifier":Lcom/threatmetrix/TrustDefender/EndNotifierBase;
    .end local v21    # "result":Lcom/threatmetrix/TrustDefender/ProfilingResult;
    :cond_23
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/32 v6, 0x10000

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_24

    .line 875
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/ar;->e()Lcom/threatmetrix/TrustDefender/aj;

    move-result-object v4

    iget-object v4, v4, Lcom/threatmetrix/TrustDefender/aj;->f:Ljava/lang/String;

    invoke-static {v4}, Lcom/threatmetrix/TrustDefender/ai;->f(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 877
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/ar;->e()Lcom/threatmetrix/TrustDefender/aj;

    move-result-object v4

    iget-object v7, v4, Lcom/threatmetrix/TrustDefender/aj;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-static {}, Lcom/threatmetrix/TrustDefender/ar;->n()Ljava/util/Map;

    move-result-object v9

    new-instance v4, Lcom/threatmetrix/TrustDefender/o;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->c:Lcom/threatmetrix/TrustDefender/am;

    sget-object v6, Lcom/threatmetrix/TrustDefender/o$a;->b:Lcom/threatmetrix/TrustDefender/o$a;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->l:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    move-object/from16 v10, p0

    invoke-direct/range {v4 .. v12}, Lcom/threatmetrix/TrustDefender/o;-><init>(Lcom/threatmetrix/TrustDefender/am;Lcom/threatmetrix/TrustDefender/o$a;Ljava/lang/String;Lcom/threatmetrix/TrustDefender/n;Ljava/util/Map;Lcom/threatmetrix/TrustDefender/TrustDefender;Landroid/content/Context;Lcom/threatmetrix/TrustDefender/e;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/threatmetrix/TrustDefender/TrustDefender;->a(Ljava/lang/Runnable;)Lcom/threatmetrix/TrustDefender/y;

    .line 881
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_25

    .line 883
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/ar;->o()Ljava/lang/String;

    move-result-object v17

    .line 885
    .local v17, "fqdn":Ljava/lang/String;
    if-eqz v17, :cond_25

    .line 887
    new-instance v4, Lcom/threatmetrix/TrustDefender/i;

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Lcom/threatmetrix/TrustDefender/i;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/threatmetrix/TrustDefender/TrustDefender;->a(Ljava/lang/Runnable;)Lcom/threatmetrix/TrustDefender/y;

    .line 890
    .end local v17    # "fqdn":Ljava/lang/String;
    :cond_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, 0x40

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_26

    .line 895
    new-instance v4, Lcom/threatmetrix/TrustDefender/af;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-virtual {v5}, Lcom/threatmetrix/TrustDefender/ar;->f()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-virtual {v6}, Lcom/threatmetrix/TrustDefender/ar;->g()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-virtual {v7}, Lcom/threatmetrix/TrustDefender/ar;->c()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-virtual {v10}, Lcom/threatmetrix/TrustDefender/ar;->e()Lcom/threatmetrix/TrustDefender/aj;

    move-result-object v10

    iget-object v8, v10, Lcom/threatmetrix/TrustDefender/aj;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->p:I

    invoke-direct/range {v4 .. v9}, Lcom/threatmetrix/TrustDefender/af;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/threatmetrix/TrustDefender/TrustDefender;->a(Ljava/lang/Runnable;)Lcom/threatmetrix/TrustDefender/y;

    .line 898
    :cond_26
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$f;->b()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 900
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->L:Lcom/threatmetrix/TrustDefender/ap;

    invoke-virtual {v5}, Lcom/threatmetrix/TrustDefender/ap;->c()Landroid/location/Location;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->L:Lcom/threatmetrix/TrustDefender/ap;

    invoke-virtual {v6}, Lcom/threatmetrix/TrustDefender/ap;->d()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/threatmetrix/TrustDefender/ar;->a(Landroid/location/Location;Z)V

    .line 903
    :cond_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/ar;->q()Lcom/threatmetrix/TrustDefender/n;

    move-result-object v8

    .line 904
    .local v8, "postParams":Lcom/threatmetrix/TrustDefender/n;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/ar;->p()Ljava/util/Map;

    move-result-object v9

    .line 906
    .local v9, "extra_headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Lcom/threatmetrix/TrustDefender/o;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->c:Lcom/threatmetrix/TrustDefender/am;

    sget-object v6, Lcom/threatmetrix/TrustDefender/o$a;->d:Lcom/threatmetrix/TrustDefender/o$a;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "https://"

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-virtual {v10}, Lcom/threatmetrix/TrustDefender/ar;->f()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "/fp/clear.png"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->l:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    move-object/from16 v10, p0

    invoke-direct/range {v4 .. v12}, Lcom/threatmetrix/TrustDefender/o;-><init>(Lcom/threatmetrix/TrustDefender/am;Lcom/threatmetrix/TrustDefender/o$a;Ljava/lang/String;Lcom/threatmetrix/TrustDefender/n;Ljava/util/Map;Lcom/threatmetrix/TrustDefender/TrustDefender;Landroid/content/Context;Lcom/threatmetrix/TrustDefender/e;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/threatmetrix/TrustDefender/TrustDefender;->a(Ljava/lang/Runnable;)Lcom/threatmetrix/TrustDefender/y;

    .line 910
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/threatmetrix/TrustDefender/TrustDefender;->a(Z)Lcom/threatmetrix/TrustDefender/THMStatusCode;

    move-result-object v24

    .line 913
    .local v24, "status":Lcom/threatmetrix/TrustDefender/THMStatusCode;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/threatmetrix/TrustDefender/ar;->a(Lcom/threatmetrix/TrustDefender/THMStatusCode;)V

    .line 914
    sget-object v4, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_OK:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    move-object/from16 v0, v24

    if-eq v0, v4, :cond_29

    .line 916
    sget-object v4, Lcom/threatmetrix/TrustDefender/TrustDefender;->d:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Received "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Lcom/threatmetrix/TrustDefender/THMStatusCode;->getDesc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " error, profiling will be incomplete"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/threatmetrix/TrustDefender/w;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    sget-object v5, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_PartialProfile:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    invoke-virtual {v4, v5}, Lcom/threatmetrix/TrustDefender/ar;->a(Lcom/threatmetrix/TrustDefender/THMStatusCode;)V

    .line 924
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/threatmetrix/TrustDefender/TrustDefender;->e()V

    .line 926
    sget-object v4, Lcom/threatmetrix/TrustDefender/TrustDefender;->d:Ljava/lang/String;

    const-string v5, "profile request complete"

    invoke-static {v4, v5}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 927
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/ad;->a()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 954
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    sget-object v5, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_Interrupted_Error:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    invoke-virtual {v4, v5}, Lcom/threatmetrix/TrustDefender/ar;->a(Lcom/threatmetrix/TrustDefender/THMStatusCode;)V

    .line 956
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 963
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/threatmetrix/TrustDefender/TrustDefender;->getResult()Lcom/threatmetrix/TrustDefender/ProfilingResult;

    move-result-object v21

    .line 964
    .restart local v21    # "result":Lcom/threatmetrix/TrustDefender/ProfilingResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->w:Lcom/threatmetrix/TrustDefender/EndNotifierBase;

    move-object/from16 v20, v0

    .line 989
    .restart local v20    # "notifier":Lcom/threatmetrix/TrustDefender/EndNotifierBase;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    iget-wide v10, v5, Lcom/threatmetrix/TrustDefender/ar;->W:J

    sub-long/2addr v6, v10

    iput-wide v6, v4, Lcom/threatmetrix/TrustDefender/ar;->X:J

    .line 990
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefender/ad;->h()V

    .line 991
    sget-object v4, Lcom/threatmetrix/TrustDefender/TrustDefender;->f:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/threatmetrix/TrustDefender/TrustDefender$a;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-direct {v5, v0, v1, v2}, Lcom/threatmetrix/TrustDefender/TrustDefender$a;-><init>(Lcom/threatmetrix/TrustDefender/TrustDefender;Lcom/threatmetrix/TrustDefender/ProfilingResult;Lcom/threatmetrix/TrustDefender/EndNotifierBase;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 921
    .end local v20    # "notifier":Lcom/threatmetrix/TrustDefender/EndNotifierBase;
    .end local v21    # "result":Lcom/threatmetrix/TrustDefender/ProfilingResult;
    :cond_29
    :try_start_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->B:J
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_8

    .line 938
    .end local v8    # "postParams":Lcom/threatmetrix/TrustDefender/n;
    .end local v9    # "extra_headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "confRef":Lcom/threatmetrix/TrustDefender/aj;
    .end local v14    # "configRunner":Lcom/threatmetrix/TrustDefender/m;
    .end local v15    # "configStatus":Lcom/threatmetrix/TrustDefender/THMStatusCode;
    .end local v18    # "initInProgress":Z
    .end local v19    # "needToWaitForBrowser":Z
    .end local v22    # "scanInProgress":Z
    .end local v23    # "shouldWaitForScan":Z
    .end local v24    # "status":Lcom/threatmetrix/TrustDefender/THMStatusCode;
    .end local v26    # "waitedForScan":Z
    .local v16, "e":Ljava/lang/InterruptedException;
    :cond_2a
    :try_start_b
    sget-object v4, Lcom/threatmetrix/TrustDefender/TrustDefender;->d:Ljava/lang/String;

    const-string v5, "profile request interrupted due to cancel"

    invoke-static {v4, v5}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_1
.end method

.method final a(Lcom/threatmetrix/TrustDefender/THMStatusCode;)V
    .locals 1
    .param p1, "status"    # Lcom/threatmetrix/TrustDefender/THMStatusCode;

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-virtual {v0, p1}, Lcom/threatmetrix/TrustDefender/ar;->a(Lcom/threatmetrix/TrustDefender/THMStatusCode;)V

    .line 1109
    return-void
.end method

.method final a(IZZLcom/threatmetrix/TrustDefender/TrustDefender$c;)Z
    .locals 10
    .param p1, "timeout"    # I
    .param p2, "checkProfiling"    # Z
    .param p3, "checkInit"    # Z
    .param p4, "source"    # Lcom/threatmetrix/TrustDefender/TrustDefender$c;

    .prologue
    .line 627
    sget-object v1, Lcom/threatmetrix/TrustDefender/TrustDefender;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doPackageScan("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): marking scan as started"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefender/ad;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-nez p3, :cond_2

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefender/ad;->b()Z

    move-result v1

    if-nez v1, :cond_2

    .line 631
    :cond_1
    sget-object v1, Lcom/threatmetrix/TrustDefender/TrustDefender;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doPackageScan("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): aborted! not inited"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const/4 v1, 0x0

    .line 691
    :goto_0
    return v1

    .line 638
    :cond_2
    sget-object v1, Lcom/threatmetrix/TrustDefender/TrustDefender$c;->a:Lcom/threatmetrix/TrustDefender/TrustDefender$c;

    if-eq p4, v1, :cond_3

    sget-object v1, Lcom/threatmetrix/TrustDefender/TrustDefender$c;->c:Lcom/threatmetrix/TrustDefender/TrustDefender$c;

    if-ne p4, v1, :cond_5

    .line 641
    :cond_3
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v8, 0x4000

    and-long v4, v2, v8

    .line 642
    .local v4, "allowedScanOptions":J
    sget-object v1, Lcom/threatmetrix/TrustDefender/TrustDefender$c;->c:Lcom/threatmetrix/TrustDefender/TrustDefender$c;

    if-ne p4, v1, :cond_4

    iget v6, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->m:I

    .line 650
    .local v6, "package_limit":I
    :goto_1
    const-wide/16 v2, 0x7000

    and-long/2addr v2, v4

    const-wide/16 v8, 0x0

    cmp-long v1, v2, v8

    if-eqz v1, :cond_8

    .line 653
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v1, p2}, Lcom/threatmetrix/TrustDefender/ad;->b(Z)Z

    move-result v1

    if-nez v1, :cond_7

    .line 655
    sget-object v2, Lcom/threatmetrix/TrustDefender/TrustDefender;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "Scan "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_6

    const-string v1, "or profile"

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " already in progress or cancel requested, aborting"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/threatmetrix/TrustDefender/w;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const/4 v1, 0x0

    goto :goto_0

    .line 642
    .end local v6    # "package_limit":I
    :cond_4
    iget v6, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->r:I

    goto :goto_1

    .line 646
    .end local v4    # "allowedScanOptions":J
    :cond_5
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    .line 647
    .restart local v4    # "allowedScanOptions":J
    const/4 v6, 0x0

    .restart local v6    # "package_limit":I
    goto :goto_1

    .line 655
    :cond_6
    const-string v1, ""

    goto :goto_2

    .line 659
    :cond_7
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/threatmetrix/TrustDefender/TrustDefender$2;

    move-object v2, p0

    move-object v3, p0

    move v7, p1

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/threatmetrix/TrustDefender/TrustDefender$2;-><init>(Lcom/threatmetrix/TrustDefender/TrustDefender;Lcom/threatmetrix/TrustDefender/TrustDefender;JIILcom/threatmetrix/TrustDefender/TrustDefender$c;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 689
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 691
    .end local v0    # "t":Ljava/lang/Thread;
    :cond_8
    const/4 v1, 0x1

    goto :goto_0
.end method

.method final b()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 1005
    invoke-static {}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a()Lcom/threatmetrix/TrustDefender/NativeGatherer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1007
    new-instance v3, Lcom/threatmetrix/TrustDefender/ak;

    invoke-direct {v3}, Lcom/threatmetrix/TrustDefender/ak;-><init>()V

    iput-object v3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->x:Lcom/threatmetrix/TrustDefender/ak;

    .line 1011
    :try_start_0
    invoke-static {}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a()Lcom/threatmetrix/TrustDefender/NativeGatherer;

    move-result-object v3

    const-string v4, "enableOptions"

    invoke-virtual {v3, v4}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1012
    .local v2, "temp":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1014
    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->x:Lcom/threatmetrix/TrustDefender/ak;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/threatmetrix/TrustDefender/ak;->a(J)V

    .line 1016
    :cond_0
    invoke-static {}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a()Lcom/threatmetrix/TrustDefender/NativeGatherer;

    move-result-object v3

    const-string v4, "disableOptions"

    invoke-virtual {v3, v4}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1017
    if-eqz v2, :cond_1

    .line 1019
    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->x:Lcom/threatmetrix/TrustDefender/ak;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/threatmetrix/TrustDefender/ak;->b(J)V

    .line 1021
    :cond_1
    invoke-static {}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a()Lcom/threatmetrix/TrustDefender/NativeGatherer;

    move-result-object v3

    const-string v4, "quietPeriod"

    invoke-virtual {v3, v4}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1022
    if-eqz v2, :cond_2

    .line 1024
    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->x:Lcom/threatmetrix/TrustDefender/ak;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/threatmetrix/TrustDefender/ak;->a(I)V

    .line 1026
    :cond_2
    invoke-static {}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a()Lcom/threatmetrix/TrustDefender/NativeGatherer;

    move-result-object v3

    const-string v4, "sdkVersion"

    invoke-virtual {v3, v4}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1027
    if-eqz v2, :cond_7

    .line 1029
    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->x:Lcom/threatmetrix/TrustDefender/ak;

    invoke-virtual {v3, v2}, Lcom/threatmetrix/TrustDefender/ak;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1050
    .end local v2    # "temp":Ljava/lang/String;
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->x:Lcom/threatmetrix/TrustDefender/ak;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->x:Lcom/threatmetrix/TrustDefender/ak;

    invoke-virtual {v3}, Lcom/threatmetrix/TrustDefender/ak;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "4.0-90"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1052
    :cond_4
    new-instance v1, Lcom/threatmetrix/TrustDefender/g$l;

    new-instance v3, Lcom/threatmetrix/TrustDefender/g;

    invoke-direct {v3}, Lcom/threatmetrix/TrustDefender/g;-><init>()V

    iget-object v4, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->l:Landroid/content/Context;

    iget-object v5, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->u:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/threatmetrix/TrustDefender/g$l;-><init>(Lcom/threatmetrix/TrustDefender/g;Landroid/content/Context;Ljava/lang/String;I)V

    .line 1055
    .local v1, "settings":Lcom/threatmetrix/TrustDefender/g$l;
    :try_start_1
    new-instance v3, Lcom/threatmetrix/TrustDefender/ak;

    invoke-direct {v3}, Lcom/threatmetrix/TrustDefender/ak;-><init>()V

    iput-object v3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->x:Lcom/threatmetrix/TrustDefender/ak;

    .line 1057
    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->x:Lcom/threatmetrix/TrustDefender/ak;

    const-string v4, "enableOptions"

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v4, v6, v7}, Lcom/threatmetrix/TrustDefender/g$l;->a(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/threatmetrix/TrustDefender/ak;->a(J)V

    .line 1058
    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->x:Lcom/threatmetrix/TrustDefender/ak;

    const-string v4, "disableOptions"

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v4, v6, v7}, Lcom/threatmetrix/TrustDefender/g$l;->a(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/threatmetrix/TrustDefender/ak;->b(J)V

    .line 1059
    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->x:Lcom/threatmetrix/TrustDefender/ak;

    const-string v4, "sdkVersion"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Lcom/threatmetrix/TrustDefender/g$l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/threatmetrix/TrustDefender/ak;->a(Ljava/lang/String;)V

    .line 1060
    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->x:Lcom/threatmetrix/TrustDefender/ak;

    const-string v4, "quietPeriod"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/threatmetrix/TrustDefender/g$l;->a(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/threatmetrix/TrustDefender/ak;->a(I)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1069
    .end local v1    # "settings":Lcom/threatmetrix/TrustDefender/g$l;
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->x:Lcom/threatmetrix/TrustDefender/ak;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->x:Lcom/threatmetrix/TrustDefender/ak;

    invoke-virtual {v3}, Lcom/threatmetrix/TrustDefender/ak;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "4.0-90"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1071
    iput-object v8, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->x:Lcom/threatmetrix/TrustDefender/ak;

    .line 1073
    :cond_6
    return-void

    .line 1033
    .restart local v2    # "temp":Ljava/lang/String;
    :cond_7
    const/4 v3, 0x0

    :try_start_2
    iput-object v3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->x:Lcom/threatmetrix/TrustDefender/ak;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1036
    .end local v2    # "temp":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1038
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v3, Lcom/threatmetrix/TrustDefender/TrustDefender;->d:Ljava/lang/String;

    const-string v4, "Options/ quietPeriod are not a number"

    invoke-static {v3, v4, v0}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1039
    iput-object v8, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->x:Lcom/threatmetrix/TrustDefender/ak;

    goto :goto_0

    .line 1041
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 1044
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v3, Lcom/threatmetrix/TrustDefender/TrustDefender;->d:Ljava/lang/String;

    const-string v4, "Interrupted"

    invoke-static {v3, v4, v0}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1045
    iput-object v8, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->x:Lcom/threatmetrix/TrustDefender/ak;

    goto/16 :goto_0

    .line 1062
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "settings":Lcom/threatmetrix/TrustDefender/g$l;
    :catch_2
    move-exception v0

    .line 1064
    .local v0, "e":Ljava/lang/ClassCastException;
    sget-object v3, Lcom/threatmetrix/TrustDefender/TrustDefender;->d:Ljava/lang/String;

    const-string v4, "Found preference of different type"

    invoke-static {v3, v4, v0}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1065
    iput-object v8, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->x:Lcom/threatmetrix/TrustDefender/ak;

    goto :goto_1
.end method

.method public doPackageScan(I)Z
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    const/4 v1, 0x1

    .line 529
    sget-object v0, Lcom/threatmetrix/TrustDefender/TrustDefender$c;->b:Lcom/threatmetrix/TrustDefender/TrustDefender$c;

    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/threatmetrix/TrustDefender/TrustDefender;->a(IZZLcom/threatmetrix/TrustDefender/TrustDefender$c;)Z

    move-result v0

    return v0
.end method

.method public doProfileRequest(Lcom/threatmetrix/TrustDefender/ProfilingOptions;)Lcom/threatmetrix/TrustDefender/THMStatusCode;
    .locals 10
    .param p1, "options"    # Lcom/threatmetrix/TrustDefender/ProfilingOptions;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 389
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefender/ad;->b()Z

    move-result v2

    if-nez v2, :cond_0

    .line 391
    sget-object v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_Internal_Error:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    invoke-virtual {p0, v0}, Lcom/threatmetrix/TrustDefender/TrustDefender;->a(Lcom/threatmetrix/TrustDefender/THMStatusCode;)V

    .line 392
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefender/ar;->d()Lcom/threatmetrix/TrustDefender/THMStatusCode;

    move-result-object v0

    .line 516
    :goto_0
    return-object v0

    .line 399
    :cond_0
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefender/ad;->g()Z

    move-result v2

    if-nez v2, :cond_1

    .line 401
    sget-object v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_NotYet:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    invoke-virtual {p0, v0}, Lcom/threatmetrix/TrustDefender/TrustDefender;->a(Lcom/threatmetrix/TrustDefender/THMStatusCode;)V

    .line 402
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefender/ar;->d()Lcom/threatmetrix/TrustDefender/THMStatusCode;

    move-result-object v0

    goto :goto_0

    .line 405
    :cond_1
    iget-boolean v2, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->z:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/threatmetrix/TrustDefender/TrustDefender;->f()Z

    move-result v2

    if-nez v2, :cond_3

    .line 407
    :cond_2
    sget-object v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_Blocked:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    invoke-virtual {p0, v0}, Lcom/threatmetrix/TrustDefender/TrustDefender;->a(Lcom/threatmetrix/TrustDefender/THMStatusCode;)V

    .line 408
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefender/ad;->h()V

    .line 409
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefender/ar;->d()Lcom/threatmetrix/TrustDefender/THMStatusCode;

    move-result-object v0

    goto :goto_0

    .line 412
    :cond_3
    iget-wide v2, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->B:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->C:I

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    :cond_5
    :goto_1
    if-eqz v0, :cond_7

    .line 414
    sget-object v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_In_Quiet_Period:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    invoke-virtual {p0, v0}, Lcom/threatmetrix/TrustDefender/TrustDefender;->a(Lcom/threatmetrix/TrustDefender/THMStatusCode;)V

    .line 415
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefender/ad;->h()V

    .line 416
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefender/ar;->d()Lcom/threatmetrix/TrustDefender/THMStatusCode;

    move-result-object v0

    goto :goto_0

    .line 412
    :cond_6
    iget-wide v2, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->B:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget v5, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->C:I

    int-to-long v6, v5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_5

    move v0, v1

    goto :goto_1

    .line 419
    :cond_7
    invoke-virtual {p1}, Lcom/threatmetrix/TrustDefender/ProfilingOptions;->d()Lcom/threatmetrix/TrustDefender/EndNotifierBase;

    move-result-object v0

    if-nez v0, :cond_8

    .line 421
    sget-object v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_EndNotifier_NotFound:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    invoke-virtual {p0, v0}, Lcom/threatmetrix/TrustDefender/TrustDefender;->a(Lcom/threatmetrix/TrustDefender/THMStatusCode;)V

    .line 422
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefender/ad;->h()V

    .line 423
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefender/ar;->d()Lcom/threatmetrix/TrustDefender/THMStatusCode;

    move-result-object v0

    goto :goto_0

    .line 427
    :cond_8
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    sget-object v1, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_NotYet:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    invoke-virtual {v0, v1}, Lcom/threatmetrix/TrustDefender/ar;->a(Lcom/threatmetrix/TrustDefender/THMStatusCode;)V

    .line 429
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/threatmetrix/TrustDefender/ar;->W:J

    .line 430
    invoke-static {}, Lcom/threatmetrix/TrustDefender/w;->b()I

    .line 434
    :try_start_0
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->K:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lockInterruptibly()V

    .line 436
    sget-object v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "starting profile request using - 4.0-90 options "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " timeout "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms fp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefender/ar;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " java.vm.version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "java.vm.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    invoke-direct {p0}, Lcom/threatmetrix/TrustDefender/TrustDefender;->d()V

    .line 453
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v0, v1}, Lcom/threatmetrix/TrustDefender/ar;->a(Lcom/threatmetrix/TrustDefender/e;)V

    .line 456
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 458
    sget-object v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->d:Ljava/lang/String;

    const-string v1, "outstanding requests... interrupting"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/threatmetrix/TrustDefender/TrustDefender;->b(Z)V

    .line 462
    :cond_9
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 464
    invoke-virtual {p1}, Lcom/threatmetrix/TrustDefender/ProfilingOptions;->d()Lcom/threatmetrix/TrustDefender/EndNotifierBase;

    move-result-object v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->w:Lcom/threatmetrix/TrustDefender/EndNotifierBase;

    .line 466
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->D:Lcom/threatmetrix/TrustDefender/k;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->E:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/32 v2, 0x20000

    and-long/2addr v0, v2

    cmp-long v0, v0, v8

    if-eqz v0, :cond_a

    .line 473
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->D:Lcom/threatmetrix/TrustDefender/k;

    iget v2, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->p:I

    div-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Lcom/threatmetrix/TrustDefender/k;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/threatmetrix/TrustDefender/ar;->I:Ljava/lang/String;

    .line 477
    :cond_a
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-virtual {p1}, Lcom/threatmetrix/TrustDefender/ProfilingOptions;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/threatmetrix/TrustDefender/ar;->a(Ljava/util/List;)V

    .line 478
    invoke-virtual {p1}, Lcom/threatmetrix/TrustDefender/ProfilingOptions;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/ai;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 480
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-virtual {p1}, Lcom/threatmetrix/TrustDefender/ProfilingOptions;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/threatmetrix/TrustDefender/ar;->b(Ljava/lang/String;)V

    .line 487
    :goto_2
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$f;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 490
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->L:Lcom/threatmetrix/TrustDefender/ap;

    invoke-virtual {p1}, Lcom/threatmetrix/TrustDefender/ProfilingOptions;->c()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/threatmetrix/TrustDefender/ap;->a(Landroid/location/Location;)V

    .line 494
    :cond_b
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/threatmetrix/TrustDefender/h;

    invoke-direct {v1, p0}, Lcom/threatmetrix/TrustDefender/h;-><init>(Lcom/threatmetrix/TrustDefender/TrustDefender;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->v:Ljava/lang/Thread;

    .line 495
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->v:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 504
    sget-object v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_OK:Lcom/threatmetrix/TrustDefender/THMStatusCode;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->K:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 484
    :cond_c
    :try_start_1
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-static {}, Lcom/threatmetrix/TrustDefender/ai;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/threatmetrix/TrustDefender/ar;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 508
    :catch_0
    move-exception v0

    :try_start_2
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->v:Ljava/lang/Thread;

    if-eqz v0, :cond_d

    .line 509
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->v:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 510
    :cond_d
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefender/ad;->h()V

    .line 511
    sget-object v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_Interrupted_Error:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    invoke-virtual {p0, v0}, Lcom/threatmetrix/TrustDefender/TrustDefender;->a(Lcom/threatmetrix/TrustDefender/THMStatusCode;)V

    .line 512
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefender/ar;->d()Lcom/threatmetrix/TrustDefender/THMStatusCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 516
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->K:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->K:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public doProfileRequest(Ljava/lang/String;Lcom/threatmetrix/TrustDefender/EndNotifier;)Lcom/threatmetrix/TrustDefender/THMStatusCode;
    .locals 1
    .param p1, "sessionID"    # Ljava/lang/String;
    .param p2, "endNotifier"    # Lcom/threatmetrix/TrustDefender/EndNotifier;

    .prologue
    .line 383
    new-instance v0, Lcom/threatmetrix/TrustDefender/ProfilingOptions;

    invoke-direct {v0}, Lcom/threatmetrix/TrustDefender/ProfilingOptions;-><init>()V

    invoke-virtual {v0, p1}, Lcom/threatmetrix/TrustDefender/ProfilingOptions;->setSessionID(Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/ProfilingOptions;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/threatmetrix/TrustDefender/ProfilingOptions;->setEndNotifier(Lcom/threatmetrix/TrustDefender/EndNotifierBase;)Lcom/threatmetrix/TrustDefender/ProfilingOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/threatmetrix/TrustDefender/TrustDefender;->doProfileRequest(Lcom/threatmetrix/TrustDefender/ProfilingOptions;)Lcom/threatmetrix/TrustDefender/THMStatusCode;

    move-result-object v0

    return-object v0
.end method

.method public getResult()Lcom/threatmetrix/TrustDefender/ProfilingResult;
    .locals 3

    .prologue
    .line 523
    new-instance v0, Lcom/threatmetrix/TrustDefender/ProfilingResult;

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefender/ar;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefender/ar;->d()Lcom/threatmetrix/TrustDefender/THMStatusCode;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/ProfilingResult;-><init>(Ljava/lang/String;Lcom/threatmetrix/TrustDefender/THMStatusCode;)V

    return-object v0
.end method

.method public init(Lcom/threatmetrix/TrustDefender/Config;)Lcom/threatmetrix/TrustDefender/THMStatusCode;
    .locals 12
    .param p1, "config"    # Lcom/threatmetrix/TrustDefender/Config;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 168
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefender/ad;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    sget-object v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->d:Ljava/lang/String;

    const-string v1, "Already init\'d"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    sget-object v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_Already_Initialised:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    .line 371
    :goto_0
    return-object v0

    .line 174
    :cond_0
    invoke-virtual {p1}, Lcom/threatmetrix/TrustDefender/Config;->j()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v0, v11}, Lcom/threatmetrix/TrustDefender/ad;->a(Z)V

    .line 177
    sget-object v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_Invalid_Context:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    invoke-virtual {p0, v0}, Lcom/threatmetrix/TrustDefender/TrustDefender;->a(Lcom/threatmetrix/TrustDefender/THMStatusCode;)V

    .line 178
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefender/ar;->d()Lcom/threatmetrix/TrustDefender/THMStatusCode;

    move-result-object v0

    goto :goto_0

    .line 183
    :cond_1
    sget-boolean v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->j:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->i:Z

    if-eqz v0, :cond_3

    :cond_2
    sget-boolean v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->k:Z

    if-nez v0, :cond_4

    .line 185
    :cond_3
    sget-object v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->d:Ljava/lang/String;

    const-string v1, "OkHttp library not available, please include the library. For information about how to include the library see http://square.github.io/okhttp/"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v0, v11}, Lcom/threatmetrix/TrustDefender/ad;->a(Z)V

    .line 189
    sget-object v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_ThirdPartyLibrary_Not_Found:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    invoke-virtual {p0, v0}, Lcom/threatmetrix/TrustDefender/TrustDefender;->a(Lcom/threatmetrix/TrustDefender/THMStatusCode;)V

    .line 190
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefender/ar;->d()Lcom/threatmetrix/TrustDefender/THMStatusCode;

    move-result-object v0

    goto :goto_0

    .line 193
    :cond_4
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-virtual {p1}, Lcom/threatmetrix/TrustDefender/Config;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/threatmetrix/TrustDefender/ar;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 195
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v0, v11}, Lcom/threatmetrix/TrustDefender/ad;->a(Z)V

    .line 196
    sget-object v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_Invalid_OrgID:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    invoke-virtual {p0, v0}, Lcom/threatmetrix/TrustDefender/TrustDefender;->a(Lcom/threatmetrix/TrustDefender/THMStatusCode;)V

    .line 197
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefender/ar;->d()Lcom/threatmetrix/TrustDefender/THMStatusCode;

    move-result-object v0

    goto :goto_0

    .line 200
    :cond_5
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-virtual {p1}, Lcom/threatmetrix/TrustDefender/Config;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/threatmetrix/TrustDefender/ar;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 202
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->b:Lcom/threatmetrix/TrustDefender/ad;

    invoke-virtual {v0, v11}, Lcom/threatmetrix/TrustDefender/ad;->a(Z)V

    .line 203
    sget-object v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_Invalid_FP_Server:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    invoke-virtual {p0, v0}, Lcom/threatmetrix/TrustDefender/TrustDefender;->a(Lcom/threatmetrix/TrustDefender/THMStatusCode;)V

    .line 204
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefender/ar;->d()Lcom/threatmetrix/TrustDefender/THMStatusCode;

    move-result-object v0

    goto :goto_0

    .line 207
    :cond_6
    sget-object v0, Lcom/threatmetrix/TrustDefender/TrustDefender;->d:Ljava/lang/String;

    const-string v1, "Starting init()"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-direct {p0}, Lcom/threatmetrix/TrustDefender/TrustDefender;->d()V

    .line 212
    iput-boolean v10, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->A:Z

    .line 213
    iput-boolean v10, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->z:Z

    .line 215
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefender/ar;->k()V

    .line 217
    invoke-virtual {p1}, Lcom/threatmetrix/TrustDefender/Config;->j()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->l:Landroid/content/Context;

    .line 218
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->l:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/threatmetrix/TrustDefender/ar;->a(Landroid/content/Context;)V

    .line 220
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Lcom/threatmetrix/TrustDefender/Config;->i()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 221
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/threatmetrix/TrustDefender/ar;->a(J)V

    .line 223
    invoke-virtual {p1}, Lcom/threatmetrix/TrustDefender/Config;->c()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->p:I

    .line 224
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-virtual {p1}, Lcom/threatmetrix/TrustDefender/Config;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/threatmetrix/TrustDefender/ar;->a(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->F:Ljava/util/Timer;

    if-eqz v0, :cond_7

    .line 228
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->F:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 234
    :cond_7
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->y:Lcom/threatmetrix/TrustDefender/d;

    if-eqz v0, :cond_8

    .line 236
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->y:Lcom/threatmetrix/TrustDefender/d;

    invoke-virtual {v0, v11}, Lcom/threatmetrix/TrustDefender/d;->a(Z)V

    .line 238
    :cond_8
    invoke-static {}, Lcom/threatmetrix/TrustDefender/ag;->b()V

    .line 240
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->L:Lcom/threatmetrix/TrustDefender/ap;

    invoke-virtual {p1}, Lcom/threatmetrix/TrustDefender/Config;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/threatmetrix/TrustDefender/ap;->a(Z)V

    .line 241
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->L:Lcom/threatmetrix/TrustDefender/ap;

    invoke-virtual {p1}, Lcom/threatmetrix/TrustDefender/Config;->q()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/threatmetrix/TrustDefender/ap;->b(Z)V

    .line 242
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->L:Lcom/threatmetrix/TrustDefender/ap;

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->l:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/threatmetrix/TrustDefender/Config;->f()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/threatmetrix/TrustDefender/Config;->g()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/threatmetrix/TrustDefender/Config;->h()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/threatmetrix/TrustDefender/ap;->a(Landroid/content/Context;JJI)V

    .line 245
    invoke-virtual {p1}, Lcom/threatmetrix/TrustDefender/Config;->k()I

    move-result v0

    iput v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->r:I

    .line 246
    invoke-virtual {p1}, Lcom/threatmetrix/TrustDefender/Config;->l()I

    move-result v0

    iput v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->q:I

    .line 247
    invoke-virtual {p1}, Lcom/threatmetrix/TrustDefender/Config;->n()I

    move-result v0

    iput v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->n:I

    .line 248
    invoke-virtual {p1}, Lcom/threatmetrix/TrustDefender/Config;->m()I

    move-result v0

    iput v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->m:I

    .line 249
    invoke-virtual {p1}, Lcom/threatmetrix/TrustDefender/Config;->o()Z

    move-result v0

    iput-boolean v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->t:Z

    .line 250
    invoke-virtual {p1}, Lcom/threatmetrix/TrustDefender/Config;->a()Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v10

    :goto_1
    iput-boolean v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->s:Z

    .line 252
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->l:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 254
    .local v8, "packageName":Ljava/lang/String;
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefender/ar;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->u:Ljava/lang/String;

    if-nez v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "TDM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->u:Ljava/lang/String;

    .line 255
    :cond_9
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->a:Lcom/threatmetrix/TrustDefender/ar;

    invoke-virtual {v0, v8}, Lcom/threatmetrix/TrustDefender/ar;->e(Ljava/lang/String;)Z

    .line 257
    invoke-virtual {p1}, Lcom/threatmetrix/TrustDefender/Config;->r()I

    move-result v0

    iput v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->G:I

    .line 258
    iget v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->G:I

    if-lez v0, :cond_a

    .line 261
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 262
    .local v7, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->l:Landroid/content/Context;

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->N:Lcom/threatmetrix/TrustDefender/TrustDefender$d;

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 273
    .end local v7    # "filter":Landroid/content/IntentFilter;
    :cond_a
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/32 v2, 0x20000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    .line 275
    new-instance v0, Lcom/threatmetrix/TrustDefender/k;

    invoke-direct {v0}, Lcom/threatmetrix/TrustDefender/k;-><init>()V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->D:Lcom/threatmetrix/TrustDefender/k;

    .line 276
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->D:Lcom/threatmetrix/TrustDefender/k;

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->l:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/threatmetrix/TrustDefender/k;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->E:Z

    .line 279
    :cond_b
    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcom/threatmetrix/TrustDefender/TrustDefender$1;

    invoke-direct {v0, p0, p0, p1}, Lcom/threatmetrix/TrustDefender/TrustDefender$1;-><init>(Lcom/threatmetrix/TrustDefender/TrustDefender;Lcom/threatmetrix/TrustDefender/TrustDefender;Lcom/threatmetrix/TrustDefender/Config;)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 370
    .local v9, "t":Ljava/lang/Thread;
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 371
    sget-object v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_OK:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    goto/16 :goto_0

    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "t":Ljava/lang/Thread;
    :cond_c
    move v0, v11

    .line 250
    goto/16 :goto_1
.end method

.method public pauseLocationServices(Z)V
    .locals 1
    .param p1, "pause"    # Z

    .prologue
    .line 535
    if-eqz p1, :cond_0

    .line 537
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->L:Lcom/threatmetrix/TrustDefender/ap;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefender/ap;->a()V

    .line 543
    :goto_0
    return-void

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender;->L:Lcom/threatmetrix/TrustDefender/ap;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefender/ap;->b()V

    goto :goto_0
.end method
