.class public Lcom/mcdonalds/app/account/ChangeBirthdateFragment$MonPickerDialog1;
.super Landroid/app/DatePickerDialog;
.source "ChangeBirthdateFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/account/ChangeBirthdateFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MonPickerDialog1"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/account/ChangeBirthdateFragment;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/app/account/ChangeBirthdateFragment;Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 11
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/ChangeBirthdateFragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "theme"    # I
    .param p4, "listener"    # Landroid/app/DatePickerDialog$OnDateSetListener;
    .param p5, "year"    # I
    .param p6, "monthOfYear"    # I
    .param p7, "dayOfMonth"    # I

    .prologue
    .line 302
    iput-object p1, p0, Lcom/mcdonalds/app/account/ChangeBirthdateFragment$MonPickerDialog1;->this$0:Lcom/mcdonalds/app/account/ChangeBirthdateFragment;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    .line 303
    invoke-direct/range {v0 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 306
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.termsAndConditions.minimumRequiredAge"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 307
    .local v10, "minimumAgeString":Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 309
    .local v9, "minimumAge":I
    iget-object v0, p1, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Calendar;

    .line 310
    .local v8, "minAgeCalendar":Ljava/util/Calendar;
    iget-object v0, p1, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->currentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int v7, v0, v9

    .line 311
    .local v7, "maxYear":I
    iget-object v0, p1, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->currentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p1, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->currentDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v8, v7, v0, v1}, Ljava/util/Calendar;->set(III)V

    .line 313
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ChangeBirthdateFragment$MonPickerDialog1;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/DatePicker;->setSpinnersShown(Z)V

    .line 314
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ChangeBirthdateFragment$MonPickerDialog1;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 316
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ChangeBirthdateFragment$MonPickerDialog1;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "day"

    const-string v3, "id"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ChangeBirthdateFragment$MonPickerDialog1;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "day"

    const-string v3, "id"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 319
    :cond_0
    const/4 v0, -0x2

    const v1, 0x7f090145

    invoke-virtual {p1, v1}, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/app/account/ChangeBirthdateFragment$MonPickerDialog1$1;

    invoke-direct {v2, p0, p1}, Lcom/mcdonalds/app/account/ChangeBirthdateFragment$MonPickerDialog1$1;-><init>(Lcom/mcdonalds/app/account/ChangeBirthdateFragment$MonPickerDialog1;Lcom/mcdonalds/app/account/ChangeBirthdateFragment;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/mcdonalds/app/account/ChangeBirthdateFragment$MonPickerDialog1;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 335
    return-void
.end method


# virtual methods
.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 4
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    const-string v0, "onDateChanged"

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

    .line 339
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/DatePickerDialog;->onDateChanged(Landroid/widget/DatePicker;III)V

    .line 341
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/ChangeBirthdateFragment$MonPickerDialog1;->setTitle(Ljava/lang/CharSequence;)V

    .line 342
    return-void
.end method
