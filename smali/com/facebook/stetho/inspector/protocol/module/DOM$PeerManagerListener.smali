.class final Lcom/facebook/stetho/inspector/protocol/module/DOM$PeerManagerListener;
.super Lcom/facebook/stetho/inspector/helper/PeersRegisteredListener;
.source "DOM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/stetho/inspector/protocol/module/DOM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PeerManagerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/stetho/inspector/protocol/module/DOM;


# direct methods
.method private constructor <init>(Lcom/facebook/stetho/inspector/protocol/module/DOM;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/facebook/stetho/inspector/protocol/module/DOM$PeerManagerListener;->this$0:Lcom/facebook/stetho/inspector/protocol/module/DOM;

    invoke-direct {p0}, Lcom/facebook/stetho/inspector/helper/PeersRegisteredListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/stetho/inspector/protocol/module/DOM;Lcom/facebook/stetho/inspector/protocol/module/DOM$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/stetho/inspector/protocol/module/DOM;
    .param p2, "x1"    # Lcom/facebook/stetho/inspector/protocol/module/DOM$1;

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lcom/facebook/stetho/inspector/protocol/module/DOM$PeerManagerListener;-><init>(Lcom/facebook/stetho/inspector/protocol/module/DOM;)V

    return-void
.end method


# virtual methods
.method protected declared-synchronized onFirstPeerRegistered()V
    .locals 2

    .prologue
    .line 389
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/stetho/inspector/protocol/module/DOM$PeerManagerListener;->this$0:Lcom/facebook/stetho/inspector/protocol/module/DOM;

    invoke-static {v0}, Lcom/facebook/stetho/inspector/protocol/module/DOM;->access$300(Lcom/facebook/stetho/inspector/protocol/module/DOM;)Lcom/facebook/stetho/inspector/elements/Document;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/stetho/inspector/elements/Document;->addRef()V

    .line 390
    iget-object v0, p0, Lcom/facebook/stetho/inspector/protocol/module/DOM$PeerManagerListener;->this$0:Lcom/facebook/stetho/inspector/protocol/module/DOM;

    invoke-static {v0}, Lcom/facebook/stetho/inspector/protocol/module/DOM;->access$300(Lcom/facebook/stetho/inspector/protocol/module/DOM;)Lcom/facebook/stetho/inspector/elements/Document;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/stetho/inspector/protocol/module/DOM$PeerManagerListener;->this$0:Lcom/facebook/stetho/inspector/protocol/module/DOM;

    invoke-static {v1}, Lcom/facebook/stetho/inspector/protocol/module/DOM;->access$1900(Lcom/facebook/stetho/inspector/protocol/module/DOM;)Lcom/facebook/stetho/inspector/protocol/module/DOM$DocumentUpdateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/stetho/inspector/elements/Document;->addUpdateListener(Lcom/facebook/stetho/inspector/elements/Document$UpdateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    monitor-exit p0

    return-void

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onLastPeerUnregistered()V
    .locals 2

    .prologue
    .line 395
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/stetho/inspector/protocol/module/DOM$PeerManagerListener;->this$0:Lcom/facebook/stetho/inspector/protocol/module/DOM;

    invoke-static {v0}, Lcom/facebook/stetho/inspector/protocol/module/DOM;->access$2000(Lcom/facebook/stetho/inspector/protocol/module/DOM;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 396
    iget-object v0, p0, Lcom/facebook/stetho/inspector/protocol/module/DOM$PeerManagerListener;->this$0:Lcom/facebook/stetho/inspector/protocol/module/DOM;

    invoke-static {v0}, Lcom/facebook/stetho/inspector/protocol/module/DOM;->access$300(Lcom/facebook/stetho/inspector/protocol/module/DOM;)Lcom/facebook/stetho/inspector/elements/Document;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/stetho/inspector/protocol/module/DOM$PeerManagerListener;->this$0:Lcom/facebook/stetho/inspector/protocol/module/DOM;

    invoke-static {v1}, Lcom/facebook/stetho/inspector/protocol/module/DOM;->access$1900(Lcom/facebook/stetho/inspector/protocol/module/DOM;)Lcom/facebook/stetho/inspector/protocol/module/DOM$DocumentUpdateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/stetho/inspector/elements/Document;->removeUpdateListener(Lcom/facebook/stetho/inspector/elements/Document$UpdateListener;)V

    .line 397
    iget-object v0, p0, Lcom/facebook/stetho/inspector/protocol/module/DOM$PeerManagerListener;->this$0:Lcom/facebook/stetho/inspector/protocol/module/DOM;

    invoke-static {v0}, Lcom/facebook/stetho/inspector/protocol/module/DOM;->access$300(Lcom/facebook/stetho/inspector/protocol/module/DOM;)Lcom/facebook/stetho/inspector/elements/Document;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/stetho/inspector/elements/Document;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    monitor-exit p0

    return-void

    .line 395
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
