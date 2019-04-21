.class Lcom/facebook/stetho/inspector/elements/Document$4;
.super Ljava/lang/Object;
.source "Document.java"

# interfaces
.implements Lcom/facebook/stetho/common/Accumulator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/stetho/inspector/elements/Document;->applyDocumentUpdate(Lcom/facebook/stetho/inspector/elements/ShadowDocument$Update;)V
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
.field private insertedElements:Lcom/facebook/stetho/common/Accumulator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/stetho/common/Accumulator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final listenerInsertedElements:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/facebook/stetho/inspector/elements/Document;

.field final synthetic val$docUpdate:Lcom/facebook/stetho/inspector/elements/ShadowDocument$Update;


# direct methods
.method constructor <init>(Lcom/facebook/stetho/inspector/elements/Document;Lcom/facebook/stetho/inspector/elements/ShadowDocument$Update;)V
    .locals 1
    .param p1, "this$0"    # Lcom/facebook/stetho/inspector/elements/Document;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/facebook/stetho/inspector/elements/Document$4;->this$0:Lcom/facebook/stetho/inspector/elements/Document;

    iput-object p2, p0, Lcom/facebook/stetho/inspector/elements/Document$4;->val$docUpdate:Lcom/facebook/stetho/inspector/elements/ShadowDocument$Update;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/stetho/inspector/elements/Document$4;->listenerInsertedElements:Ljava/util/HashSet;

    .line 372
    new-instance v0, Lcom/facebook/stetho/inspector/elements/Document$4$1;

    invoke-direct {v0, p0}, Lcom/facebook/stetho/inspector/elements/Document$4$1;-><init>(Lcom/facebook/stetho/inspector/elements/Document$4;)V

    iput-object v0, p0, Lcom/facebook/stetho/inspector/elements/Document$4;->insertedElements:Lcom/facebook/stetho/common/Accumulator;

    return-void
.end method

.method static synthetic access$800(Lcom/facebook/stetho/inspector/elements/Document$4;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/stetho/inspector/elements/Document$4;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/facebook/stetho/inspector/elements/Document$4;->listenerInsertedElements:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public store(Ljava/lang/Object;)V
    .locals 10
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 387
    iget-object v8, p0, Lcom/facebook/stetho/inspector/elements/Document$4;->this$0:Lcom/facebook/stetho/inspector/elements/Document;

    invoke-static {v8}, Lcom/facebook/stetho/inspector/elements/Document;->access$500(Lcom/facebook/stetho/inspector/elements/Document;)Lcom/facebook/stetho/inspector/helper/ObjectIdMapper;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/facebook/stetho/inspector/helper/ObjectIdMapper;->containsObject(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    iget-object v8, p0, Lcom/facebook/stetho/inspector/elements/Document$4;->listenerInsertedElements:Ljava/util/HashSet;

    invoke-virtual {v8, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 398
    iget-object v8, p0, Lcom/facebook/stetho/inspector/elements/Document$4;->val$docUpdate:Lcom/facebook/stetho/inspector/elements/ShadowDocument$Update;

    invoke-virtual {v8, p1}, Lcom/facebook/stetho/inspector/elements/ShadowDocument$Update;->getElementInfo(Ljava/lang/Object;)Lcom/facebook/stetho/inspector/elements/ElementInfo;

    move-result-object v5

    .line 399
    .local v5, "newElementInfo":Lcom/facebook/stetho/inspector/elements/ElementInfo;
    iget-object v8, p0, Lcom/facebook/stetho/inspector/elements/Document$4;->this$0:Lcom/facebook/stetho/inspector/elements/Document;

    invoke-static {v8}, Lcom/facebook/stetho/inspector/elements/Document;->access$100(Lcom/facebook/stetho/inspector/elements/Document;)Lcom/facebook/stetho/inspector/elements/ShadowDocument;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/facebook/stetho/inspector/elements/ShadowDocument;->getElementInfo(Ljava/lang/Object;)Lcom/facebook/stetho/inspector/elements/ElementInfo;

    move-result-object v7

    .line 401
    .local v7, "oldElementInfo":Lcom/facebook/stetho/inspector/elements/ElementInfo;
    if-eqz v7, :cond_3

    iget-object v6, v7, Lcom/facebook/stetho/inspector/elements/ElementInfo;->children:Ljava/util/List;

    .line 405
    .local v6, "oldChildren":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_1
    iget-object v4, v5, Lcom/facebook/stetho/inspector/elements/ElementInfo;->children:Ljava/util/List;

    .line 409
    .local v4, "newChildren":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v8, p0, Lcom/facebook/stetho/inspector/elements/Document$4;->this$0:Lcom/facebook/stetho/inspector/elements/Document;

    iget-object v9, p0, Lcom/facebook/stetho/inspector/elements/Document$4;->val$docUpdate:Lcom/facebook/stetho/inspector/elements/ShadowDocument$Update;

    invoke-static {v8, p1, v9}, Lcom/facebook/stetho/inspector/elements/Document;->access$900(Lcom/facebook/stetho/inspector/elements/Document;Ljava/lang/Object;Lcom/facebook/stetho/inspector/elements/DocumentView;)Lcom/facebook/stetho/inspector/elements/Document$ChildEventingList;

    move-result-object v3

    .line 410
    .local v3, "listenerChildren":Lcom/facebook/stetho/inspector/elements/Document$ChildEventingList;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 411
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 412
    .local v1, "childElement":Ljava/lang/Object;
    iget-object v8, p0, Lcom/facebook/stetho/inspector/elements/Document$4;->this$0:Lcom/facebook/stetho/inspector/elements/Document;

    invoke-static {v8}, Lcom/facebook/stetho/inspector/elements/Document;->access$500(Lcom/facebook/stetho/inspector/elements/Document;)Lcom/facebook/stetho/inspector/helper/ObjectIdMapper;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/facebook/stetho/inspector/helper/ObjectIdMapper;->containsObject(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 413
    invoke-virtual {v3, v1}, Lcom/facebook/stetho/inspector/elements/Document$ChildEventingList;->add(Ljava/lang/Object;)Z

    .line 410
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 403
    .end local v0    # "N":I
    .end local v1    # "childElement":Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v3    # "listenerChildren":Lcom/facebook/stetho/inspector/elements/Document$ChildEventingList;
    .end local v4    # "newChildren":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v6    # "oldChildren":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    goto :goto_1

    .line 416
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v3    # "listenerChildren":Lcom/facebook/stetho/inspector/elements/Document$ChildEventingList;
    .restart local v4    # "newChildren":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v6    # "oldChildren":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_4
    iget-object v8, p0, Lcom/facebook/stetho/inspector/elements/Document$4;->insertedElements:Lcom/facebook/stetho/common/Accumulator;

    invoke-static {v3, v4, v8}, Lcom/facebook/stetho/inspector/elements/Document;->access$1000(Lcom/facebook/stetho/inspector/elements/Document$ChildEventingList;Ljava/util/List;Lcom/facebook/stetho/common/Accumulator;)V

    .line 417
    iget-object v8, p0, Lcom/facebook/stetho/inspector/elements/Document$4;->this$0:Lcom/facebook/stetho/inspector/elements/Document;

    invoke-static {v8, v3}, Lcom/facebook/stetho/inspector/elements/Document;->access$1100(Lcom/facebook/stetho/inspector/elements/Document;Lcom/facebook/stetho/inspector/elements/Document$ChildEventingList;)V

    goto :goto_0
.end method
