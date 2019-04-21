.class Lcom/mcdonalds/app/social/SocialLoginFragment$2;
.super Ljava/lang/Object;
.source "SocialLoginFragment.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/social/SocialLoginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/social/SocialLoginFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/social/SocialLoginFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/social/SocialLoginFragment;

    .prologue
    .line 503
    iput-object p1, p0, Lcom/mcdonalds/app/social/SocialLoginFragment$2;->this$0:Lcom/mcdonalds/app/social/SocialLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    const/4 v3, 0x2

    const-string v0, "call"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    aput-object p3, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 507
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment$2;->this$0:Lcom/mcdonalds/app/social/SocialLoginFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/social/SocialLoginFragment;->access$300(Lcom/mcdonalds/app/social/SocialLoginFragment;)Lcom/mcdonalds/sdk/modules/models/SocialNetwork;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment$2;->this$0:Lcom/mcdonalds/app/social/SocialLoginFragment;

    .line 508
    invoke-static {v0}, Lcom/mcdonalds/app/social/SocialLoginFragment;->access$300(Lcom/mcdonalds/app/social/SocialLoginFragment;)Lcom/mcdonalds/sdk/modules/models/SocialNetwork;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->getType()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 512
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/SessionState;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 513
    const-string v0, "Facebook Session open..."

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/log/MCDLog;->temp(Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment$2;->this$0:Lcom/mcdonalds/app/social/SocialLoginFragment;

    invoke-static {v0, p1}, Lcom/mcdonalds/app/social/SocialLoginFragment;->access$400(Lcom/mcdonalds/app/social/SocialLoginFragment;Lcom/facebook/Session;)V

    .line 524
    :cond_1
    :goto_0
    return-void

    .line 516
    :cond_2
    invoke-virtual {p2}, Lcom/facebook/SessionState;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    const-string v0, "Facebook Session closed..."

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/log/MCDLog;->temp(Ljava/lang/String;)V

    goto :goto_0
.end method
