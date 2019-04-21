.class Lcom/facebook/stetho/inspector/database/DatabasePeerManager$1;
.super Ljava/lang/Object;
.source "DatabasePeerManager.java"

# interfaces
.implements Lcom/facebook/stetho/inspector/helper/PeerRegistrationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/stetho/inspector/database/DatabasePeerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/stetho/inspector/database/DatabasePeerManager;


# direct methods
.method constructor <init>(Lcom/facebook/stetho/inspector/database/DatabasePeerManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/stetho/inspector/database/DatabasePeerManager;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/facebook/stetho/inspector/database/DatabasePeerManager$1;->this$0:Lcom/facebook/stetho/inspector/database/DatabasePeerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPeerRegistered(Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;)V
    .locals 1
    .param p1, "peer"    # Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/facebook/stetho/inspector/database/DatabasePeerManager$1;->this$0:Lcom/facebook/stetho/inspector/database/DatabasePeerManager;

    invoke-static {v0, p1}, Lcom/facebook/stetho/inspector/database/DatabasePeerManager;->access$000(Lcom/facebook/stetho/inspector/database/DatabasePeerManager;Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;)V

    .line 234
    return-void
.end method

.method public onPeerUnregistered(Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;)V
    .locals 0
    .param p1, "peer"    # Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;

    .prologue
    .line 238
    return-void
.end method
