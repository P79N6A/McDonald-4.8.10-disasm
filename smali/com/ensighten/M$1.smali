.class final Lcom/ensighten/M$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ensighten/M;->a(Landroid/view/View;ZLorg/json/JSONObject;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/widget/ImageView;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/ensighten/M;


# direct methods
.method constructor <init>(Lcom/ensighten/M;ZLandroid/view/View;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 852
    iput-object p1, p0, Lcom/ensighten/M$1;->e:Lcom/ensighten/M;

    iput-boolean p2, p0, Lcom/ensighten/M$1;->a:Z

    iput-object p3, p0, Lcom/ensighten/M$1;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/ensighten/M$1;->c:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/ensighten/M$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 856
    :try_start_0
    iget-boolean v1, p0, Lcom/ensighten/M$1;->a:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ensighten/M$1;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v3, v1

    .line 857
    :goto_0
    iget-boolean v1, p0, Lcom/ensighten/M$1;->a:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ensighten/M$1;->c:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    move v2, v1

    .line 858
    :goto_1
    iget-boolean v1, p0, Lcom/ensighten/M$1;->a:Z

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/ensighten/M$1;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    move v1, v0

    .line 860
    :goto_2
    if-eqz v2, :cond_0

    if-nez v1, :cond_6

    .line 903
    :cond_0
    :goto_3
    return-void

    .line 856
    :cond_1
    const/4 v1, 0x0

    move-object v3, v1

    goto :goto_0

    .line 857
    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    move v2, v1

    goto :goto_1

    :cond_3
    move v2, v0

    goto :goto_1

    .line 858
    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    move v1, v0

    goto :goto_2

    :cond_5
    move v1, v0

    goto :goto_2

    .line 864
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ensighten/M$1;->e:Lcom/ensighten/M;

    .line 1061
    iget-object v3, v3, Lcom/ensighten/M;->h:Landroid/content/Context;

    .line 864
    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 866
    new-instance v0, Lcom/ensighten/M$1$1;

    invoke-direct {v0, p0, v3, v2, v1}, Lcom/ensighten/M$1$1;-><init>(Lcom/ensighten/M$1;Ljava/lang/String;II)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    instance-of v2, v0, Landroid/os/AsyncTask;

    if-nez v2, :cond_7

    invoke-virtual {v0, v1}, Lcom/ensighten/M$1$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 899
    :catch_0
    move-exception v0

    .line 900
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 901
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto :goto_3

    .line 866
    :cond_7
    :try_start_1
    check-cast v0, Landroid/os/AsyncTask;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
