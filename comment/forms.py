from django import forms
from ckeditor.widgets import CKEditorWidget

class CommentForm(forms.Form):
    content_type=forms.CharField(widget=forms.HiddenInput)
    object_id=forms.IntegerField(widget=forms.HiddenInput)
    text=forms.CharField(label=False,widget=CKEditorWidget(config_name='comment_ckeditor'))