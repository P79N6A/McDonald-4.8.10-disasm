.class final Lcom/facebook/stetho/inspector/elements/Document$ProviderListener;
.super Ljava/lang/Object;
.source "Document.java"

# interfaces
.implements Lcom/facebook/stetho/inspector/elements/DocumentProviderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/stetho/inspector/elements/Document;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/stetho/inspector/elements/Document;


# direct methods
.method private constructor <init>(Lcom/facebook/stetho/inspector/elements/Document;)V
    .locals 0

    .prologue
    .line 644
    iput-object p1, p0, Lcom/facebook/stetho/inspector/elements/Document$ProviderListener;->this$0:Lcom/facebook/stetho/inspector/elements/Document;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/stetho/inspector/elements/Document;Lcom/facebook/stetho/inspector/elements/Document$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/stetho/inspector/elements/Document;
    .param p2, "x1"    # Lcom/facebook/stetho/inspector/elements/Document$1;

    .prologue
    .line 644
    invoke-direct {p0, p1}, Lcom/facebook/stetho/inspector/elements/Document$ProviderListener;-><init>(Lcom/facebook/stetho/inspector/elements/Document;)V

    return-void
.end method


# virtual methods
.method public onAttributeModified(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 652
    iget-object v0, p0, Lcom/facebook/stetho/inspector/elements/Document$ProviderListener;->this$0:Lcom/facebook/stetho/inspector/elements/Document;

    invoke-virtual {v0}, Lcom/facebook/stetho/inspector/elements/Document;->verifyThreadAccess()V

    .line 653
    iget-object v0, p0, Lcom/facebook/stetho/inspector/elements/Document$ProviderListener;->this$0:Lcom/facebook/stetho/inspector/elements/Document;

    invoke-static {v0}, Lcom/facebook/stetho/inspector/elements/Document;->access$700(Lcom/facebook/stetho/inspector/elements/Document;)Lcom/facebook/stetho/inspector/elements/Document$UpdateListenerCollection;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/stetho/inspector/elements/Document$UpdateListenerCollection;->onAttributeModified(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    return-void
.end method

.method public onAttributeRemoved(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 658
    iget-object v0, p0, Lcom/facebook/stetho/inspector/elements/Document$ProviderListener;->this$0:Lcom/facebook/stetho/inspector/elements/Document;

    invoke-virtual {v0}, Lcom/facebook/stetho/inspector/elements/Document;->verifyThreadAccess()V

    .line 659
    iget-object v0, p0, Lcom/facebook/stetho/inspector/elements/Document$ProviderListener;->this$0:Lcom/facebook/stetho/inspector/elements/Document;

    invoke-static {v0}, Lcom/facebook/stetho/inspector/elements/Document;->access$700(Lcom/facebook/stetho/inspector/elements/Document;)Lcom/facebook/stetho/inspector/elements/Document$UpdateListenerCollection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/stetho/inspector/elements/Document$UpdateListenerCollection;->onAttributeRemoved(Ljava/lang/Object;Ljava/lang/String;)V

    .line 660
    return-void
.end method

.method public onInspectRequested(Ljava/lang/Object;)V
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 664
    iget-object v0, p0, Lcom/facebook/stetho/inspector/elements/Document$ProviderListener;->this$0:Lcom/facebook/stetho/inspector/elements/Document;

    invoke-virtual {v0}, Lcom/facebook/stetho/inspector/elements/Document;->verifyThreadAccess()V

    .line 665
    iget-object v0, p0, Lcom/facebook/stetho/inspector/elements/Document$ProviderListener;->this$0:Lcom/facebook/stetho/inspector/elements/Document;

    invoke-static {v0}, Lcom/facebook/stetho/inspector/elements/Document;->access$700(Lcom/facebook/stetho/inspector/elements/Document;)Lcom/facebook/stetho/inspector/elements/Document$UpdateListenerCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/stetho/inspector/elements/Document$UpdateListenerCollection;->onInspectRequested(Ljava/lang/Object;)V

    .line 666
    return-void
.end method

.method public onPossiblyChanged()V
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/facebook/stetho/inspector/elements/Document$ProviderListener;->this$0:Lcom/facebook/stetho/inspector/elements/Document;

    invoke-static {v0}, Lcom/facebook/stetho/inspector/elements/Document;->access$1200(Lcom/facebook/stetho/inspector/elements/Document;)V

    .line 648
    return-void
.end method
