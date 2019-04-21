.class Lcom/mcdonalds/app/social/SocialLoginFragment$6;
.super Ljava/lang/Object;
.source "SocialLoginFragment.java"

# interfaces
.implements Lcom/facebook/Request$GraphUserCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/social/SocialLoginFragment;->acquireFacebookUserInfo(Lcom/facebook/Session;)V
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
    .line 754
    iput-object p1, p0, Lcom/mcdonalds/app/social/SocialLoginFragment$6;->this$0:Lcom/mcdonalds/app/social/SocialLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/model/GraphUser;Lcom/facebook/Response;)V
    .locals 4
    .param p1, "user"    # Lcom/facebook/model/GraphUser;
    .param p2, "response"    # Lcom/facebook/Response;

    .prologue
    const/4 v3, 0x0

    const-string v0, "onCompleted"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 757
    if-eqz p1, :cond_0

    .line 758
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment$6;->this$0:Lcom/mcdonalds/app/social/SocialLoginFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mcdonalds/app/social/SocialLoginFragment;->access$302(Lcom/mcdonalds/app/social/SocialLoginFragment;Lcom/mcdonalds/sdk/modules/models/SocialNetwork;)Lcom/mcdonalds/sdk/modules/models/SocialNetwork;

    .line 759
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment$6;->this$0:Lcom/mcdonalds/app/social/SocialLoginFragment;

    invoke-static {v0, p1}, Lcom/mcdonalds/app/social/SocialLoginFragment;->access$800(Lcom/mcdonalds/app/social/SocialLoginFragment;Lcom/facebook/model/GraphUser;)V

    .line 763
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment$6;->this$0:Lcom/mcdonalds/app/social/SocialLoginFragment;

    invoke-static {v0, v3}, Lcom/mcdonalds/app/social/SocialLoginFragment;->access$902(Lcom/mcdonalds/app/social/SocialLoginFragment;Z)Z

    .line 764
    return-void

    .line 761
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object v0

    throw v0
.end method
