/**
 * @license Copyright (c) 2003-2013, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.html or http://ckeditor.com/license
 */

CKEDITOR.editorConfig = function( config ) {
	config.language = 'ru';	

	/* Удаление автоматического добовления p. */
	config.autoParagraph = false;
	config.shiftEnterMode = CKEDITOR.ENTER_P;
	config.shiftEnterMode = CKEDITOR.ENTER_BR;
	config.allowedContent = true;
	config.docType = '<!DOCTYPE html>';
	
	config.autoGrow_onStartup = true;
	config.autoGrow_minHeight = 200;
	config.autoGrow_maxHeight = 9999;
	config.autoGrow_bottomSpace = 20;
	
	/* CSS */
	config.contentsCss = ['contents.css'];

	config.extraPlugins = 'codemirror,autogrow';	

	config.removePlugins = 'elementspath,about,forms,smiley,find,pagebreak,save,preview,scayt';
	config.toolbar =
	[
		{ name: 'document',    items : [ 'Source' ] },
		{ name: 'clipboard',   items : [ 'SelectAll','RemoveFormat'] },
		{ name: 'basicstyles', items : [ 'Bold','Italic','Underline','Strike','Subscript','Superscript','-'] },
		{ name: 'paragraph',   items : [ 'NumberedList','BulletedList' ] },
		{ name: 'paragraph',   items : [ 'Outdent','Indent' ] },	
		{ name: 'paragraph',   items : [ 'JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock' ] },	
		{ name: 'links',       items : [ 'Link','Unlink','Anchor' ] },
		'/',
		{ name: 'styles',      items : [ 'divs','Styles','Format','Font','FontSize' ] },
		{ name: 'colors',      items : [ 'TextColor','BGColor' ] },
		{ name: 'insert',      items : [ 'Image','Table','SpecialChar','HorizontalRule', 'CreateDiv' ] },
		{ name: 'tools',       items : [ 'ShowBlocks', 'Maximize' ] }
	];
};

/* Для HTML 5 */
CKEDITOR.on('instanceReady', function(ev) {
   ev.editor.dataProcessor.writer.selfClosingEnd = '>';
});