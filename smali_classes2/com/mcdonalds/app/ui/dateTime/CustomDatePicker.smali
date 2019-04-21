.class public Lcom/mcdonalds/app/ui/dateTime/CustomDatePicker;
.super Landroid/widget/DatePicker;
.source "CustomDatePicker.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v4, 0x0

    .line 31
    .local v4, "idClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x0

    .line 32
    .local v7, "numberPickerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x0

    .line 33
    .local v8, "selectionDividerField":Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    .line 34
    .local v5, "monthField":Ljava/lang/reflect/Field;
    const/4 v1, 0x0

    .line 35
    .local v1, "dayField":Ljava/lang/reflect/Field;
    const/4 v9, 0x0

    .line 36
    .local v9, "yearField":Ljava/lang/reflect/Field;
    const/4 v6, 0x0

    .line 37
    .local v6, "monthNumberPicker":Landroid/widget/NumberPicker;
    const/4 v2, 0x0

    .line 38
    .local v2, "dayNumberPicker":Landroid/widget/NumberPicker;
    const/4 v10, 0x0

    .line 43
    .local v10, "yearNumberPicker":Landroid/widget/NumberPicker;
    :try_start_0
    const-string v11, "com.android.internal.R$id"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 46
    const-string v11, "month"

    invoke-virtual {v4, v11}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 47
    const-string v11, "day"

    invoke-virtual {v4, v11}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 48
    const-string v11, "year"

    invoke-virtual {v4, v11}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 51
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/mcdonalds/app/ui/dateTime/CustomDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Landroid/widget/NumberPicker;

    move-object v2, v0

    .line 52
    const/16 v11, 0x8

    invoke-virtual {v2, v11}, Landroid/widget/NumberPicker;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    .line 73
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v3

    .line 59
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    const-string v11, "CustomDatePicker"

    const-string v12, "ClassNotFoundException in CustomDatePicker"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 61
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v3

    .line 63
    .local v3, "e":Ljava/lang/NoSuchFieldException;
    const-string v11, "CustomDatePicker"

    const-string v12, "NoSuchFieldException in CustomDatePicker"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 65
    .end local v3    # "e":Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v3

    .line 67
    .local v3, "e":Ljava/lang/IllegalAccessException;
    const-string v11, "CustomDatePicker"

    const-string v12, "IllegalAccessException in CustomDatePicker"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 69
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v3

    .line 71
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v11, "CustomDatePicker"

    const-string v12, "IllegalArgumentException in CustomDatePicker"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
