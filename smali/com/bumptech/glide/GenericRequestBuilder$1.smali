.class Lcom/bumptech/glide/GenericRequestBuilder$1;
.super Ljava/lang/Object;
.source "GenericRequestBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/GenericRequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/GenericRequestBuilder;

.field final synthetic val$target:Lcom/bumptech/glide/request/RequestFutureTarget;


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 721
    .local p0, "this":Lcom/bumptech/glide/GenericRequestBuilder$1;, "Lcom/bumptech/glide/GenericRequestBuilder.1;"
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder$1;->val$target:Lcom/bumptech/glide/request/RequestFutureTarget;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestFutureTarget;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder$1;->this$0:Lcom/bumptech/glide/GenericRequestBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder$1;->val$target:Lcom/bumptech/glide/request/RequestFutureTarget;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/GenericRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 724
    :cond_0
    return-void
.end method
