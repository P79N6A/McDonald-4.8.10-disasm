.class Lcom/mcdonalds/app/customer/ChooseMethodView$1;
.super Lcom/mcdonalds/app/ui/animation/AnimatorEndListener;
.source "ChooseMethodView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/customer/ChooseMethodView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/customer/ChooseMethodView;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/customer/ChooseMethodView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/customer/ChooseMethodView;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/mcdonalds/app/customer/ChooseMethodView$1;->this$0:Lcom/mcdonalds/app/customer/ChooseMethodView;

    invoke-direct {p0}, Lcom/mcdonalds/app/ui/animation/AnimatorEndListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    const-string v0, "onAnimationEnd"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    .line 112
    iget-object v0, p0, Lcom/mcdonalds/app/customer/ChooseMethodView$1;->this$0:Lcom/mcdonalds/app/customer/ChooseMethodView;

    invoke-static {v0}, Lcom/mcdonalds/app/customer/ChooseMethodView;->access$000(Lcom/mcdonalds/app/customer/ChooseMethodView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/mcdonalds/app/customer/ChooseMethodView$1;->this$0:Lcom/mcdonalds/app/customer/ChooseMethodView;

    invoke-static {v0}, Lcom/mcdonalds/app/customer/ChooseMethodView;->access$100(Lcom/mcdonalds/app/customer/ChooseMethodView;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 126
    iget-object v0, p0, Lcom/mcdonalds/app/customer/ChooseMethodView$1;->this$0:Lcom/mcdonalds/app/customer/ChooseMethodView;

    invoke-static {v0}, Lcom/mcdonalds/app/customer/ChooseMethodView;->access$200(Lcom/mcdonalds/app/customer/ChooseMethodView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/mcdonalds/app/customer/ChooseMethodView$1;->this$0:Lcom/mcdonalds/app/customer/ChooseMethodView;

    invoke-static {v0}, Lcom/mcdonalds/app/customer/ChooseMethodView;->access$300(Lcom/mcdonalds/app/customer/ChooseMethodView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 130
    :goto_0
    return-void

    .line 116
    :pswitch_0
    iget-object v0, p0, Lcom/mcdonalds/app/customer/ChooseMethodView$1;->this$0:Lcom/mcdonalds/app/customer/ChooseMethodView;

    invoke-static {v0}, Lcom/mcdonalds/app/customer/ChooseMethodView;->access$200(Lcom/mcdonalds/app/customer/ChooseMethodView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/mcdonalds/app/customer/ChooseMethodView$1;->this$0:Lcom/mcdonalds/app/customer/ChooseMethodView;

    invoke-static {v0}, Lcom/mcdonalds/app/customer/ChooseMethodView;->access$300(Lcom/mcdonalds/app/customer/ChooseMethodView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 121
    :pswitch_1
    iget-object v0, p0, Lcom/mcdonalds/app/customer/ChooseMethodView$1;->this$0:Lcom/mcdonalds/app/customer/ChooseMethodView;

    invoke-static {v0}, Lcom/mcdonalds/app/customer/ChooseMethodView;->access$300(Lcom/mcdonalds/app/customer/ChooseMethodView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/mcdonalds/app/customer/ChooseMethodView$1;->this$0:Lcom/mcdonalds/app/customer/ChooseMethodView;

    invoke-static {v0}, Lcom/mcdonalds/app/customer/ChooseMethodView;->access$200(Lcom/mcdonalds/app/customer/ChooseMethodView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
