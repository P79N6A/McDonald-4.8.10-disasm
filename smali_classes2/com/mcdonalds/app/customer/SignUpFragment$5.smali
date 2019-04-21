.class Lcom/mcdonalds/app/customer/SignUpFragment$5;
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
    .line 666
    iput-object p1, p0, Lcom/mcdonalds/app/customer/SignUpFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 671
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/customer/SignUpFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Continue"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/customer/SignUpFragment;->access$600(Lcom/mcdonalds/app/customer/SignUpFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/customer/SignUpFragment;->access$700(Lcom/mcdonalds/app/customer/SignUpFragment;)V

    .line 689
    :goto_0
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/customer/SignUpFragment;->access$1600(Lcom/mcdonalds/app/customer/SignUpFragment;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 690
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/customer/SignUpFragment;->access$1700(Lcom/mcdonalds/app/customer/SignUpFragment;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 691
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/customer/SignUpFragment;->access$1800(Lcom/mcdonalds/app/customer/SignUpFragment;)V

    .line 698
    :goto_1
    return-void

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/customer/SignUpFragment;->access$800(Lcom/mcdonalds/app/customer/SignUpFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 675
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/customer/SignUpFragment;->access$900(Lcom/mcdonalds/app/customer/SignUpFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/customer/SignUpFragment;->access$1000(Lcom/mcdonalds/app/customer/SignUpFragment;Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 676
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/customer/SignUpFragment;->access$1100(Lcom/mcdonalds/app/customer/SignUpFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/customer/SignUpFragment;->access$900(Lcom/mcdonalds/app/customer/SignUpFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setFirstName(Ljava/lang/String;)V

    .line 680
    :goto_2
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/customer/SignUpFragment;->access$1200(Lcom/mcdonalds/app/customer/SignUpFragment;)Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    const-string v1, "birthDate"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/LoginManager;->showField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/customer/SignUpFragment;->access$1100(Lcom/mcdonalds/app/customer/SignUpFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    invoke-static {}, Lcom/mcdonalds/app/customer/SignUpFragment;->access$1300()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setBirthDate(Ljava/util/Calendar;)V

    .line 683
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/customer/SignUpFragment;->access$1100(Lcom/mcdonalds/app/customer/SignUpFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignUpFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/customer/SignUpFragment;->access$1400(Lcom/mcdonalds/app/customer/SignUpFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mcdonalds/app/customer/SignUpFragment;->access$1000(Lcom/mcdonalds/app/customer/SignUpFragment;Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setMobileNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 678
    :cond_2
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/customer/SignUpFragment;->access$1100(Lcom/mcdonalds/app/customer/SignUpFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignUpFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/customer/SignUpFragment;->access$900(Lcom/mcdonalds/app/customer/SignUpFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mcdonalds/app/customer/SignUpFragment;->access$1000(Lcom/mcdonalds/app/customer/SignUpFragment;Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setFirstName(Ljava/lang/String;)V

    goto :goto_2

    .line 685
    :cond_3
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/customer/SignUpFragment;->access$1500(Lcom/mcdonalds/app/customer/SignUpFragment;)V

    .line 686
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/customer/SignUpFragment;->access$1100(Lcom/mcdonalds/app/customer/SignUpFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUsingSocialLogin(Z)V

    goto/16 :goto_0

    .line 693
    :cond_4
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/customer/SignUpFragment;->access$1900(Lcom/mcdonalds/app/customer/SignUpFragment;)V

    goto/16 :goto_1

    .line 696
    :cond_5
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/customer/SignUpFragment;->access$2000(Lcom/mcdonalds/app/customer/SignUpFragment;)V

    goto/16 :goto_1
.end method
