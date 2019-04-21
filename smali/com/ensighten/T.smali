.class public final Lcom/ensighten/T;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ensighten/T$d;,
        Lcom/ensighten/T$b;,
        Lcom/ensighten/T$c;,
        Lcom/ensighten/T$a;
    }
.end annotation


# static fields
.field public static a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static b:Lcom/ensighten/U;

.field public static c:Lcom/ensighten/U;

.field public static d:Landroid/os/Message;

.field public static e:Landroid/os/Message;


# instance fields
.field public final f:Landroid/os/Handler;

.field public g:Ljava/lang/String;

.field public h:Landroid/widget/VideoView;

.field public i:Lcom/ensighten/S;

.field j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field k:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/ensighten/T;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    new-instance v0, Lcom/ensighten/U;

    invoke-direct {v0}, Lcom/ensighten/U;-><init>()V

    sput-object v0, Lcom/ensighten/T;->b:Lcom/ensighten/U;

    .line 33
    new-instance v0, Lcom/ensighten/U;

    invoke-direct {v0}, Lcom/ensighten/U;-><init>()V

    sput-object v0, Lcom/ensighten/T;->c:Lcom/ensighten/U;

    .line 34
    sput-object v2, Lcom/ensighten/T;->d:Landroid/os/Message;

    .line 35
    sput-object v2, Lcom/ensighten/T;->e:Landroid/os/Message;

    return-void
.end method

.method public constructor <init>(Landroid/widget/VideoView;)V
    .locals 5

    .prologue
    const/high16 v3, -0x80000000

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/ensighten/T$d;

    invoke-direct {v0, v1}, Lcom/ensighten/T$d;-><init>(B)V

    iput-object v0, p0, Lcom/ensighten/T;->f:Landroid/os/Handler;

    .line 38
    iput-object v2, p0, Lcom/ensighten/T;->g:Ljava/lang/String;

    .line 39
    iput-object v2, p0, Lcom/ensighten/T;->h:Landroid/widget/VideoView;

    .line 40
    iput-object v2, p0, Lcom/ensighten/T;->i:Lcom/ensighten/S;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ensighten/T;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ensighten/T;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    iput-object p1, p0, Lcom/ensighten/T;->h:Landroid/widget/VideoView;

    .line 46
    const-string v0, "mUri"

    invoke-static {p1, v0}, Lcom/ensighten/Utils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 47
    if-nez v0, :cond_0

    const-string/jumbo v0, "undefined"

    :goto_0
    iput-object v0, p0, Lcom/ensighten/T;->g:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/ensighten/T;->g:Ljava/lang/String;

    const-string v1, "start"

    invoke-static {v0, v1, v3, v3}, Lcom/ensighten/T;->a(Ljava/lang/String;Ljava/lang/String;II)Landroid/os/Message;

    move-result-object v0

    .line 1071
    iget-object v1, p0, Lcom/ensighten/T;->f:Landroid/os/Handler;

    .line 49
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 52
    invoke-virtual {p0}, Lcom/ensighten/T;->b()Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 53
    invoke-direct {p0}, Lcom/ensighten/T;->c()V

    .line 57
    :goto_1
    return-void

    .line 47
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1133
    :cond_1
    iget-object v1, p0, Lcom/ensighten/T;->h:Landroid/widget/VideoView;

    const-string v2, "mOnPreparedListener"

    new-instance v3, Lcom/ensighten/T$b;

    iget-object v0, p0, Lcom/ensighten/T;->h:Landroid/widget/VideoView;

    const-string v4, "mOnPreparedListener"

    invoke-static {v0, v4}, Lcom/ensighten/Utils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-direct {v3, v0, p0}, Lcom/ensighten/T$b;-><init>(Landroid/media/MediaPlayer$OnPreparedListener;Lcom/ensighten/T;)V

    invoke-static {v1, v2, v3}, Lcom/ensighten/Utils;->setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method static synthetic a(Lcom/ensighten/T;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/ensighten/T;->f:Landroid/os/Handler;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;II)Landroid/os/Message;
    .locals 3

    .prologue
    .line 60
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 61
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 62
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 63
    const-string/jumbo v2, "videoName"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v2, "event"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v2, "position"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    const-string v2, "duration"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 67
    return-object v0
.end method

.method static synthetic b(Lcom/ensighten/T;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/ensighten/T;->c()V

    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/ensighten/T;->b()Landroid/media/MediaPlayer;

    move-result-object v1

    .line 139
    const-string v2, "mOnCompletionListener"

    new-instance v3, Lcom/ensighten/T$a;

    const-string v0, "mOnCompletionListener"

    invoke-static {v1, v0}, Lcom/ensighten/Utils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-direct {v3, v0, p0}, Lcom/ensighten/T$a;-><init>(Landroid/media/MediaPlayer$OnCompletionListener;Lcom/ensighten/T;)V

    invoke-static {v1, v2, v3}, Lcom/ensighten/Utils;->setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 140
    const-string v2, "mOnSeekCompleteListener"

    new-instance v3, Lcom/ensighten/T$c;

    const-string v0, "mOnSeekCompleteListener"

    invoke-static {v1, v0}, Lcom/ensighten/Utils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-direct {v3, v0, p0}, Lcom/ensighten/T$c;-><init>(Landroid/media/MediaPlayer$OnSeekCompleteListener;Lcom/ensighten/T;)V

    invoke-static {v1, v2, v3}, Lcom/ensighten/Utils;->setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 142
    new-instance v0, Lcom/ensighten/S;

    iget-object v1, p0, Lcom/ensighten/T;->g:Ljava/lang/String;

    invoke-static {v1}, Lcom/ensighten/Ensighten;->getVideoKeyframes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ensighten/S;-><init>(Lcom/ensighten/T;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ensighten/T;->i:Lcom/ensighten/S;

    .line 143
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/ensighten/T;->i:Lcom/ensighten/S;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 144
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/ensighten/T;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 88
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/ensighten/T;->b()Landroid/media/MediaPlayer;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()Landroid/media/MediaPlayer;
    .locals 2

    .prologue
    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/ensighten/T;->h:Landroid/widget/VideoView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mMediaPlayer"

    invoke-static {v0, v1}, Lcom/ensighten/Utils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 149
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 150
    iget-object v1, p0, Lcom/ensighten/T;->h:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 151
    check-cast v0, Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    return-object v0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    invoke-static {v0}, Lcom/ensighten/i;->c(Ljava/lang/Exception;)V

    .line 155
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/ensighten/T;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 96
    return-void
.end method
