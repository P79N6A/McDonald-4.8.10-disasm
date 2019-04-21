.class final Lcom/ensighten/T$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ensighten/T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:J

.field private c:Landroid/media/MediaPlayer$OnCompletionListener;

.field private d:Lcom/ensighten/T;


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer$OnCompletionListener;Lcom/ensighten/T;)V
    .locals 2

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    const/4 v0, -0x1

    iput v0, p0, Lcom/ensighten/T$a;->a:I

    .line 161
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ensighten/T$a;->b:J

    .line 165
    iput-object p1, p0, Lcom/ensighten/T$a;->c:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 166
    iput-object p2, p0, Lcom/ensighten/T$a;->d:Lcom/ensighten/T;

    .line 167
    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 10
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 172
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    .line 173
    iget-wide v4, p0, Lcom/ensighten/T$a;->b:J

    sub-long v4, v0, v4

    .line 176
    iget v3, p0, Lcom/ensighten/T$a;->a:I

    if-ne v3, v2, :cond_0

    const-wide/16 v6, 0x3e8

    cmp-long v3, v4, v6

    if-ltz v3, :cond_1

    .line 177
    :cond_0
    iget-object v3, p0, Lcom/ensighten/T$a;->d:Lcom/ensighten/T;

    .line 1075
    iget-object v3, v3, Lcom/ensighten/T;->g:Ljava/lang/String;

    .line 177
    const-string v4, "complete"

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v5

    invoke-static {v3, v4, v2, v5}, Lcom/ensighten/T;->a(Ljava/lang/String;Ljava/lang/String;II)Landroid/os/Message;

    move-result-object v3

    .line 178
    iget-object v4, p0, Lcom/ensighten/T$a;->d:Lcom/ensighten/T;

    invoke-virtual {v4, v8}, Lcom/ensighten/T;->b(Z)V

    .line 179
    iget-object v4, p0, Lcom/ensighten/T$a;->d:Lcom/ensighten/T;

    invoke-virtual {v4, v8}, Lcom/ensighten/T;->a(Z)V

    .line 180
    iget-object v4, p0, Lcom/ensighten/T$a;->d:Lcom/ensighten/T;

    invoke-static {v4}, Lcom/ensighten/T;->a(Lcom/ensighten/T;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 182
    sget-object v3, Lcom/ensighten/T;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 183
    iput v2, p0, Lcom/ensighten/T$a;->a:I

    .line 184
    iput-wide v0, p0, Lcom/ensighten/T$a;->b:J

    .line 185
    new-instance v0, Lcom/ensighten/U;

    invoke-direct {v0}, Lcom/ensighten/U;-><init>()V

    sput-object v0, Lcom/ensighten/T;->b:Lcom/ensighten/U;

    .line 186
    new-instance v0, Lcom/ensighten/U;

    invoke-direct {v0}, Lcom/ensighten/U;-><init>()V

    sput-object v0, Lcom/ensighten/T;->c:Lcom/ensighten/U;

    .line 187
    sput-object v9, Lcom/ensighten/T;->d:Landroid/os/Message;

    .line 188
    sput-object v9, Lcom/ensighten/T;->e:Landroid/os/Message;

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/ensighten/T$a;->c:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/ensighten/T$a;->c:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 194
    :cond_2
    return-void
.end method
