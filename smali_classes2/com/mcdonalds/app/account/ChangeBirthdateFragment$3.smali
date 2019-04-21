.class Lcom/mcdonalds/app/account/ChangeBirthdateFragment$3;
.super Ljava/lang/Object;
.source "ChangeBirthdateFragment.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->selectMonthTime1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/account/ChangeBirthdateFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/ChangeBirthdateFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/ChangeBirthdateFragment;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/mcdonalds/app/account/ChangeBirthdateFragment$3;->this$0:Lcom/mcdonalds/app/account/ChangeBirthdateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 9
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    const-string v5, "onDateSet"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v6, v7

    const/4 v7, 0x2

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v6, v7

    const/4 v7, 0x3

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v6, v7

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    invoke-virtual {p1}, Landroid/widget/DatePicker;->isShown()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 262
    invoke-static {}, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->access$000()Ljava/util/Calendar;

    move-result-object v5

    if-nez v5, :cond_1

    .line 263
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-static {v5}, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->access$002(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 264
    iget-object v5, p0, Lcom/mcdonalds/app/account/ChangeBirthdateFragment$3;->this$0:Lcom/mcdonalds/app/account/ChangeBirthdateFragment;

    iget-object v5, v5, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->currentDate:Ljava/util/Calendar;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 265
    .local v4, "year1":I
    iget-object v5, p0, Lcom/mcdonalds/app/account/ChangeBirthdateFragment$3;->this$0:Lcom/mcdonalds/app/account/ChangeBirthdateFragment;

    iget-object v5, v5, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->currentDate:Ljava/util/Calendar;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 266
    .local v3, "month":I
    iget-object v5, p0, Lcom/mcdonalds/app/account/ChangeBirthdateFragment$3;->this$0:Lcom/mcdonalds/app/account/ChangeBirthdateFragment;

    iget-object v5, v5, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->currentDate:Ljava/util/Calendar;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 273
    .local v2, "day":I
    :goto_0
    invoke-static {}, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->access$000()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 275
    add-int/lit8 p3, p3, 0x1

    .line 278
    const/4 v1, 0x0

    .line 279
    .local v1, "date":Ljava/util/Date;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "birthdateFormatted":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 285
    :goto_1
    if-eqz v1, :cond_2

    .line 286
    invoke-static {}, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->access$100()Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 287
    invoke-static {}, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->access$400()Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 292
    .end local v0    # "birthdateFormatted":Ljava/lang/String;
    .end local v1    # "date":Ljava/util/Date;
    .end local v2    # "day":I
    .end local v3    # "month":I
    .end local v4    # "year1":I
    :cond_0
    :goto_2
    return-void

    .line 268
    :cond_1
    invoke-static {}, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->access$000()Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 269
    .restart local v4    # "year1":I
    invoke-static {}, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->access$000()Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 270
    .restart local v3    # "month":I
    invoke-static {}, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->access$000()Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .restart local v2    # "day":I
    goto :goto_0

    .line 289
    .restart local v0    # "birthdateFormatted":Ljava/lang/String;
    .restart local v1    # "date":Ljava/util/Date;
    :cond_2
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->access$002(Ljava/util/Calendar;)Ljava/util/Calendar;

    goto :goto_2

    .line 283
    :catch_0
    move-exception v5

    goto :goto_1
.end method
