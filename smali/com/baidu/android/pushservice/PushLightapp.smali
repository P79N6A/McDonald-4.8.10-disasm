.class public Lcom/baidu/android/pushservice/PushLightapp;
.super Ljava/lang/Object;


# static fields
.field private static BIND_TIME_OUT:I

.field private static EVER_BIND:Z

.field private static RUNNING_PUSH_VERSION:I

.field private static sInstance:Lcom/baidu/android/pushservice/PushLightapp;

.field private static sListener:Lcom/baidu/android/pushservice/IPushLightappListener;


# instance fields
.field private bind_times:I

.field private mBound:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field mIPushService:Lcom/baidu/android/pushservice/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/baidu/android/pushservice/PushLightapp;->EVER_BIND:Z

    const/16 v0, 0xdac

    sput v0, Lcom/baidu/android/pushservice/PushLightapp;->BIND_TIME_OUT:I

    sput v1, Lcom/baidu/android/pushservice/PushLightapp;->RUNNING_PUSH_VERSION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mBound:Z

    iput v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->bind_times:I

    new-instance v0, Lcom/baidu/android/pushservice/PushLightapp$2;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/PushLightapp$2;-><init>(Lcom/baidu/android/pushservice/PushLightapp;)V

    iput-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/baidu/android/pushservice/PushLightapp;->tryBindPush()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->BIND_TIME_OUT:I

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/baidu/android/pushservice/PushLightapp;->EVER_BIND:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/baidu/android/pushservice/PushLightapp;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/android/pushservice/PushLightapp;->tryBindPush()V

    return-void
.end method

.method static synthetic access$200(Lcom/baidu/android/pushservice/PushLightapp;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mBound:Z

    return v0
.end method

.method static synthetic access$202(Lcom/baidu/android/pushservice/PushLightapp;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/android/pushservice/PushLightapp;->mBound:Z

    return p1
.end method

.method static synthetic access$300(Lcom/baidu/android/pushservice/PushLightapp;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/android/pushservice/PushLightapp;->unbindService()V

    return-void
.end method

.method static synthetic access$402(I)I
    .locals 0

    sput p0, Lcom/baidu/android/pushservice/PushLightapp;->RUNNING_PUSH_VERSION:I

    return p0
.end method

.method static synthetic access$500(Lcom/baidu/android/pushservice/PushLightapp;)I
    .locals 1

    invoke-direct {p0}, Lcom/baidu/android/pushservice/PushLightapp;->getRunningServiceVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$600()Lcom/baidu/android/pushservice/IPushLightappListener;
    .locals 1

    sget-object v0, Lcom/baidu/android/pushservice/PushLightapp;->sListener:Lcom/baidu/android/pushservice/IPushLightappListener;

    return-object v0
.end method

.method static synthetic access$700()Lcom/baidu/android/pushservice/PushLightapp;
    .locals 1

    sget-object v0, Lcom/baidu/android/pushservice/PushLightapp;->sInstance:Lcom/baidu/android/pushservice/PushLightapp;

    return-object v0
.end method

.method static synthetic access$702(Lcom/baidu/android/pushservice/PushLightapp;)Lcom/baidu/android/pushservice/PushLightapp;
    .locals 0

    sput-object p0, Lcom/baidu/android/pushservice/PushLightapp;->sInstance:Lcom/baidu/android/pushservice/PushLightapp;

    return-object p0
.end method

.method static synthetic access$800(Lcom/baidu/android/pushservice/PushLightapp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/baidu/android/pushservice/PushLightapp;)I
    .locals 1

    iget v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->bind_times:I

    return v0
.end method

.method static synthetic access$902(Lcom/baidu/android/pushservice/PushLightapp;I)I
    .locals 0

    iput p1, p0, Lcom/baidu/android/pushservice/PushLightapp;->bind_times:I

    return p1
.end method

.method private getRunningServiceVersion()I
    .locals 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    invoke-interface {v0}, Lcom/baidu/android/pushservice/b/a;->c()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "PushLightapp"

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tryBindPush()V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/baidu/android/pushservice/PushLightapp;->EVER_BIND:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    if-nez v0, :cond_1

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->RUNNING_PUSH_VERSION:I

    if-lez v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/baidu/android/pushservice/PushLightapp;->unbindService()V

    :cond_2
    sput-boolean v1, Lcom/baidu/android/pushservice/PushLightapp;->EVER_BIND:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/baidu/android/pushservice/PushLightapp;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/util/v;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.baidu.android.pushservice.PushService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/baidu/android/pushservice/PushLightapp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/android/pushservice/PushLightapp;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->bind_times:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->bind_times:I

    invoke-static {}, Lcom/baidu/android/pushservice/j/d;->a()Lcom/baidu/android/pushservice/j/d;

    move-result-object v0

    new-instance v1, Lcom/baidu/android/pushservice/PushLightapp$1;

    const-string/jumbo v2, "unbindService"

    const/16 v3, 0x5f

    invoke-direct {v1, p0, v2, v3}, Lcom/baidu/android/pushservice/PushLightapp$1;-><init>(Lcom/baidu/android/pushservice/PushLightapp;Ljava/lang/String;S)V

    invoke-virtual {v0, v1}, Lcom/baidu/android/pushservice/j/d;->a(Lcom/baidu/android/pushservice/j/c;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PushLightapp"

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private unbindService()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/android/pushservice/PushLightapp;->EVER_BIND:Z

    const/4 v0, 0x0

    sput v0, Lcom/baidu/android/pushservice/PushLightapp;->RUNNING_PUSH_VERSION:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mBound:Z

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/android/pushservice/PushLightapp;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PushLightapp"

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
