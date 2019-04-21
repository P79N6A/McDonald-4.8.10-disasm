.class final Lcom/ensighten/M$2$2;
.super Landroid/os/AsyncTask;
.source "SourceFile"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ensighten/M$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/ensighten/M$2;


# direct methods
.method constructor <init>(Lcom/ensighten/M$2;II)V
    .locals 0

    .prologue
    .line 1109
    iput-object p1, p0, Lcom/ensighten/M$2$2;->d:Lcom/ensighten/M$2;

    iput p2, p0, Lcom/ensighten/M$2$2;->b:I

    iput p3, p0, Lcom/ensighten/M$2$2;->c:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/ensighten/M$2$2;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/ensighten/M$2$2;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "M$2$2#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1109
    :goto_0
    check-cast p1, [Ljava/lang/String;

    .line 6114
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/ensighten/M$2$2;->a:Ljava/lang/String;

    .line 6117
    iget-object v0, p0, Lcom/ensighten/M$2$2;->d:Lcom/ensighten/M$2;

    iget-object v0, v0, Lcom/ensighten/M$2;->j:Lcom/ensighten/M;

    iget-object v1, p0, Lcom/ensighten/M$2$2;->d:Lcom/ensighten/M$2;

    iget-object v1, v1, Lcom/ensighten/M$2;->f:Ljava/io/File;

    iget-object v2, p0, Lcom/ensighten/M$2$2;->d:Lcom/ensighten/M$2;

    iget-object v2, v2, Lcom/ensighten/M$2;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/ensighten/M$2$2;->d:Lcom/ensighten/M$2;

    iget-object v3, v3, Lcom/ensighten/M$2;->h:Landroid/content/Context;

    iget v4, p0, Lcom/ensighten/M$2$2;->b:I

    iget v5, p0, Lcom/ensighten/M$2$2;->c:I

    invoke-static/range {v0 .. v5}, Lcom/ensighten/M;->a(Lcom/ensighten/M;Ljava/io/File;Ljava/lang/String;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1109
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "M$2$2#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/ensighten/M$2$2;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "M$2$2#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1109
    :goto_0
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2122
    if-nez p1, :cond_0

    .line 2123
    iget-object v0, p0, Lcom/ensighten/M$2$2;->d:Lcom/ensighten/M$2;

    iget-object v0, v0, Lcom/ensighten/M$2;->j:Lcom/ensighten/M;

    .line 3061
    iget-object v0, v0, Lcom/ensighten/M;->g:Ljava/util/HashSet;

    .line 2123
    iget-object v1, p0, Lcom/ensighten/M$2$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2124
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    :goto_1
    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "M$2$2#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2127
    :cond_0
    const/4 v0, 0x1

    .line 2128
    iget-object v1, p0, Lcom/ensighten/M$2$2;->d:Lcom/ensighten/M$2;

    iget-boolean v1, v1, Lcom/ensighten/M$2;->a:Z

    if-eqz v1, :cond_2

    .line 2129
    iget-object v1, p0, Lcom/ensighten/M$2$2;->d:Lcom/ensighten/M$2;

    iget-object v1, v1, Lcom/ensighten/M$2;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2136
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/ensighten/M$2$2;->d:Lcom/ensighten/M$2;

    iget-object v1, v1, Lcom/ensighten/M$2;->i:Lorg/json/JSONObject;

    const-string/jumbo v2, "type"

    const-string v3, "file"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2137
    iget-object v1, p0, Lcom/ensighten/M$2$2;->d:Lcom/ensighten/M$2;

    iget-object v1, v1, Lcom/ensighten/M$2;->i:Lorg/json/JSONObject;

    const-string/jumbo v2, "value"

    iget-object v3, p0, Lcom/ensighten/M$2$2;->d:Lcom/ensighten/M$2;

    iget-object v3, v3, Lcom/ensighten/M$2;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2138
    iget-object v1, p0, Lcom/ensighten/M$2$2;->d:Lcom/ensighten/M$2;

    iget-object v1, v1, Lcom/ensighten/M$2;->j:Lcom/ensighten/M;

    const-string v2, "setImage() downloaded image"

    .line 5061
    invoke-virtual {v1}, Lcom/ensighten/M;->a()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2145
    :goto_3
    if-nez v0, :cond_1

    .line 2146
    iget-object v0, p0, Lcom/ensighten/M$2$2;->d:Lcom/ensighten/M$2;

    iget-object v0, v0, Lcom/ensighten/M$2;->j:Lcom/ensighten/M;

    .line 6061
    iget-object v0, v0, Lcom/ensighten/M;->g:Ljava/util/HashSet;

    .line 2146
    iget-object v1, p0, Lcom/ensighten/M$2$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1109
    :cond_1
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    goto :goto_1

    .line 2131
    :cond_2
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/ensighten/M$2$2;->d:Lcom/ensighten/M$2;

    iget-object v2, v2, Lcom/ensighten/M$2;->j:Lcom/ensighten/M;

    .line 4061
    iget-object v2, v2, Lcom/ensighten/M;->h:Landroid/content/Context;

    .line 2131
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 2132
    iget-object v2, p0, Lcom/ensighten/M$2$2;->d:Lcom/ensighten/M$2;

    iget-object v2, v2, Lcom/ensighten/M$2;->b:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 2139
    :catch_1
    move-exception v0

    .line 2140
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2141
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    .line 2142
    :cond_3
    const/4 v0, 0x0

    goto :goto_3
.end method
