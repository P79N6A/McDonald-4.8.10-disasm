.class Lcom/facebook/stetho/inspector/elements/Document$4$1;
.super Ljava/lang/Object;
.source "Document.java"

# interfaces
.implements Lcom/facebook/stetho/common/Accumulator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/stetho/inspector/elements/Document$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/stetho/common/Accumulator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/stetho/inspector/elements/Document$4;


# direct methods
.method constructor <init>(Lcom/facebook/stetho/inspector/elements/Document$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/facebook/stetho/inspector/elements/Document$4;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/facebook/stetho/inspector/elements/Document$4$1;->this$1:Lcom/facebook/stetho/inspector/elements/Document$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public store(Ljava/lang/Object;)V
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 375
    iget-object v0, p0, Lcom/facebook/stetho/inspector/elements/Document$4$1;->this$1:Lcom/facebook/stetho/inspector/elements/Document$4;

    iget-object v0, v0, Lcom/facebook/stetho/inspector/elements/Document$4;->val$docUpdate:Lcom/facebook/stetho/inspector/elements/ShadowDocument$Update;

    invoke-virtual {v0, p1}, Lcom/facebook/stetho/inspector/elements/ShadowDocument$Update;->isElementChanged(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/facebook/stetho/inspector/elements/Document$4$1;->this$1:Lcom/facebook/stetho/inspector/elements/Document$4;

    invoke-static {v0}, Lcom/facebook/stetho/inspector/elements/Document$4;->access$800(Lcom/facebook/stetho/inspector/elements/Document$4;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 381
    :cond_0
    return-void
.end method