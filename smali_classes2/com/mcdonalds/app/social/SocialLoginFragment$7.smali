.class Lcom/mcdonalds/app/social/SocialLoginFragment$7;
.super Ljava/lang/Object;
.source "SocialLoginFragment.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/social/SocialLoginFragment;->deauthorizeActiveFacebookAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/social/SocialLoginFragment;

.field final synthetic val$session:Lcom/facebook/Session;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/social/SocialLoginFragment;Lcom/facebook/Session;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/social/SocialLoginFragment;

    .prologue
    .line 834
    iput-object p1, p0, Lcom/mcdonalds/app/social/SocialLoginFragment$7;->this$0:Lcom/mcdonalds/app/social/SocialLoginFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/social/SocialLoginFragment$7;->val$session:Lcom/facebook/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 3
    .param p1, "response"    # Lcom/facebook/Response;

    .prologue
    const-string v0, "onCompleted"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 836
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment$7;->val$session:Lcom/facebook/Session;

    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 841
    return-void
.end method
