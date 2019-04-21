.class Lcom/mcdonalds/app/account/ChangeGenderFragment$2;
.super Ljava/lang/Object;
.source "ChangeGenderFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/account/ChangeGenderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/account/ChangeGenderFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/ChangeGenderFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/ChangeGenderFragment;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/mcdonalds/app/account/ChangeGenderFragment$2;->this$0:Lcom/mcdonalds/app/account/ChangeGenderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "onItemSelected"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p4, p5}, Ljava/lang/Long;-><init>(J)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeGenderFragment$2;->this$0:Lcom/mcdonalds/app/account/ChangeGenderFragment;

    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeGenderFragment$2;->this$0:Lcom/mcdonalds/app/account/ChangeGenderFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/account/ChangeGenderFragment;->access$300(Lcom/mcdonalds/app/account/ChangeGenderFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/mcdonalds/app/account/ChangeGenderFragment;->access$002(Lcom/mcdonalds/app/account/ChangeGenderFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeGenderFragment$2;->this$0:Lcom/mcdonalds/app/account/ChangeGenderFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/account/ChangeGenderFragment;->access$400(Lcom/mcdonalds/app/account/ChangeGenderFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeGenderFragment$2;->this$0:Lcom/mcdonalds/app/account/ChangeGenderFragment;

    invoke-static {v0, v4}, Lcom/mcdonalds/app/account/ChangeGenderFragment;->access$402(Lcom/mcdonalds/app/account/ChangeGenderFragment;Z)Z

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-static {}, Lcom/mcdonalds/app/account/ChangeGenderFragment;->access$500()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v0, "onNothingSelected"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    return-void
.end method
