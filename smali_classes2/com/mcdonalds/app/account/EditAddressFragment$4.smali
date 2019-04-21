.class Lcom/mcdonalds/app/account/EditAddressFragment$4;
.super Ljava/lang/Object;
.source "EditAddressFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/account/EditAddressFragment;->refreshViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/account/EditAddressFragment;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$element:Lcom/mcdonalds/sdk/modules/models/AddressElement;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/EditAddressFragment;Landroid/widget/EditText;Lcom/mcdonalds/sdk/modules/models/AddressElement;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/EditAddressFragment;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/mcdonalds/app/account/EditAddressFragment$4;->this$0:Lcom/mcdonalds/app/account/EditAddressFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/account/EditAddressFragment$4;->val$editText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/mcdonalds/app/account/EditAddressFragment$4;->val$element:Lcom/mcdonalds/sdk/modules/models/AddressElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 10
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "afterTextChanged"

    new-array v8, v5, [Ljava/lang/Object;

    aput-object p1, v8, v6

    invoke-static {p0, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 357
    .local v4, "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/mcdonalds/app/account/EditAddressFragment$4;->this$0:Lcom/mcdonalds/app/account/EditAddressFragment;

    .line 358
    invoke-static {v7}, Lcom/mcdonalds/app/account/EditAddressFragment;->access$400(Lcom/mcdonalds/app/account/EditAddressFragment;)Ljava/util/Map;

    move-result-object v7

    iget-object v8, p0, Lcom/mcdonalds/app/account/EditAddressFragment$4;->val$element:Lcom/mcdonalds/sdk/modules/models/AddressElement;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/AddressElement;->getAddressElementType()Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;

    .line 361
    .local v3, "rule":Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;
    const/4 v2, 0x0

    .line 363
    .local v2, "pattern":Ljava/util/regex/Pattern;
    :try_start_0
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;->getValidationRegex()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 367
    :goto_0
    const/4 v0, 0x0

    .line 368
    .local v0, "isValid":Z
    if-eqz v2, :cond_0

    .line 370
    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 371
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;->getValidationLength()I

    move-result v8

    if-ge v7, v8, :cond_1

    move v0, v5

    .line 374
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_0
    :goto_1
    if-eqz v0, :cond_2

    .line 375
    iget-object v5, p0, Lcom/mcdonalds/app/account/EditAddressFragment$4;->val$element:Lcom/mcdonalds/sdk/modules/models/AddressElement;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/AddressElement;->getValue()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;

    invoke-virtual {v5, v4}, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;->setAlias(Ljava/lang/String;)V

    .line 376
    iget-object v5, p0, Lcom/mcdonalds/app/account/EditAddressFragment$4;->this$0:Lcom/mcdonalds/app/account/EditAddressFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/account/EditAddressFragment;->access$700(Lcom/mcdonalds/app/account/EditAddressFragment;)V

    .line 395
    :goto_2
    return-void

    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    move v0, v6

    .line 371
    goto :goto_1

    .line 378
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_2
    iget-object v5, p0, Lcom/mcdonalds/app/account/EditAddressFragment$4;->this$0:Lcom/mcdonalds/app/account/EditAddressFragment;

    invoke-virtual {v5}, Lcom/mcdonalds/app/account/EditAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v7, p0, Lcom/mcdonalds/app/account/EditAddressFragment$4;->this$0:Lcom/mcdonalds/app/account/EditAddressFragment;

    const v8, 0x7f0900b4

    .line 379
    invoke-virtual {v7, v8}, Lcom/mcdonalds/app/account/EditAddressFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mcdonalds/app/account/EditAddressFragment$4;->this$0:Lcom/mcdonalds/app/account/EditAddressFragment;

    const v9, 0x7f09033a

    .line 380
    invoke-virtual {v8, v9}, Lcom/mcdonalds/app/account/EditAddressFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/mcdonalds/app/account/EditAddressFragment$4$1;

    invoke-direct {v9, p0}, Lcom/mcdonalds/app/account/EditAddressFragment$4$1;-><init>(Lcom/mcdonalds/app/account/EditAddressFragment$4;)V

    .line 378
    invoke-static {v5, v7, v8, v9}, Lcom/mcdonalds/app/util/UIUtils;->showGlobalAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;

    .line 389
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v5

    const-string v7, "Field empty"

    invoke-virtual {v5, v7}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->recordError(Ljava/lang/String;)V

    .line 391
    iget-object v5, p0, Lcom/mcdonalds/app/account/EditAddressFragment$4;->this$0:Lcom/mcdonalds/app/account/EditAddressFragment;

    invoke-virtual {v5}, Lcom/mcdonalds/app/account/EditAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v7, p0, Lcom/mcdonalds/app/account/EditAddressFragment$4;->val$editText:Landroid/widget/EditText;

    invoke-static {v5, v7}, Lcom/mcdonalds/app/util/UIUtils;->dismissKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 393
    iget-object v5, p0, Lcom/mcdonalds/app/account/EditAddressFragment$4;->this$0:Lcom/mcdonalds/app/account/EditAddressFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/account/EditAddressFragment;->access$800(Lcom/mcdonalds/app/account/EditAddressFragment;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    .line 364
    .end local v0    # "isValid":Z
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

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

    .line 344
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditAddressFragment$4;->this$0:Lcom/mcdonalds/app/account/EditAddressFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/account/EditAddressFragment$4;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/account/EditAddressFragment;->access$602(Lcom/mcdonalds/app/account/EditAddressFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 345
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

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

    .line 350
    return-void
.end method
