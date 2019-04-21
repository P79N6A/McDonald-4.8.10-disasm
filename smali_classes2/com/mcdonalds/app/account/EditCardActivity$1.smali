.class Lcom/mcdonalds/app/account/EditCardActivity$1;
.super Ljava/lang/Object;
.source "EditCardActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/account/EditCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/account/EditCardActivity;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/EditCardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/EditCardActivity;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/mcdonalds/app/account/EditCardActivity$1;->this$0:Lcom/mcdonalds/app/account/EditCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 9
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const-string v6, "afterTextChanged"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 172
    .local v5, "text":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v6, p0, Lcom/mcdonalds/app/account/EditCardActivity$1;->this$0:Lcom/mcdonalds/app/account/EditCardActivity;

    invoke-static {v6}, Lcom/mcdonalds/app/account/EditCardActivity;->access$000(Lcom/mcdonalds/app/account/EditCardActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "cardNumber":Ljava/lang/String;
    const/4 v2, 0x0

    .line 179
    .local v2, "isAmex":Z
    iget-object v6, p0, Lcom/mcdonalds/app/account/EditCardActivity$1;->this$0:Lcom/mcdonalds/app/account/EditCardActivity;

    invoke-static {v6}, Lcom/mcdonalds/app/account/EditCardActivity;->access$100(Lcom/mcdonalds/app/account/EditCardActivity;)Lcom/mcdonalds/app/account/EditCardPresenter;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/mcdonalds/app/account/EditCardPresenter;->getCardType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "cardType":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 181
    const-string v6, "003"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 184
    :cond_2
    const/4 v3, 0x0

    .line 185
    .local v3, "length":I
    const/4 v4, 0x0

    .line 186
    .local v4, "nextField":Landroid/view/View;
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 187
    iget-object v6, p0, Lcom/mcdonalds/app/account/EditCardActivity$1;->this$0:Lcom/mcdonalds/app/account/EditCardActivity;

    invoke-static {v6}, Lcom/mcdonalds/app/account/EditCardActivity;->access$200(Lcom/mcdonalds/app/account/EditCardActivity;)Landroid/widget/EditText;

    move-result-object v4

    .line 188
    if-eqz v2, :cond_4

    .line 189
    const/16 v3, 0x11

    .line 208
    :cond_3
    :goto_1
    if-eqz v4, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v3, :cond_0

    .line 209
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 191
    :cond_4
    const/16 v3, 0x13

    goto :goto_1

    .line 193
    :cond_5
    iget-object v6, p0, Lcom/mcdonalds/app/account/EditCardActivity$1;->this$0:Lcom/mcdonalds/app/account/EditCardActivity;

    invoke-static {v6}, Lcom/mcdonalds/app/account/EditCardActivity;->access$300(Lcom/mcdonalds/app/account/EditCardActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 194
    iget-object v6, p0, Lcom/mcdonalds/app/account/EditCardActivity$1;->this$0:Lcom/mcdonalds/app/account/EditCardActivity;

    invoke-static {v6}, Lcom/mcdonalds/app/account/EditCardActivity;->access$400(Lcom/mcdonalds/app/account/EditCardActivity;)Landroid/widget/EditText;

    move-result-object v4

    .line 195
    if-eqz v2, :cond_6

    .line 196
    const/4 v3, 0x4

    goto :goto_1

    .line 198
    :cond_6
    const/4 v3, 0x3

    goto :goto_1

    .line 200
    :cond_7
    iget-object v6, p0, Lcom/mcdonalds/app/account/EditCardActivity$1;->this$0:Lcom/mcdonalds/app/account/EditCardActivity;

    invoke-static {v6}, Lcom/mcdonalds/app/account/EditCardActivity;->access$200(Lcom/mcdonalds/app/account/EditCardActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 201
    const/4 v3, 0x2

    .line 202
    iget-object v6, p0, Lcom/mcdonalds/app/account/EditCardActivity$1;->this$0:Lcom/mcdonalds/app/account/EditCardActivity;

    invoke-static {v6}, Lcom/mcdonalds/app/account/EditCardActivity;->access$500(Lcom/mcdonalds/app/account/EditCardActivity;)Landroid/widget/EditText;

    move-result-object v4

    goto :goto_1

    .line 203
    :cond_8
    iget-object v6, p0, Lcom/mcdonalds/app/account/EditCardActivity$1;->this$0:Lcom/mcdonalds/app/account/EditCardActivity;

    invoke-static {v6}, Lcom/mcdonalds/app/account/EditCardActivity;->access$500(Lcom/mcdonalds/app/account/EditCardActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 204
    const/4 v3, 0x2

    .line 205
    iget-object v6, p0, Lcom/mcdonalds/app/account/EditCardActivity$1;->this$0:Lcom/mcdonalds/app/account/EditCardActivity;

    invoke-static {v6}, Lcom/mcdonalds/app/account/EditCardActivity;->access$300(Lcom/mcdonalds/app/account/EditCardActivity;)Landroid/widget/EditText;

    move-result-object v4

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    const-string v0, "beforeTextChanged"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const-string v0, "onTextChanged"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    return-void
.end method
