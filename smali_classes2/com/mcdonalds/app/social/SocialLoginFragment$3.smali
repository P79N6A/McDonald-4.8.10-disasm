.class Lcom/mcdonalds/app/social/SocialLoginFragment$3;
.super Ljava/lang/Object;
.source "SocialLoginFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/social/SocialLoginFragment;->weChatRequestForToken(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/AsyncListener",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/model/MWWechatInfoData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/social/SocialLoginFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/social/SocialLoginFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/social/SocialLoginFragment;

    .prologue
    .line 569
    iput-object p1, p0, Lcom/mcdonalds/app/social/SocialLoginFragment$3;->this$0:Lcom/mcdonalds/app/social/SocialLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/connectors/middleware/model/MWWechatInfoData;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWWechatInfoData;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 572
    if-nez p3, :cond_0

    .line 573
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment$3;->this$0:Lcom/mcdonalds/app/social/SocialLoginFragment;

    iget-object v1, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWWechatInfoData;->accessToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/mcdonalds/app/social/SocialLoginFragment;->acces_token:Ljava/lang/String;

    .line 574
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment$3;->this$0:Lcom/mcdonalds/app/social/SocialLoginFragment;

    iget-object v1, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWWechatInfoData;->internalID:Ljava/lang/String;

    iput-object v1, v0, Lcom/mcdonalds/app/social/SocialLoginFragment;->openid:Ljava/lang/String;

    .line 575
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment$3;->this$0:Lcom/mcdonalds/app/social/SocialLoginFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/social/SocialLoginFragment$3;->this$0:Lcom/mcdonalds/app/social/SocialLoginFragment;

    iget-object v1, v1, Lcom/mcdonalds/app/social/SocialLoginFragment;->acces_token:Ljava/lang/String;

    iget-object v2, p0, Lcom/mcdonalds/app/social/SocialLoginFragment$3;->this$0:Lcom/mcdonalds/app/social/SocialLoginFragment;

    iget-object v2, v2, Lcom/mcdonalds/app/social/SocialLoginFragment;->openid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/social/SocialLoginFragment;->weChatRequestForUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    :goto_0
    return-void

    .line 577
    :cond_0
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3

    .prologue
    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 569
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWWechatInfoData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/social/SocialLoginFragment$3;->onResponse(Lcom/mcdonalds/sdk/connectors/middleware/model/MWWechatInfoData;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
