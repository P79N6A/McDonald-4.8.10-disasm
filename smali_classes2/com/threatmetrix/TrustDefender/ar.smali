.class Lcom/threatmetrix/TrustDefender/ar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# static fields
.field private static final Y:Ljava/lang/String;

.field public static a:Ljava/lang/String;


# instance fields
.field A:Ljava/lang/String;

.field B:Ljava/lang/String;

.field C:Ljava/lang/String;

.field D:Ljava/lang/String;

.field E:Ljava/lang/String;

.field F:Ljava/lang/String;

.field G:Ljava/lang/String;

.field H:Ljava/lang/String;

.field I:Ljava/lang/String;

.field J:Ljava/lang/String;

.field K:[Ljava/lang/String;

.field L:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field M:Lcom/threatmetrix/TrustDefender/aj;

.field N:Landroid/location/Location;

.field O:Landroid/content/Context;

.field P:Lcom/threatmetrix/TrustDefender/e;

.field Q:Lcom/threatmetrix/TrustDefender/c;

.field R:Lcom/threatmetrix/TrustDefender/x;

.field S:J

.field T:I

.field U:J

.field volatile V:Lcom/threatmetrix/TrustDefender/THMStatusCode;

.field volatile W:J

.field volatile X:J

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:Ljava/util/concurrent/atomic/AtomicLong;

.field i:J

.field j:J

.field k:J

.field l:Z

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:Ljava/lang/String;

.field r:Ljava/lang/String;

.field s:Ljava/lang/String;

.field t:Ljava/lang/String;

.field u:Ljava/lang/String;

.field v:Ljava/lang/String;

.field w:Ljava/lang/String;

.field x:Ljava/lang/String;

.field y:Ljava/lang/String;

.field z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/threatmetrix/TrustDefender/ar;

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/ar;->Y:Ljava/lang/String;

    .line 45
    const-string v0, "4.0-90"

    sput-object v0, Lcom/threatmetrix/TrustDefender/ar;->a:Ljava/lang/String;

    .line 46
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v2, p0, Lcom/threatmetrix/TrustDefender/ar;->b:I

    .line 51
    iput v2, p0, Lcom/threatmetrix/TrustDefender/ar;->c:I

    .line 52
    iput v2, p0, Lcom/threatmetrix/TrustDefender/ar;->d:I

    .line 53
    iput v2, p0, Lcom/threatmetrix/TrustDefender/ar;->e:I

    .line 54
    iput v2, p0, Lcom/threatmetrix/TrustDefender/ar;->f:I

    .line 55
    iput v2, p0, Lcom/threatmetrix/TrustDefender/ar;->g:I

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/ar;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 58
    iput-wide v4, p0, Lcom/threatmetrix/TrustDefender/ar;->i:J

    .line 59
    iput-wide v4, p0, Lcom/threatmetrix/TrustDefender/ar;->j:J

    .line 60
    iput-wide v4, p0, Lcom/threatmetrix/TrustDefender/ar;->k:J

    .line 61
    iput-boolean v2, p0, Lcom/threatmetrix/TrustDefender/ar;->l:Z

    .line 63
    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/ar;->m:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/ar;->n:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/ar;->o:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/ar;->p:Ljava/lang/String;

    .line 67
    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/ar;->q:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/ar;->r:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/ar;->s:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/ar;->t:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/ar;->u:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/ar;->v:Ljava/lang/String;

    .line 73
    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/ar;->w:Ljava/lang/String;

    .line 74
    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/ar;->x:Ljava/lang/String;

    .line 75
    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/ar;->y:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/ar;->z:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/ar;->A:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/ar;->B:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/ar;->C:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/ar;->D:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/ar;->E:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/ar;->F:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/ar;->G:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/ar;->H:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/ar;->I:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/ar;->J:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/ar;->K:[Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/ar;->L:Ljava/util/ArrayList;

    .line 90
    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/ar;->M:Lcom/threatmetrix/TrustDefender/aj;

    .line 91
    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/ar;->N:Landroid/location/Location;

    .line 92
    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/ar;->O:Landroid/content/Context;

    .line 93
    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/ar;->P:Lcom/threatmetrix/TrustDefender/e;

    .line 94
    new-instance v0, Lcom/threatmetrix/TrustDefender/c;

    invoke-direct {v0}, Lcom/threatmetrix/TrustDefender/c;-><init>()V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/ar;->Q:Lcom/threatmetrix/TrustDefender/c;

    .line 95
    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/ar;->R:Lcom/threatmetrix/TrustDefender/x;

    .line 97
    iput-wide v4, p0, Lcom/threatmetrix/TrustDefender/ar;->S:J

    .line 98
    iput v2, p0, Lcom/threatmetrix/TrustDefender/ar;->T:I

    .line 99
    iput-wide v4, p0, Lcom/threatmetrix/TrustDefender/ar;->U:J

    .line 102
    sget-object v0, Lcom/threatmetrix/TrustDefender/THMStatusCode;->THM_OK:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/ar;->V:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    .line 103
    iput-wide v4, p0, Lcom/threatmetrix/TrustDefender/ar;->W:J

    .line 104
    iput-wide v4, p0, Lcom/threatmetrix/TrustDefender/ar;->X:J

    .line 108
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/ar;->G:Ljava/lang/String;

    .line 109
    return-void
.end method

.method private b(J)Ljava/lang/String;
    .locals 5
    .param p1, "timeOfCall"    # J

    .prologue
    .line 883
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 886
    .local v0, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "opts"

    iget-wide v2, p0, Lcom/threatmetrix/TrustDefender/ar;->S:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 887
    const-string v1, "dyOpt"

    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/ar;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 888
    const-string v1, "psi"

    iget v2, p0, Lcom/threatmetrix/TrustDefender/ar;->T:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 889
    const-string v1, "pr"

    iget-wide v2, p0, Lcom/threatmetrix/TrustDefender/ar;->U:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 890
    const-string v1, "cpi"

    iget-wide v2, p0, Lcom/threatmetrix/TrustDefender/ar;->W:J

    sub-long v2, p1, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 891
    const-string v1, "lpi"

    iget-wide v2, p0, Lcom/threatmetrix/TrustDefender/ar;->X:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 892
    const-string v2, "ori"

    iget v1, p0, Lcom/threatmetrix/TrustDefender/ar;->d:I

    iget v3, p0, Lcom/threatmetrix/TrustDefender/ar;->e:I

    if-lt v1, v3, :cond_0

    const-string v1, "landscape"

    :goto_0
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 893
    const-string v1, "crc"

    invoke-static {}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a()Lcom/threatmetrix/TrustDefender/NativeGatherer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 894
    const-string v1, "matched"

    invoke-static {}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a()Lcom/threatmetrix/TrustDefender/NativeGatherer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->l()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 895
    const-string v2, "debug"

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ar;->O:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 897
    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 901
    .end local v0    # "json":Lorg/json/JSONObject;
    :goto_2
    return-object v1

    .line 892
    .restart local v0    # "json":Lorg/json/JSONObject;
    :cond_0
    const-string v1, "portrait"

    goto :goto_0

    .line 895
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 897
    :cond_2
    check-cast v0, Lorg/json/JSONObject;

    .end local v0    # "json":Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_2

    .line 901
    :catch_0
    move-exception v1

    const-string v1, ""

    goto :goto_2
.end method

.method static i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    const-string v0, "h-sdk.online-metrix.net"

    return-object v0
.end method

.method static n()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 600
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 601
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Cache-Control"

    const-string v2, "no-cache, no-store, must-revalidate, no-transform"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    return-object v0
.end method

.method static r()Z
    .locals 5

    .prologue
    .line 855
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 856
    .local v2, "stack":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 858
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 859
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "de.robv.android.xposed.XposedBridge"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const-string v3, "XposedBridge.java"

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 862
    :cond_1
    const/4 v3, 0x1

    .line 865
    .end local v0    # "className":Ljava/lang/String;
    :goto_1
    return v3

    .line 856
    .restart local v0    # "className":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 865
    .end local v0    # "className":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ar;->E:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 912
    invoke-static {}, Lcom/threatmetrix/TrustDefender/p;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/ar;->E:Ljava/lang/String;

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ar;->E:Ljava/lang/String;

    return-object v0
.end method

.method private t()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 930
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ar;->P:Lcom/threatmetrix/TrustDefender/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ar;->P:Lcom/threatmetrix/TrustDefender/e;

    invoke-interface {v0}, Lcom/threatmetrix/TrustDefender/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 932
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 934
    :cond_0
    return-void
.end method

.method private u()Z
    .locals 4

    .prologue
    .line 940
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ar;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x200

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/threatmetrix/TrustDefender/an;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private v()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 946
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ar;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/ai;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 948
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ar;->O:Landroid/content/Context;

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/an;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/ar;->q:Ljava/lang/String;

    .line 950
    :cond_0
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ar;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/ai;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 952
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ar;->q:Ljava/lang/String;

    invoke-direct {p0}, Lcom/threatmetrix/TrustDefender/ar;->u()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/an;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/ar;->p:Ljava/lang/String;

    .line 954
    :cond_1
    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/ar;->p:Ljava/lang/String;

    .line 115
    iput v1, p0, Lcom/threatmetrix/TrustDefender/ar;->b:I

    .line 116
    iput v1, p0, Lcom/threatmetrix/TrustDefender/ar;->c:I

    .line 117
    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/ar;->x:Ljava/lang/String;

    .line 118
    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/ar;->N:Landroid/location/Location;

    .line 119
    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/ar;->E:Ljava/lang/String;

    .line 120
    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/ar;->F:Ljava/lang/String;

    .line 121
    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/ar;->M:Lcom/threatmetrix/TrustDefender/aj;

    .line 122
    iput-wide v2, p0, Lcom/threatmetrix/TrustDefender/ar;->i:J

    .line 123
    iput-wide v2, p0, Lcom/threatmetrix/TrustDefender/ar;->j:J

    .line 124
    iput-wide v2, p0, Lcom/threatmetrix/TrustDefender/ar;->k:J

    .line 125
    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/ar;->R:Lcom/threatmetrix/TrustDefender/x;

    .line 126
    iput v1, p0, Lcom/threatmetrix/TrustDefender/ar;->f:I

    .line 127
    iput-boolean v1, p0, Lcom/threatmetrix/TrustDefender/ar;->l:Z

    .line 128
    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/ar;->H:Ljava/lang/String;

    .line 129
    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/ar;->J:Ljava/lang/String;

    .line 130
    iput v1, p0, Lcom/threatmetrix/TrustDefender/ar;->d:I

    .line 131
    iput v1, p0, Lcom/threatmetrix/TrustDefender/ar;->e:I

    .line 150
    return-void
.end method

.method public final a(I)V
    .locals 1
    .param p1, "bitMask"    # I

    .prologue
    .line 373
    iget v0, p0, Lcom/threatmetrix/TrustDefender/ar;->g:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/threatmetrix/TrustDefender/ar;->g:I

    .line 374
    return-void
.end method

.method final a(J)V
    .locals 1
    .param p1, "options"    # J

    .prologue
    .line 162
    iput-wide p1, p0, Lcom/threatmetrix/TrustDefender/ar;->S:J

    .line 163
    return-void
.end method

.method final a(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/ar;->O:Landroid/content/Context;

    .line 244
    return-void
.end method

.method final a(Landroid/location/Location;Z)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "isManualLocation"    # Z

    .prologue
    .line 219
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/ar;->N:Landroid/location/Location;

    .line 222
    iput-boolean p2, p0, Lcom/threatmetrix/TrustDefender/ar;->l:Z

    .line 224
    :cond_0
    return-void
.end method

.method final a(Lcom/threatmetrix/TrustDefender/THMStatusCode;)V
    .locals 0
    .param p1, "status"    # Lcom/threatmetrix/TrustDefender/THMStatusCode;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/ar;->V:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    .line 215
    return-void
.end method

.method final a(Lcom/threatmetrix/TrustDefender/aj;)V
    .locals 0
    .param p1, "conf"    # Lcom/threatmetrix/TrustDefender/aj;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/ar;->M:Lcom/threatmetrix/TrustDefender/aj;

    .line 234
    return-void
.end method

.method final a(Lcom/threatmetrix/TrustDefender/c;)V
    .locals 0
    .param p1, "browserInfo"    # Lcom/threatmetrix/TrustDefender/c;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/ar;->Q:Lcom/threatmetrix/TrustDefender/c;

    .line 168
    return-void
.end method

.method final a(Lcom/threatmetrix/TrustDefender/e;)V
    .locals 0
    .param p1, "state"    # Lcom/threatmetrix/TrustDefender/e;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/ar;->P:Lcom/threatmetrix/TrustDefender/e;

    .line 229
    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 0
    .param p1, "apikey"    # Ljava/lang/String;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/ar;->B:Ljava/lang/String;

    .line 183
    return-void
.end method

.method final a(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "browserString"    # Ljava/lang/String;
    .param p2, "escapeNonAscii"    # Z

    .prologue
    .line 258
    invoke-static {p1}, Lcom/threatmetrix/TrustDefender/ai;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/ar;->C:Ljava/lang/String;

    .line 264
    return-void
.end method

.method final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ar;->L:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ar;->L:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 204
    :cond_1
    :goto_0
    return-void

    .line 202
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/ar;->L:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method final a(Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 0
    .param p1, "options"    # Ljava/util/concurrent/atomic/AtomicLong;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/ar;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 275
    return-void
.end method

.method final b()V
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/threatmetrix/TrustDefender/ar;->T:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/threatmetrix/TrustDefender/ar;->T:I

    .line 158
    return-void
.end method

.method final b(Ljava/lang/String;)V
    .locals 1
    .param p1, "sessionID"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-static {p1}, Lcom/threatmetrix/TrustDefender/ai;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/ar;->m:Ljava/lang/String;

    .line 189
    return-void
.end method

.method final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ar;->m:Ljava/lang/String;

    return-object v0
.end method

.method final c(Ljava/lang/String;)Z
    .locals 4
    .param p1, "fp_server"    # Ljava/lang/String;

    .prologue
    .line 295
    if-nez p1, :cond_0

    .line 296
    const-string p1, "h-sdk.online-metrix.net"

    .line 300
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/ar;->z:Ljava/lang/String;

    .line 309
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 302
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/net/MalformedURLException;
    sget-object v1, Lcom/threatmetrix/TrustDefender/ar;->Y:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid hostname "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 305
    const/4 v1, 0x0

    goto :goto_0
.end method

.method final d()Lcom/threatmetrix/TrustDefender/THMStatusCode;
    .locals 3

    .prologue
    .line 208
    sget-object v0, Lcom/threatmetrix/TrustDefender/ar;->Y:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getStatus returns: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/ar;->V:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefender/THMStatusCode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ar;->V:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    return-object v0
.end method

.method final d(Ljava/lang/String;)Z
    .locals 2
    .param p1, "org_id"    # Ljava/lang/String;

    .prologue
    .line 319
    invoke-static {p1}, Lcom/threatmetrix/TrustDefender/ai;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    sget-object v0, Lcom/threatmetrix/TrustDefender/ar;->Y:Ljava/lang/String;

    const-string v1, "Invalid org_id"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const/4 v0, 0x0

    .line 325
    :goto_0
    return v0

    .line 324
    :cond_0
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/ar;->y:Ljava/lang/String;

    .line 325
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final e()Lcom/threatmetrix/TrustDefender/aj;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ar;->M:Lcom/threatmetrix/TrustDefender/aj;

    return-object v0
.end method

.method final e(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 335
    invoke-static {p1}, Lcom/threatmetrix/TrustDefender/ai;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    const-string p1, "TrustDefenderSDK"

    .line 339
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/ar;->v:Ljava/lang/String;

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mobile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/ar;->r:Ljava/lang/String;

    .line 342
    const/4 v0, 0x1

    return v0
.end method

.method final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ar;->z:Ljava/lang/String;

    return-object v0
.end method

.method final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ar;->y:Ljava/lang/String;

    return-object v0
.end method

.method final h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ar;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/fp/mobile/conf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final j()Lcom/threatmetrix/TrustDefender/n;
    .locals 3

    .prologue
    .line 356
    new-instance v0, Lcom/threatmetrix/TrustDefender/n;

    invoke-direct {v0}, Lcom/threatmetrix/TrustDefender/n;-><init>()V

    .line 357
    .local v0, "params":Lcom/threatmetrix/TrustDefender/n;
    const-string v1, "org_id"

    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/ar;->y:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 358
    const-string v1, "session_id"

    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/ar;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 359
    const-string v1, "os"

    invoke-static {}, Lcom/threatmetrix/TrustDefender/p;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 360
    const-string v1, "osVersion"

    sget-object v2, Lcom/threatmetrix/TrustDefender/g$b$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 362
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ar;->B:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ar;->B:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 364
    const-string v1, "api_key"

    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/ar;->B:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 367
    :cond_0
    const-string v1, "sdk_version"

    sget-object v2, Lcom/threatmetrix/TrustDefender/ar;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 368
    return-object v0
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x0

    iput v0, p0, Lcom/threatmetrix/TrustDefender/ar;->g:I

    .line 383
    return-void
.end method

.method final l()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 395
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$m;->a()J

    move-result-wide v2

    .line 397
    .local v2, "gatherInfoStart":J
    sget-object v7, Lcom/threatmetrix/TrustDefender/ar;->Y:Ljava/lang/String;

    const-string v8, "Getting timezone info"

    invoke-static {v7, v8}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    const-wide/16 v10, 0x8

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    .line 400
    new-instance v6, Lcom/threatmetrix/TrustDefender/p$b;

    invoke-direct {v6}, Lcom/threatmetrix/TrustDefender/p$b;-><init>()V

    .line 401
    .local v6, "tzInfo":Lcom/threatmetrix/TrustDefender/p$b;
    invoke-static {v6}, Lcom/threatmetrix/TrustDefender/p;->a(Lcom/threatmetrix/TrustDefender/p$b;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 403
    iget v7, v6, Lcom/threatmetrix/TrustDefender/p$b;->b:I

    iput v7, p0, Lcom/threatmetrix/TrustDefender/ar;->c:I

    .line 404
    iget v7, v6, Lcom/threatmetrix/TrustDefender/p$b;->a:I

    iput v7, p0, Lcom/threatmetrix/TrustDefender/ar;->b:I

    .line 406
    .end local v6    # "tzInfo":Lcom/threatmetrix/TrustDefender/p$b;
    :cond_0
    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->p:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->n:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->o:Ljava/lang/String;

    if-nez v7, :cond_7

    .line 412
    :cond_1
    const/4 v4, 0x0

    .line 413
    .local v4, "genID":Ljava/lang/String;
    invoke-direct {p0}, Lcom/threatmetrix/TrustDefender/ar;->v()V

    .line 414
    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->o:Ljava/lang/String;

    if-nez v7, :cond_2

    .line 418
    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->O:Landroid/content/Context;

    invoke-static {v7}, Lcom/threatmetrix/TrustDefender/an;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 421
    invoke-direct {p0}, Lcom/threatmetrix/TrustDefender/ar;->t()V

    .line 422
    invoke-direct {p0}, Lcom/threatmetrix/TrustDefender/ar;->u()Z

    move-result v7

    invoke-static {v4, v7}, Lcom/threatmetrix/TrustDefender/an;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->o:Ljava/lang/String;

    .line 424
    :cond_2
    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->s:Ljava/lang/String;

    if-nez v7, :cond_3

    .line 428
    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->O:Landroid/content/Context;

    invoke-static {v7}, Lcom/threatmetrix/TrustDefender/an;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->s:Ljava/lang/String;

    .line 429
    :cond_3
    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->s:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->s:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 433
    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->O:Landroid/content/Context;

    invoke-static {v7}, Lcom/threatmetrix/TrustDefender/an;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 434
    .local v5, "imei":Ljava/lang/String;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->s:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 436
    const-string v7, ""

    iput-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->s:Ljava/lang/String;

    .line 437
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Lcom/threatmetrix/TrustDefender/ar;->a(I)V

    .line 441
    .end local v5    # "imei":Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->n:Ljava/lang/String;

    if-nez v7, :cond_7

    .line 443
    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->q:Ljava/lang/String;

    if-nez v7, :cond_5

    .line 445
    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->O:Landroid/content/Context;

    invoke-static {v7}, Lcom/threatmetrix/TrustDefender/an;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->q:Ljava/lang/String;

    .line 447
    :cond_5
    if-nez v4, :cond_6

    .line 449
    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->O:Landroid/content/Context;

    invoke-static {v7}, Lcom/threatmetrix/TrustDefender/an;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 452
    :cond_6
    invoke-direct {p0}, Lcom/threatmetrix/TrustDefender/ar;->t()V

    .line 453
    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->q:Ljava/lang/String;

    iget-object v8, p0, Lcom/threatmetrix/TrustDefender/ar;->s:Ljava/lang/String;

    invoke-direct {p0}, Lcom/threatmetrix/TrustDefender/ar;->u()Z

    move-result v9

    invoke-static {v7, v4, v8, v9}, Lcom/threatmetrix/TrustDefender/an;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->n:Ljava/lang/String;

    .line 455
    .end local v4    # "genID":Ljava/lang/String;
    :cond_7
    invoke-direct {p0}, Lcom/threatmetrix/TrustDefender/ar;->t()V

    .line 459
    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    const-wide/16 v10, 0x10

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_9

    iget v7, p0, Lcom/threatmetrix/TrustDefender/ar;->e:I

    if-eqz v7, :cond_8

    iget v7, p0, Lcom/threatmetrix/TrustDefender/ar;->d:I

    if-nez v7, :cond_9

    .line 461
    :cond_8
    new-instance v0, Lcom/threatmetrix/TrustDefender/j;

    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->O:Landroid/content/Context;

    invoke-direct {v0, v7}, Lcom/threatmetrix/TrustDefender/j;-><init>(Landroid/content/Context;)V

    .line 462
    .local v0, "display":Lcom/threatmetrix/TrustDefender/j;
    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefender/j;->a()I

    move-result v7

    iput v7, p0, Lcom/threatmetrix/TrustDefender/ar;->d:I

    .line 463
    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefender/j;->b()I

    move-result v7

    iput v7, p0, Lcom/threatmetrix/TrustDefender/ar;->e:I

    .line 465
    .end local v0    # "display":Lcom/threatmetrix/TrustDefender/j;
    :cond_9
    invoke-direct {p0}, Lcom/threatmetrix/TrustDefender/ar;->t()V

    .line 468
    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->w:Ljava/lang/String;

    if-nez v7, :cond_a

    .line 470
    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->O:Landroid/content/Context;

    iget-object v8, p0, Lcom/threatmetrix/TrustDefender/ar;->O:Landroid/content/Context;

    invoke-static {v7, v8}, Lcom/threatmetrix/TrustDefender/p;->a(Landroid/content/Context;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->w:Ljava/lang/String;

    .line 472
    :cond_a
    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    const-wide/16 v10, 0x800

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->D:Ljava/lang/String;

    if-nez v7, :cond_b

    .line 476
    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->O:Landroid/content/Context;

    invoke-static {v7}, Lcom/threatmetrix/TrustDefender/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->D:Ljava/lang/String;

    .line 477
    :cond_b
    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    const-wide/16 v10, 0x3000

    and-long/2addr v8, v10

    const-wide/16 v10, 0x3000

    cmp-long v7, v8, v10

    if-nez v7, :cond_16

    .line 484
    invoke-static {}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a()Lcom/threatmetrix/TrustDefender/NativeGatherer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->g()[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->K:[Ljava/lang/String;

    .line 495
    :cond_c
    :goto_0
    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->u:Ljava/lang/String;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->t:Ljava/lang/String;

    if-nez v7, :cond_f

    .line 497
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 498
    .local v1, "fontCount":Ljava/lang/StringBuilder;
    invoke-static {v1}, Lcom/threatmetrix/TrustDefender/p;->a(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->t:Ljava/lang/String;

    .line 499
    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->t:Ljava/lang/String;

    if-eqz v7, :cond_e

    .line 501
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->u:Ljava/lang/String;

    .line 504
    :cond_e
    sget-object v7, Lcom/threatmetrix/TrustDefender/ar;->Y:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Got "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/threatmetrix/TrustDefender/ar;->u:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " fonts gives: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/threatmetrix/TrustDefender/ar;->t:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .end local v1    # "fontCount":Ljava/lang/StringBuilder;
    :cond_f
    invoke-direct {p0}, Lcom/threatmetrix/TrustDefender/ar;->t()V

    .line 509
    iget-wide v8, p0, Lcom/threatmetrix/TrustDefender/ar;->i:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_10

    .line 511
    invoke-static {}, Lcom/threatmetrix/TrustDefender/p;->c()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/threatmetrix/TrustDefender/ar;->i:J

    .line 512
    :cond_10
    invoke-direct {p0}, Lcom/threatmetrix/TrustDefender/ar;->t()V

    .line 516
    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->A:Ljava/lang/String;

    if-nez v7, :cond_11

    .line 518
    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->O:Landroid/content/Context;

    invoke-static {v7}, Lcom/threatmetrix/TrustDefender/p;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->A:Ljava/lang/String;

    .line 519
    :cond_11
    invoke-direct {p0}, Lcom/threatmetrix/TrustDefender/ar;->t()V

    .line 523
    iget-wide v8, p0, Lcom/threatmetrix/TrustDefender/ar;->j:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_12

    .line 526
    invoke-static {}, Lcom/threatmetrix/TrustDefender/p;->d()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/threatmetrix/TrustDefender/ar;->j:J

    .line 527
    :cond_12
    invoke-direct {p0}, Lcom/threatmetrix/TrustDefender/ar;->t()V

    .line 531
    iget-wide v8, p0, Lcom/threatmetrix/TrustDefender/ar;->k:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_13

    .line 533
    invoke-static {}, Lcom/threatmetrix/TrustDefender/p;->e()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/threatmetrix/TrustDefender/ar;->k:J

    .line 534
    :cond_13
    invoke-direct {p0}, Lcom/threatmetrix/TrustDefender/ar;->t()V

    .line 538
    iget-wide v8, p0, Lcom/threatmetrix/TrustDefender/ar;->j:J

    iget-wide v10, p0, Lcom/threatmetrix/TrustDefender/ar;->i:J

    invoke-static {v8, v9, v10, v11}, Lcom/threatmetrix/TrustDefender/p;->a(JJ)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->x:Ljava/lang/String;

    .line 539
    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    const-wide/32 v10, 0x8000

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_14

    .line 543
    invoke-direct {p0}, Lcom/threatmetrix/TrustDefender/ar;->t()V

    .line 544
    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->O:Landroid/content/Context;

    invoke-static {v7}, Lcom/threatmetrix/TrustDefender/p;->a(Landroid/content/Context;)Lcom/threatmetrix/TrustDefender/x;

    move-result-object v7

    iput-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->R:Lcom/threatmetrix/TrustDefender/x;

    .line 545
    :cond_14
    invoke-direct {p0}, Lcom/threatmetrix/TrustDefender/ar;->t()V

    .line 549
    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->O:Landroid/content/Context;

    invoke-static {v7}, Lcom/threatmetrix/TrustDefender/p;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->H:Ljava/lang/String;

    .line 550
    invoke-direct {p0}, Lcom/threatmetrix/TrustDefender/ar;->t()V

    .line 553
    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->O:Landroid/content/Context;

    invoke-static {v7}, Lcom/threatmetrix/TrustDefender/p;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->J:Ljava/lang/String;

    .line 554
    invoke-direct {p0}, Lcom/threatmetrix/TrustDefender/ar;->t()V

    .line 557
    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->I:Ljava/lang/String;

    invoke-static {v7}, Lcom/threatmetrix/TrustDefender/ai;->e(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_15

    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    const-wide/32 v10, 0x20000

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_15

    .line 559
    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->O:Landroid/content/Context;

    invoke-static {v7}, Lcom/threatmetrix/TrustDefender/p;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->I:Ljava/lang/String;

    .line 561
    :cond_15
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$m;->a()J

    move-result-wide v8

    sub-long/2addr v8, v2

    iput-wide v8, p0, Lcom/threatmetrix/TrustDefender/ar;->U:J

    .line 564
    return-void

    .line 486
    :cond_16
    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    const-wide/16 v10, 0x2000

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_17

    .line 488
    invoke-static {}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a()Lcom/threatmetrix/TrustDefender/NativeGatherer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->e()[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->K:[Ljava/lang/String;

    goto/16 :goto_0

    .line 490
    :cond_17
    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    const-wide/16 v10, 0x1000

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_c

    .line 492
    invoke-static {}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a()Lcom/threatmetrix/TrustDefender/NativeGatherer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->f()[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/threatmetrix/TrustDefender/ar;->K:[Ljava/lang/String;

    goto/16 :goto_0
.end method

.method final m()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 572
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 573
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ar;->C:Ljava/lang/String;

    invoke-static {v1}, Lcom/threatmetrix/TrustDefender/ai;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 575
    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/ar;->C:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ar;->q:Ljava/lang/String;

    invoke-static {v1}, Lcom/threatmetrix/TrustDefender/ai;->f(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ar;->O:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 582
    :cond_1
    invoke-direct {p0}, Lcom/threatmetrix/TrustDefender/ar;->v()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    :cond_2
    :goto_0
    const-string v2, "Cookie"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "thx_guid="

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ar;->p:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, ""

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    const-string v1, "Referer"

    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/ar;->v:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    const-string v1, "Accept-Language"

    invoke-direct {p0}, Lcom/threatmetrix/TrustDefender/ar;->s()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    const-string v1, "Cache-Control"

    const-string v2, "no-cache, no-store, must-revalidate, no-transform"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    return-object v0

    .line 588
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/ar;->p:Ljava/lang/String;

    goto :goto_0

    .line 590
    :cond_3
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ar;->p:Ljava/lang/String;

    goto :goto_1
.end method

.method public final o()Ljava/lang/String;
    .locals 4

    .prologue
    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 609
    .local v0, "host":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/ar;->y:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/ar;->m:Ljava/lang/String;

    invoke-static {v3}, Lcom/threatmetrix/TrustDefender/ai;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-mob"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/16 v3, 0x40

    if-lt v2, v3, :cond_0

    .line 615
    sget-object v2, Lcom/threatmetrix/TrustDefender/ar;->Y:Ljava/lang/String;

    const-string v3, "combined session id and org id too long for host name fragment"

    invoke-static {v2, v3}, Lcom/threatmetrix/TrustDefender/w;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const/4 v2, 0x0

    .line 627
    :goto_0
    return-object v2

    .line 620
    :cond_0
    sget-object v2, Lcom/threatmetrix/TrustDefender/ar;->Y:Ljava/lang/String;

    const-string v3, "Launching DNS profiling request"

    invoke-static {v2, v3}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const-string v1, "d"

    .line 623
    .local v1, "prod":Ljava/lang/String;
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/ar;->z:Ljava/lang/String;

    const-string v3, "qa2-h.online-metrix.net"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 625
    const-string v1, "q"

    .line 627
    :cond_1
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".aa.online-metrix.net"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method final p()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 637
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 639
    .local v0, "extra_headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ar;->C:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ar;->C:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 641
    sget-object v1, Lcom/threatmetrix/TrustDefender/ar;->Y:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting User-Agent to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/ar;->C:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/ar;->C:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    :cond_0
    const-string v2, "Cookie"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "thx_guid="

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ar;->p:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    const-string v1, "Referer"

    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/ar;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    const-string v1, "Accept-Language"

    invoke-direct {p0}, Lcom/threatmetrix/TrustDefender/ar;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    const-string v1, "Cache-Control"

    const-string v2, "no-cache, no-store, must-revalidate, no-transform"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    return-object v0

    .line 645
    :cond_1
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ar;->p:Ljava/lang/String;

    goto :goto_0
.end method

.method final q()Lcom/threatmetrix/TrustDefender/n;
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 666
    const/4 v15, 0x0

    .line 667
    .local v15, "foundURLs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v21, ""

    .line 668
    .local v21, "urlCheckCount":Ljava/lang/String;
    const/4 v14, 0x0

    .line 670
    .local v14, "foundPaths":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->h:Ljava/util/concurrent/atomic/AtomicLong;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v22

    const-wide/16 v24, 0x4000

    and-long v22, v22, v24

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-eqz v22, :cond_0

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->O:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->M:Lcom/threatmetrix/TrustDefender/aj;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/aj;->d:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/threatmetrix/TrustDefender/p;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->M:Lcom/threatmetrix/TrustDefender/aj;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/aj;->d:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-lez v22, :cond_0

    .line 675
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    .line 677
    const-string v22, ";"

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v15, v0, v1}, Lcom/threatmetrix/TrustDefender/ai;->a(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v14

    .line 680
    :cond_0
    const-string v13, ""

    .line 686
    .local v13, "experimentalAttributes":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->M:Lcom/threatmetrix/TrustDefender/aj;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/threatmetrix/TrustDefender/aj;->a:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x100

    and-long v22, v22, v24

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-eqz v22, :cond_1

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->M:Lcom/threatmetrix/TrustDefender/aj;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/aj;->e:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/threatmetrix/TrustDefender/p;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v13

    .line 689
    :cond_1
    new-instance v17, Lcom/threatmetrix/TrustDefender/n;

    invoke-direct/range {v17 .. v17}, Lcom/threatmetrix/TrustDefender/n;-><init>()V

    .line 695
    .local v17, "jaParams":Lcom/threatmetrix/TrustDefender/n;
    const/16 v22, 0xff

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/threatmetrix/TrustDefender/n;->a(I)V

    .line 697
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threatmetrix/TrustDefender/ar;->d:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threatmetrix/TrustDefender/ar;->e:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_5

    .line 699
    const-string v22, "f"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threatmetrix/TrustDefender/ar;->d:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "x"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threatmetrix/TrustDefender/ar;->e:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 706
    :goto_0
    const-string v22, "w"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->M:Lcom/threatmetrix/TrustDefender/aj;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/aj;->c:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 707
    const-string v22, "c"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threatmetrix/TrustDefender/ar;->b:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 708
    const-string v22, "z"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threatmetrix/TrustDefender/ar;->c:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 709
    const-string v22, "lh"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->r:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/threatmetrix/TrustDefender/n;

    .line 710
    const-string v22, "dr"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->v:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/threatmetrix/TrustDefender/n;

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->Q:Lcom/threatmetrix/TrustDefender/c;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/c;->b:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "0"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 714
    const-string v22, "p"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->Q:Lcom/threatmetrix/TrustDefender/c;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/c;->a:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/threatmetrix/TrustDefender/n;

    .line 715
    const-string v22, "pl"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->Q:Lcom/threatmetrix/TrustDefender/c;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/c;->b:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/threatmetrix/TrustDefender/n;

    .line 716
    const-string v22, "ph"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->Q:Lcom/threatmetrix/TrustDefender/c;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/c;->d:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/threatmetrix/TrustDefender/n;

    .line 718
    :cond_2
    const-string v22, "hh"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->y:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->m:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/threatmetrix/TrustDefender/ai;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->Q:Lcom/threatmetrix/TrustDefender/c;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/threatmetrix/TrustDefender/c;->f:I

    move/from16 v22, v0

    if-lez v22, :cond_3

    .line 721
    const-string v22, "mt"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->Q:Lcom/threatmetrix/TrustDefender/c;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/c;->h:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 722
    const-string v22, "mn"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->Q:Lcom/threatmetrix/TrustDefender/c;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/threatmetrix/TrustDefender/c;->f:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 724
    :cond_3
    const-string v22, "mdf"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->w:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/threatmetrix/TrustDefender/n;

    .line 725
    const-string v22, "mds"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->x:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/threatmetrix/TrustDefender/n;

    .line 727
    const-string v22, "imei"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->s:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/threatmetrix/TrustDefender/n;

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->N:Landroid/location/Location;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    .line 731
    const-string v22, "tdlat"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->N:Landroid/location/Location;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/location/Location;->getLatitude()D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 732
    const-string v22, "tdlon"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->N:Landroid/location/Location;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/location/Location;->getLongitude()D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 733
    const-string v22, "tdlacc"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->N:Landroid/location/Location;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/location/Location;->getAccuracy()F

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 736
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->L:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->L:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-lez v22, :cond_6

    .line 738
    const/4 v8, 0x0

    .line 739
    .local v8, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->L:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 741
    .local v7, "attr":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "aca"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "count":I
    .local v9, "count":I
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v7, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/threatmetrix/TrustDefender/n;

    .line 742
    const/16 v22, 0x5

    move/from16 v0, v22

    if-ge v9, v0, :cond_6

    move v8, v9

    .line 743
    .end local v9    # "count":I
    .restart local v8    # "count":I
    goto :goto_1

    .line 703
    .end local v7    # "attr":Ljava/lang/String;
    .end local v8    # "count":I
    .end local v16    # "i$":Ljava/util/Iterator;
    :cond_5
    const-string v22, "f"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threatmetrix/TrustDefender/ar;->e:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "x"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threatmetrix/TrustDefender/ar;->d:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    goto/16 :goto_0

    .line 746
    :cond_6
    const-string v22, "ah"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->D:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 747
    const-string v22, "la"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->M:Lcom/threatmetrix/TrustDefender/aj;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/aj;->c:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->o:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 748
    const-string v22, "lq"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->C:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 749
    const-string v22, "fc"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->M:Lcom/threatmetrix/TrustDefender/aj;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/aj;->c:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->n:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 751
    const-string v22, "ftsn"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->u:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 752
    const-string v22, "fts"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->t:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/threatmetrix/TrustDefender/n;

    .line 755
    const-string v22, "aov"

    sget-object v23, Lcom/threatmetrix/TrustDefender/g$b$a;->a:Ljava/lang/String;

    const/16 v24, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/threatmetrix/TrustDefender/n;

    .line 756
    const-string v22, "al"

    invoke-direct/range {p0 .. p0}, Lcom/threatmetrix/TrustDefender/ar;->s()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/threatmetrix/TrustDefender/n;

    .line 757
    const-string v22, "alo"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->F:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_7

    invoke-static {}, Lcom/threatmetrix/TrustDefender/p;->b()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/threatmetrix/TrustDefender/ar;->F:Ljava/lang/String;

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->F:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/threatmetrix/TrustDefender/n;

    .line 758
    const-string v22, "ab"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v24, Lcom/threatmetrix/TrustDefender/g$b;->e:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Lcom/threatmetrix/TrustDefender/g$b;->m:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/threatmetrix/TrustDefender/n;

    .line 759
    const-string v22, "am"

    sget-object v23, Lcom/threatmetrix/TrustDefender/g$b;->j:Ljava/lang/String;

    const/16 v24, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/threatmetrix/TrustDefender/n;

    .line 760
    const-string v22, "aos"

    invoke-static {}, Lcom/threatmetrix/TrustDefender/p;->g()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/threatmetrix/TrustDefender/n;

    .line 761
    const-string v22, "cos"

    invoke-static {}, Lcom/threatmetrix/TrustDefender/p;->f()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/threatmetrix/TrustDefender/n;

    .line 763
    const-string v22, "fg"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->n:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 764
    const-string v22, "ls"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->o:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 765
    const-string v22, "gr"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 767
    const-string v22, "grr"

    const/16 v23, 0x400

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v14, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/threatmetrix/TrustDefender/n;

    .line 769
    const-string v22, "at"

    const-string v23, "agent_mobile"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 770
    const-string v23, "av"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v24, Lcom/threatmetrix/TrustDefender/ar;->a:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->G:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_d

    const-string v22, ""

    :goto_2
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 771
    const-string v22, "mex3"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->O:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/threatmetrix/TrustDefender/p;->c(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 775
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threatmetrix/TrustDefender/ar;->f:I

    move/from16 v22, v0

    or-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/threatmetrix/TrustDefender/ar;->f:I

    .line 777
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->N:Landroid/location/Location;

    move-object/from16 v22, v0

    if-eqz v22, :cond_9

    .line 779
    new-instance v19, Lcom/threatmetrix/TrustDefender/v;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->N:Landroid/location/Location;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/threatmetrix/TrustDefender/v;-><init>(Landroid/location/Location;)V

    .line 780
    .local v19, "locationWrapper":Lcom/threatmetrix/TrustDefender/v;
    invoke-virtual/range {v19 .. v19}, Lcom/threatmetrix/TrustDefender/v;->a()Z

    move-result v22

    if-eqz v22, :cond_9

    .line 782
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threatmetrix/TrustDefender/ar;->f:I

    move/from16 v22, v0

    or-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/threatmetrix/TrustDefender/ar;->f:I

    .line 785
    .end local v19    # "locationWrapper":Lcom/threatmetrix/TrustDefender/v;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/threatmetrix/TrustDefender/ar;->l:Z

    move/from16 v22, v0

    if-eqz v22, :cond_a

    .line 787
    move-object/from16 v0, p0

    iget v0, v0, Lcom/threatmetrix/TrustDefender/ar;->f:I

    move/from16 v22, v0

    or-int/lit8 v22, v22, 0x4

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/threatmetrix/TrustDefender/ar;->f:I

    .line 790
    :cond_a
    const-string v22, "mex4"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threatmetrix/TrustDefender/ar;->f:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 791
    const-string v22, "mex5"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threatmetrix/TrustDefender/ar;->g:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 792
    const-string v22, "mex6"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->O:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/threatmetrix/TrustDefender/p;->d(Landroid/content/Context;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 793
    const-string v23, "mex7"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->H:Ljava/lang/String;

    move-object/from16 v22, v0

    if-nez v22, :cond_e

    const-string v22, ""

    :goto_3
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 794
    const-string v23, "mex8"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->I:Ljava/lang/String;

    move-object/from16 v22, v0

    if-nez v22, :cond_f

    const-string v22, ""

    :goto_4
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 795
    const-string v22, "mex10"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->O:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/threatmetrix/TrustDefender/p;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 797
    const-string v23, "abt"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/threatmetrix/TrustDefender/ar;->i:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v22, v24, v26

    if-nez v22, :cond_10

    const-string v22, ""

    :goto_5
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 798
    const-string v22, "anv"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->A:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 799
    const-string v23, "afs"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/threatmetrix/TrustDefender/ar;->j:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v22, v24, v26

    if-nez v22, :cond_11

    const-string v22, ""

    :goto_6
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 800
    const-string v23, "ats"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/threatmetrix/TrustDefender/ar;->k:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v22, v24, v26

    if-nez v22, :cond_12

    const-string v22, ""

    :goto_7
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 801
    const-string v23, "aci"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->J:Ljava/lang/String;

    move-object/from16 v22, v0

    if-nez v22, :cond_13

    const-string v22, ""

    :goto_8
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->R:Lcom/threatmetrix/TrustDefender/x;

    move-object/from16 v22, v0

    if-eqz v22, :cond_b

    .line 804
    const-string v23, "wbs"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->R:Lcom/threatmetrix/TrustDefender/x;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/threatmetrix/TrustDefender/x;->b()Ljava/lang/String;

    move-result-object v22

    if-nez v22, :cond_14

    const-string v22, ""

    :goto_9
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 805
    const-string v23, "wss"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->R:Lcom/threatmetrix/TrustDefender/x;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/threatmetrix/TrustDefender/x;->a()Ljava/lang/String;

    move-result-object v22

    if-nez v22, :cond_15

    const-string v22, ""

    :goto_a
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 806
    const-string v23, "wrr"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->R:Lcom/threatmetrix/TrustDefender/x;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/threatmetrix/TrustDefender/x;->d()Ljava/lang/String;

    move-result-object v22

    if-nez v22, :cond_16

    const-string v22, ""

    :goto_b
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 807
    const-string v23, "wc"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->R:Lcom/threatmetrix/TrustDefender/x;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/threatmetrix/TrustDefender/x;->c()Ljava/lang/String;

    move-result-object v22

    if-nez v22, :cond_17

    const-string v22, ""

    :goto_c
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 815
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 816
    .local v10, "currentTime":J
    const-string v22, "atr"

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/threatmetrix/TrustDefender/ar;->b(J)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 817
    const-string v22, "apd"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/threatmetrix/TrustDefender/ar;->W:J

    move-wide/from16 v24, v0

    sub-long v24, v10, v24

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 819
    new-instance v20, Lcom/threatmetrix/TrustDefender/n;

    invoke-direct/range {v20 .. v20}, Lcom/threatmetrix/TrustDefender/n;-><init>()V

    .line 820
    .local v20, "postParams":Lcom/threatmetrix/TrustDefender/n;
    const-string v22, "org_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->y:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 821
    const-string v22, "session_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->m:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->K:[Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_19

    .line 825
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 826
    .local v5, "apps":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/threatmetrix/TrustDefender/ar;->K:[Ljava/lang/String;

    .local v6, "arr$":[Ljava/lang/String;
    array-length v0, v6

    move/from16 v18, v0

    .local v18, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_d
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_18

    aget-object v4, v6, v16

    .line 828
    .local v4, "app":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    if-lez v22, :cond_c

    .line 830
    const-string v22, ","

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    :cond_c
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    add-int/lit8 v16, v16, 0x1

    goto :goto_d

    .line 770
    .end local v4    # "app":Ljava/lang/String;
    .end local v5    # "apps":Ljava/lang/StringBuilder;
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v10    # "currentTime":J
    .end local v16    # "i$":I
    .end local v18    # "len$":I
    .end local v20    # "postParams":Lcom/threatmetrix/TrustDefender/n;
    :cond_d
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v25, " : "

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->G:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_2

    .line 793
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->H:Ljava/lang/String;

    move-object/from16 v22, v0

    goto/16 :goto_3

    .line 794
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->I:Ljava/lang/String;

    move-object/from16 v22, v0

    goto/16 :goto_4

    .line 797
    :cond_10
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/threatmetrix/TrustDefender/ar;->i:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_5

    .line 799
    :cond_11
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/threatmetrix/TrustDefender/ar;->j:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_6

    .line 800
    :cond_12
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/threatmetrix/TrustDefender/ar;->k:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_7

    .line 801
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->J:Ljava/lang/String;

    move-object/from16 v22, v0

    goto/16 :goto_8

    .line 804
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->R:Lcom/threatmetrix/TrustDefender/x;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/threatmetrix/TrustDefender/x;->b()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_9

    .line 805
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->R:Lcom/threatmetrix/TrustDefender/x;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/threatmetrix/TrustDefender/x;->a()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_a

    .line 806
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->R:Lcom/threatmetrix/TrustDefender/x;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/threatmetrix/TrustDefender/x;->d()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_b

    .line 807
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->R:Lcom/threatmetrix/TrustDefender/x;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/threatmetrix/TrustDefender/x;->c()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_c

    .line 835
    .restart local v5    # "apps":Ljava/lang/StringBuilder;
    .restart local v6    # "arr$":[Ljava/lang/String;
    .restart local v10    # "currentTime":J
    .restart local v16    # "i$":I
    .restart local v18    # "len$":I
    .restart local v20    # "postParams":Lcom/threatmetrix/TrustDefender/n;
    :cond_18
    sget-object v22, Lcom/threatmetrix/TrustDefender/ar;->Y:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Found: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    const-string v22, "ih"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 839
    .end local v5    # "apps":Ljava/lang/StringBuilder;
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v18    # "len$":I
    :cond_19
    invoke-virtual/range {v17 .. v17}, Lcom/threatmetrix/TrustDefender/n;->b()Ljava/lang/String;

    move-result-object v12

    .line 841
    .local v12, "encoded":Ljava/lang/String;
    sget-object v22, Lcom/threatmetrix/TrustDefender/ar;->Y:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "encoded ja = "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 845
    const-string v22, "ja"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefender/ar;->m:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v12, v0}, Lcom/threatmetrix/TrustDefender/ai;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 846
    const-string v22, "h"

    const-string v23, "0"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    move-result-object v22

    const-string v23, "m"

    const-string v24, "2"

    invoke-virtual/range {v22 .. v24}, Lcom/threatmetrix/TrustDefender/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/n;

    .line 848
    return-object v20
.end method
