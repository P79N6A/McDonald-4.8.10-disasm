.class final Lcom/ensighten/T$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ensighten/T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ensighten/T$c$a;
    }
.end annotation


# instance fields
.field private a:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private b:Lcom/ensighten/T;

.field private c:Lcom/ensighten/T$c$a;


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer$OnSeekCompleteListener;Lcom/ensighten/T;)V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p1, p0, Lcom/ensighten/T$c;->a:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 204
    iput-object p2, p0, Lcom/ensighten/T$c;->b:Lcom/ensighten/T;

    .line 205
    return-void
.end method


# virtual methods
.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/ensighten/T$c;->b:Lcom/ensighten/T;

    .line 1075
    iget-object v0, v0, Lcom/ensighten/T;->g:Ljava/lang/String;

    .line 210
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    .line 211
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    .line 213
    invoke-static {}, Lcom/ensighten/Ensighten;->getEventManager()Lcom/ensighten/l;

    move-result-object v3

    .line 1895
    iget-boolean v3, v3, Lcom/ensighten/l;->d:Z

    .line 213
    if-eqz v3, :cond_1

    .line 214
    iget-object v3, p0, Lcom/ensighten/T$c;->b:Lcom/ensighten/T;

    .line 2071
    iget-object v3, v3, Lcom/ensighten/T;->f:Landroid/os/Handler;

    .line 216
    sget-object v4, Lcom/ensighten/T;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_0

    .line 217
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bootstrapper.mobile.dataModel[\'videoLength\'] = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ensighten/Ensighten;->evaluateJS(Ljava/lang/String;)V

    .line 218
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bootstrapper.mobile.dataModel[\'videoName\'] = \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\';"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ensighten/Ensighten;->evaluateJS(Ljava/lang/String;)V

    .line 219
    const-string v4, "Bootstrapper.mobile.dataModel[\'videoPlayerName\'] = \'MediaPlayer\';"

    invoke-static {v4}, Lcom/ensighten/Ensighten;->evaluateJS(Ljava/lang/String;)V

    .line 220
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bootstrapper.mobile.dataModel[\'videoPlayhead\'] = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ensighten/Ensighten;->evaluateJS(Ljava/lang/String;)V

    .line 221
    const-string/jumbo v4, "videoLoad"

    invoke-static {v0, v4, v1, v2}, Lcom/ensighten/T;->a(Ljava/lang/String;Ljava/lang/String;II)Landroid/os/Message;

    move-result-object v4

    .line 222
    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 224
    sget-object v4, Lcom/ensighten/T;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 227
    :cond_0
    const-string v4, "seekStart"

    invoke-static {v0, v4, v1, v2}, Lcom/ensighten/T;->a(Ljava/lang/String;Ljava/lang/String;II)Landroid/os/Message;

    move-result-object v4

    .line 228
    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 230
    const-string v4, "seekComplete"

    invoke-static {v0, v4, v1, v2}, Lcom/ensighten/T;->a(Ljava/lang/String;Ljava/lang/String;II)Landroid/os/Message;

    move-result-object v0

    .line 231
    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/ensighten/T$c;->c:Lcom/ensighten/T$c$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ensighten/T$c;->c:Lcom/ensighten/T$c$a;

    invoke-static {v0}, Lcom/ensighten/T$c$a;->a(Lcom/ensighten/T$c$a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 235
    :cond_2
    new-instance v0, Lcom/ensighten/T$c$a;

    iget-object v3, p0, Lcom/ensighten/T$c;->b:Lcom/ensighten/T;

    invoke-direct {v0, v1, v2, v3}, Lcom/ensighten/T$c$a;-><init>(IILcom/ensighten/T;)V

    iput-object v0, p0, Lcom/ensighten/T$c;->c:Lcom/ensighten/T$c$a;

    .line 236
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/ensighten/T$c;->c:Lcom/ensighten/T$c$a;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 241
    :goto_0
    iget-object v0, p0, Lcom/ensighten/T$c;->a:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    if-eqz v0, :cond_3

    .line 242
    iget-object v0, p0, Lcom/ensighten/T$c;->a:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    .line 245
    :cond_3
    return-void

    .line 238
    :cond_4
    iget-object v0, p0, Lcom/ensighten/T$c;->c:Lcom/ensighten/T$c$a;

    invoke-virtual {v0, v1, v2}, Lcom/ensighten/T$c$a;->a(II)V

    goto :goto_0
.end method
