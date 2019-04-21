.class Lcom/mcdonalds/app/account/ChangeBirthdateFragment$1$1;
.super Ljava/lang/Object;
.source "ChangeBirthdateFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/account/ChangeBirthdateFragment$1;->onClick(Landroid/view/View;)V
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
        "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/account/ChangeBirthdateFragment$1;

.field final synthetic val$oldBirthdate:Ljava/util/Calendar;

.field final synthetic val$profile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/ChangeBirthdateFragment$1;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/util/Calendar;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/account/ChangeBirthdateFragment$1;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/mcdonalds/app/account/ChangeBirthdateFragment$1$1;->this$1:Lcom/mcdonalds/app/account/ChangeBirthdateFragment$1;

    iput-object p2, p0, Lcom/mcdonalds/app/account/ChangeBirthdateFragment$1$1;->val$profile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iput-object p3, p0, Lcom/mcdonalds/app/account/ChangeBirthdateFragment$1$1;->val$oldBirthdate:Ljava/util/Calendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const-string v1, "onResponse"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 120
    if-nez p3, :cond_0

    if-eqz p1, :cond_0

    .line 121
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 122
    .local v0, "resultIntent":Landroid/content/Intent;
    const-string v1, "birthdate"

    invoke-static {}, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->access$100()Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeBirthdateFragment$1$1;->this$1:Lcom/mcdonalds/app/account/ChangeBirthdateFragment$1;

    iget-object v1, v1, Lcom/mcdonalds/app/account/ChangeBirthdateFragment$1;->this$0:Lcom/mcdonalds/app/account/ChangeBirthdateFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->setResult(ILandroid/content/Intent;)V

    .line 124
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeBirthdateFragment$1$1;->this$1:Lcom/mcdonalds/app/account/ChangeBirthdateFragment$1;

    iget-object v1, v1, Lcom/mcdonalds/app/account/ChangeBirthdateFragment$1;->this$0:Lcom/mcdonalds/app/account/ChangeBirthdateFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->finish()V

    .line 130
    .end local v0    # "resultIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeBirthdateFragment$1$1;->val$profile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeBirthdateFragment$1$1;->val$oldBirthdate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setBirthDate(Ljava/util/Calendar;)V

    .line 127
    invoke-static {}, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->access$100()Landroid/widget/Button;

    move-result-object v1

    invoke-static {}, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 128
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

    .line 116
    check-cast p1, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/account/ChangeBirthdateFragment$1$1;->onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
