.class final Lcom/ensighten/M$2;
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

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/io/File;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Landroid/content/Context;

.field final synthetic i:Lorg/json/JSONObject;

.field final synthetic j:Lcom/ensighten/M;


# direct methods
.method constructor <init>(Lcom/ensighten/M;ZLandroid/view/View;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 950
    iput-object p1, p0, Lcom/ensighten/M$2;->j:Lcom/ensighten/M;

    iput-boolean p2, p0, Lcom/ensighten/M$2;->a:Z

    iput-object p3, p0, Lcom/ensighten/M$2;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/ensighten/M$2;->c:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/ensighten/M$2;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/ensighten/M$2;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/ensighten/M$2;->f:Ljava/io/File;

    iput-object p8, p0, Lcom/ensighten/M$2;->g:Ljava/lang/String;

    iput-object p9, p0, Lcom/ensighten/M$2;->h:Landroid/content/Context;

    iput-object p10, p0, Lcom/ensighten/M$2;->i:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 954
    :try_start_0
    iget-boolean v1, p0, Lcom/ensighten/M$2;->a:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ensighten/M$2;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v3, v1

    .line 955
    :goto_0
    iget-boolean v1, p0, Lcom/ensighten/M$2;->a:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ensighten/M$2;->c:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    move v2, v1

    .line 956
    :goto_1
    iget-boolean v1, p0, Lcom/ensighten/M$2;->a:Z

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/ensighten/M$2;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    move v1, v0

    .line 959
    :goto_2
    iget-object v0, p0, Lcom/ensighten/M$2;->j:Lcom/ensighten/M;

    .line 2061
    iget-object v0, v0, Lcom/ensighten/M;->g:Ljava/util/HashSet;

    .line 959
    iget-object v3, p0, Lcom/ensighten/M$2;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 960
    iget-object v0, p0, Lcom/ensighten/M$2;->j:Lcom/ensighten/M;

    .line 3061
    iget-object v0, v0, Lcom/ensighten/M;->g:Ljava/util/HashSet;

    .line 960
    iget-object v3, p0, Lcom/ensighten/M$2;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 962
    new-instance v0, Lcom/ensighten/M$2$1;

    invoke-direct {v0, p0, v2, v1}, Lcom/ensighten/M$2$1;-><init>(Lcom/ensighten/M$2;II)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ensighten/M$2;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    instance-of v2, v0, Landroid/os/AsyncTask;

    if-nez v2, :cond_6

    invoke-virtual {v0, v1}, Lcom/ensighten/M$2$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1155
    :cond_0
    :goto_3
    return-void

    .line 954
    :cond_1
    const/4 v1, 0x0

    move-object v3, v1

    goto :goto_0

    .line 955
    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    move v2, v1

    goto :goto_1

    :cond_3
    move v2, v0

    goto :goto_1

    .line 956
    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    move v1, v0

    goto :goto_2

    :cond_5
    move v1, v0

    goto :goto_2

    .line 962
    :cond_6
    check-cast v0, Landroid/os/AsyncTask;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1151
    :catch_0
    move-exception v0

    .line 1152
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1153
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto :goto_3

    .line 1109
    :cond_7
    :try_start_1
    new-instance v0, Lcom/ensighten/M$2$2;

    invoke-direct {v0, p0, v2, v1}, Lcom/ensighten/M$2$2;-><init>(Lcom/ensighten/M$2;II)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ensighten/M$2;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    instance-of v2, v0, Landroid/os/AsyncTask;

    if-nez v2, :cond_8

    invoke-virtual {v0, v1}, Lcom/ensighten/M$2$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_3

    :cond_8
    check-cast v0, Landroid/os/AsyncTask;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
