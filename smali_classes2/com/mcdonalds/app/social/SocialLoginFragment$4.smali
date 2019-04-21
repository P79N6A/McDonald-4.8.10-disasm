.class Lcom/mcdonalds/app/social/SocialLoginFragment$4;
.super Ljava/lang/Object;
.source "SocialLoginFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/social/SocialLoginFragment;->weChatRequestForUserInfo(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/social/SocialLoginFragment;

.field final synthetic val$access_token:Ljava/lang/String;

.field final synthetic val$openid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/social/SocialLoginFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/social/SocialLoginFragment;

    .prologue
    .line 625
    iput-object p1, p0, Lcom/mcdonalds/app/social/SocialLoginFragment$4;->this$0:Lcom/mcdonalds/app/social/SocialLoginFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/social/SocialLoginFragment$4;->val$access_token:Ljava/lang/String;

    iput-object p3, p0, Lcom/mcdonalds/app/social/SocialLoginFragment$4;->val$openid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-string v4, "run"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 628
    invoke-static {}, Lcom/mcdonalds/app/social/SocialLoginFragment;->access$500()Ljava/lang/String;

    move-result-object v2

    .line 629
    .local v2, "request":Ljava/lang/String;
    const-string v4, "ACCESS_TOKEN"

    iget-object v5, p0, Lcom/mcdonalds/app/social/SocialLoginFragment$4;->val$access_token:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 630
    const-string v4, "OPENID"

    iget-object v5, p0, Lcom/mcdonalds/app/social/SocialLoginFragment$4;->val$openid:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 631
    const/4 v3, 0x0

    .line 634
    .local v3, "response":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/mcdonalds/app/social/SocialLoginFragment$4;->this$0:Lcom/mcdonalds/app/social/SocialLoginFragment;

    invoke-static {v4, v2}, Lcom/mcdonalds/app/social/SocialLoginFragment;->access$600(Lcom/mcdonalds/app/social/SocialLoginFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 635
    new-instance v4, Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 637
    .local v1, "obj":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/mcdonalds/app/social/SocialLoginFragment$4;->this$0:Lcom/mcdonalds/app/social/SocialLoginFragment;

    const-string v5, "nickname"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/mcdonalds/app/social/SocialLoginFragment;->nickName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 652
    .end local v1    # "obj":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 647
    :catch_0
    move-exception v0

    .line 648
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 649
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    goto :goto_0
.end method
