.class final Lcom/facebook/stetho/inspector/protocol/module/DOM$DocumentUpdateListener;
.super Ljava/lang/Object;
.source "DOM.java"

# interfaces
.implements Lcom/facebook/stetho/inspector/elements/Document$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/stetho/inspector/protocol/module/DOM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DocumentUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/stetho/inspector/protocol/module/DOM;


# direct methods
.method private constructor <init>(Lcom/facebook/stetho/inspector/protocol/module/DOM;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/facebook/stetho/inspector/protocol/module/DOM$DocumentUpdateListener;->this$0:Lcom/facebook/stetho/inspector/protocol/module/DOM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/stetho/inspector/protocol/module/DOM;Lcom/facebook/stetho/inspector/protocol/module/DOM$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/stetho/inspector/protocol/module/DOM;
    .param p2, "x1"    # Lcom/facebook/stetho/inspector/protocol/module/DOM$1;

    .prologue
    .line 325
    invoke-direct {p0, p1}, Lcom/facebook/stetho/inspector/protocol/module/DOM$DocumentUpdateListener;-><init>(Lcom/facebook/stetho/inspector/protocol/module/DOM;)V

    return-void
.end method


# virtual methods
.method public onAttributeModified(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 327
    new-instance v0, Lcom/facebook/stetho/inspector/protocol/module/DOM$AttributeModifiedEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/stetho/inspector/protocol/module/DOM$AttributeModifiedEvent;-><init>(Lcom/facebook/stetho/inspector/protocol/module/DOM$1;)V

    .line 328
    .local v0, "message":Lcom/facebook/stetho/inspector/protocol/module/DOM$AttributeModifiedEvent;
    iget-object v1, p0, Lcom/facebook/stetho/inspector/protocol/module/DOM$DocumentUpdateListener;->this$0:Lcom/facebook/stetho/inspector/protocol/module/DOM;

    invoke-static {v1}, Lcom/facebook/stetho/inspector/protocol/module/DOM;->access$300(Lcom/facebook/stetho/inspector/protocol/module/DOM;)Lcom/facebook/stetho/inspector/elements/Document;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/facebook/stetho/inspector/elements/Document;->getNodeIdForElement(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/facebook/stetho/inspector/protocol/module/DOM$AttributeModifiedEvent;->nodeId:I

    .line 329
    iput-object p2, v0, Lcom/facebook/stetho/inspector/protocol/module/DOM$AttributeModifiedEvent;->name:Ljava/lang/String;

    .line 330
    iput-object p3, v0, Lcom/facebook/stetho/inspector/protocol/module/DOM$AttributeModifiedEvent;->value:Ljava/lang/String;

    .line 331
    iget-object v1, p0, Lcom/facebook/stetho/inspector/protocol/module/DOM$DocumentUpdateListener;->this$0:Lcom/facebook/stetho/inspector/protocol/module/DOM;

    invoke-static {v1}, Lcom/facebook/stetho/inspector/protocol/module/DOM;->access$1200(Lcom/facebook/stetho/inspector/protocol/module/DOM;)Lcom/facebook/stetho/inspector/helper/ChromePeerManager;

    move-result-object v1

    const-string v2, "DOM.onAttributeModified"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/stetho/inspector/helper/ChromePeerManager;->sendNotificationToPeers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 332
    return-void
.end method

.method public onAttributeRemoved(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 335
    new-instance v0, Lcom/facebook/stetho/inspector/protocol/module/DOM$AttributeRemovedEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/stetho/inspector/protocol/module/DOM$AttributeRemovedEvent;-><init>(Lcom/facebook/stetho/inspector/protocol/module/DOM$1;)V

    .line 336
    .local v0, "message":Lcom/facebook/stetho/inspector/protocol/module/DOM$AttributeRemovedEvent;
    iget-object v1, p0, Lcom/facebook/stetho/inspector/protocol/module/DOM$DocumentUpdateListener;->this$0:Lcom/facebook/stetho/inspector/protocol/module/DOM;

    invoke-static {v1}, Lcom/facebook/stetho/inspector/protocol/module/DOM;->access$300(Lcom/facebook/stetho/inspector/protocol/module/DOM;)Lcom/facebook/stetho/inspector/elements/Document;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/facebook/stetho/inspector/elements/Document;->getNodeIdForElement(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/facebook/stetho/inspector/protocol/module/DOM$AttributeRemovedEvent;->nodeId:I

    .line 337
    iput-object p2, v0, Lcom/facebook/stetho/inspector/protocol/module/DOM$AttributeRemovedEvent;->name:Ljava/lang/String;

    .line 338
    iget-object v1, p0, Lcom/facebook/stetho/inspector/protocol/module/DOM$DocumentUpdateListener;->this$0:Lcom/facebook/stetho/inspector/protocol/module/DOM;

    invoke-static {v1}, Lcom/facebook/stetho/inspector/protocol/module/DOM;->access$1200(Lcom/facebook/stetho/inspector/protocol/module/DOM;)Lcom/facebook/stetho/inspector/helper/ChromePeerManager;

    move-result-object v1

    const-string v2, "DOM.attributeRemoved"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/stetho/inspector/helper/ChromePeerManager;->sendNotificationToPeers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 339
    return-void
.end method

.method public onChildNodeInserted(Lcom/facebook/stetho/inspector/elements/DocumentView;Ljava/lang/Object;IILcom/facebook/stetho/common/Accumulator;)V
    .locals 3
    .param p1, "view"    # Lcom/facebook/stetho/inspector/elements/DocumentView;
    .param p2, "element"    # Ljava/lang/Object;
    .param p3, "parentNodeId"    # I
    .param p4, "previousNodeId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/stetho/inspector/elements/DocumentView;",
            "Ljava/lang/Object;",
            "II",
            "Lcom/facebook/stetho/common/Accumulator",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 373
    .local p5, "insertedElements":Lcom/facebook/stetho/common/Accumulator;, "Lcom/facebook/stetho/common/Accumulator<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/facebook/stetho/inspector/protocol/module/DOM$DocumentUpdateListener;->this$0:Lcom/facebook/stetho/inspector/protocol/module/DOM;

    invoke-static {v1}, Lcom/facebook/stetho/inspector/protocol/module/DOM;->access$1700(Lcom/facebook/stetho/inspector/protocol/module/DOM;)Lcom/facebook/stetho/inspector/protocol/module/DOM$ChildNodeInsertedEvent;

    move-result-object v0

    .line 375
    .local v0, "insertedEvent":Lcom/facebook/stetho/inspector/protocol/module/DOM$ChildNodeInsertedEvent;
    iput p3, v0, Lcom/facebook/stetho/inspector/protocol/module/DOM$ChildNodeInsertedEvent;->parentNodeId:I

    .line 376
    iput p4, v0, Lcom/facebook/stetho/inspector/protocol/module/DOM$ChildNodeInsertedEvent;->previousNodeId:I

    .line 377
    iget-object v1, p0, Lcom/facebook/stetho/inspector/protocol/module/DOM$DocumentUpdateListener;->this$0:Lcom/facebook/stetho/inspector/protocol/module/DOM;

    invoke-static {v1, p2, p1}, Lcom/facebook/stetho/inspector/protocol/module/DOM;->access$400(Lcom/facebook/stetho/inspector/protocol/module/DOM;Ljava/lang/Object;Lcom/facebook/stetho/inspector/elements/DocumentView;)Lcom/facebook/stetho/inspector/protocol/module/DOM$Node;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/stetho/inspector/protocol/module/DOM$ChildNodeInsertedEvent;->node:Lcom/facebook/stetho/inspector/protocol/module/DOM$Node;

    .line 379
    invoke-interface {p5, p2}, Lcom/facebook/stetho/common/Accumulator;->store(Ljava/lang/Object;)V

    .line 380
    iget-object v1, p0, Lcom/facebook/stetho/inspector/protocol/module/DOM$DocumentUpdateListener;->this$0:Lcom/facebook/stetho/inspector/protocol/module/DOM;

    invoke-static {v1}, Lcom/facebook/stetho/inspector/protocol/module/DOM;->access$1200(Lcom/facebook/stetho/inspector/protocol/module/DOM;)Lcom/facebook/stetho/inspector/helper/ChromePeerManager;

    move-result-object v1

    const-string v2, "DOM.childNodeInserted"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/stetho/inspector/helper/ChromePeerManager;->sendNotificationToPeers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 382
    iget-object v1, p0, Lcom/facebook/stetho/inspector/protocol/module/DOM$DocumentUpdateListener;->this$0:Lcom/facebook/stetho/inspector/protocol/module/DOM;

    invoke-static {v1, v0}, Lcom/facebook/stetho/inspector/protocol/module/DOM;->access$1800(Lcom/facebook/stetho/inspector/protocol/module/DOM;Lcom/facebook/stetho/inspector/protocol/module/DOM$ChildNodeInsertedEvent;)V

    .line 383
    return-void
.end method

.method public onChildNodeRemoved(II)V
    .locals 3
    .param p1, "parentNodeId"    # I
    .param p2, "nodeId"    # I

    .prologue
    .line 358
    iget-object v1, p0, Lcom/facebook/stetho/inspector/protocol/module/DOM$DocumentUpdateListener;->this$0:Lcom/facebook/stetho/inspector/protocol/module/DOM;

    invoke-static {v1}, Lcom/facebook/stetho/inspector/protocol/module/DOM;->access$1500(Lcom/facebook/stetho/inspector/protocol/module/DOM;)Lcom/facebook/stetho/inspector/protocol/module/DOM$ChildNodeRemovedEvent;

    move-result-object v0

    .line 360
    .local v0, "removedEvent":Lcom/facebook/stetho/inspector/protocol/module/DOM$ChildNodeRemovedEvent;
    iput p1, v0, Lcom/facebook/stetho/inspector/protocol/module/DOM$ChildNodeRemovedEvent;->parentNodeId:I

    .line 361
    iput p2, v0, Lcom/facebook/stetho/inspector/protocol/module/DOM$ChildNodeRemovedEvent;->nodeId:I

    .line 362
    iget-object v1, p0, Lcom/facebook/stetho/inspector/protocol/module/DOM$DocumentUpdateListener;->this$0:Lcom/facebook/stetho/inspector/protocol/module/DOM;

    invoke-static {v1}, Lcom/facebook/stetho/inspector/protocol/module/DOM;->access$1200(Lcom/facebook/stetho/inspector/protocol/module/DOM;)Lcom/facebook/stetho/inspector/helper/ChromePeerManager;

    move-result-object v1

    const-string v2, "DOM.childNodeRemoved"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/stetho/inspector/helper/ChromePeerManager;->sendNotificationToPeers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 364
    iget-object v1, p0, Lcom/facebook/stetho/inspector/protocol/module/DOM$DocumentUpdateListener;->this$0:Lcom/facebook/stetho/inspector/protocol/module/DOM;

    invoke-static {v1, v0}, Lcom/facebook/stetho/inspector/protocol/module/DOM;->access$1600(Lcom/facebook/stetho/inspector/protocol/module/DOM;Lcom/facebook/stetho/inspector/protocol/module/DOM$ChildNodeRemovedEvent;)V

    .line 365
    return-void
.end method

.method public onInspectRequested(Ljava/lang/Object;)V
    .locals 5
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 342
    iget-object v2, p0, Lcom/facebook/stetho/inspector/protocol/module/DOM$DocumentUpdateListener;->this$0:Lcom/facebook/stetho/inspector/protocol/module/DOM;

    invoke-static {v2}, Lcom/facebook/stetho/inspector/protocol/module/DOM;->access$300(Lcom/facebook/stetho/inspector/protocol/module/DOM;)Lcom/facebook/stetho/inspector/elements/Document;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/facebook/stetho/inspector/elements/Document;->getNodeIdForElement(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    .line 343
    .local v1, "nodeId":Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 344
    const-string v2, "DocumentProvider.Listener.onInspectRequested() called for a non-mapped node: element=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/facebook/stetho/common/LogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    :goto_0
    return-void

    .line 349
    :cond_0
    new-instance v0, Lcom/facebook/stetho/inspector/protocol/module/DOM$InspectNodeRequestedEvent;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/facebook/stetho/inspector/protocol/module/DOM$InspectNodeRequestedEvent;-><init>(Lcom/facebook/stetho/inspector/protocol/module/DOM$1;)V

    .line 350
    .local v0, "message":Lcom/facebook/stetho/inspector/protocol/module/DOM$InspectNodeRequestedEvent;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lcom/facebook/stetho/inspector/protocol/module/DOM$InspectNodeRequestedEvent;->nodeId:I

    .line 351
    iget-object v2, p0, Lcom/facebook/stetho/inspector/protocol/module/DOM$DocumentUpdateListener;->this$0:Lcom/facebook/stetho/inspector/protocol/module/DOM;

    invoke-static {v2}, Lcom/facebook/stetho/inspector/protocol/module/DOM;->access$1200(Lcom/facebook/stetho/inspector/protocol/module/DOM;)Lcom/facebook/stetho/inspector/helper/ChromePeerManager;

    move-result-object v2

    const-string v3, "DOM.inspectNodeRequested"

    invoke-virtual {v2, v3, v0}, Lcom/facebook/stetho/inspector/helper/ChromePeerManager;->sendNotificationToPeers(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
