.class Lcom/mcdonalds/app/customer/SignUpFragment$9;
.super Ljava/lang/Object;
.source "SignUpFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/customer/SignUpFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/customer/SignUpFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/customer/SignUpFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/customer/SignUpFragment;

    .prologue
    .line 881
    iput-object p1, p0, Lcom/mcdonalds/app/customer/SignUpFragment$9;->this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v2, "onClick"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 887
    const-string v2, "registerTOC"

    invoke-static {v2}, Lcom/mcdonalds/app/util/AppUtils;->getLocalisedLegalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 888
    .local v1, "termsURL":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 890
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 891
    .local v0, "attributes":Landroid/os/Bundle;
    const-string v2, "link"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignUpFragment$9;->this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    const-class v3, Lcom/mcdonalds/app/web/WebActivity;

    invoke-virtual {v2, v3, v0}, Lcom/mcdonalds/app/customer/SignUpFragment;->startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 899
    .end local v0    # "attributes":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 897
    :cond_0
    const-string v2, "No Terms and Condition URL Defined"

    invoke-static {v2}, Lcom/mcdonalds/sdk/AsyncException;->report(Ljava/lang/String;)V

    goto :goto_0
.end method
