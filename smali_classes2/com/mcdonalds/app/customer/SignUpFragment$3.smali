.class Lcom/mcdonalds/app/customer/SignUpFragment$3;
.super Landroid/text/style/ClickableSpan;
.source "SignUpFragment.java"


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


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment$3;->this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/customer/SignUpFragment;->access$200(Lcom/mcdonalds/app/customer/SignUpFragment;)V

    .line 397
    return-void
.end method
