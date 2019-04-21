.class public final Lcom/ensighten/h$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ensighten/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ensighten/h;


# direct methods
.method public constructor <init>(Lcom/ensighten/h;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/ensighten/h$1;->a:Lcom/ensighten/h;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 265
    :try_start_0
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    const-string v0, "Started saving the queue."

    invoke-static {v0}, Lcom/ensighten/i;->b(Ljava/lang/String;)V

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/ensighten/h$1;->a:Lcom/ensighten/h;

    invoke-static {v0}, Lcom/ensighten/h;->a(Lcom/ensighten/h;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "ensightenQ"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 269
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 270
    iget-object v0, p0, Lcom/ensighten/h$1;->a:Lcom/ensighten/h;

    invoke-static {v0}, Lcom/ensighten/h;->b(Lcom/ensighten/h;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 271
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 272
    iget-object v0, p0, Lcom/ensighten/h$1;->a:Lcom/ensighten/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ensighten/h;->a(Lcom/ensighten/h;Z)Z

    .line 274
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    const-string v0, "Finished saving the queue."

    invoke-static {v0}, Lcom/ensighten/i;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :cond_1
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 278
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    invoke-static {v0}, Lcom/ensighten/i;->c(Ljava/lang/Exception;)V

    goto :goto_0
.end method
