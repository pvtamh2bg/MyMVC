<script type="text/javascript" src="../../public/templates/backend/plugin/tinymce/jscripts/tiny_mce/tiny_mce.js"></script>
<script type="text/javascript">
    // O2k7 skin (silver)
    tinyMCE.init({
        // General options
        mode : "textareas",
        editor_selector: "tiny_editor",
        elements : "elm3",
        theme : "advanced",
        skin : "o2k7",
        skin_variant : "silver",
        file_browser_callback: 'openKCFinder',
        plugins : "lists,pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template,inlinepopups,autosave",

        // Theme options
        theme_advanced_buttons1 : "preview,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,styleselect,formatselect,fontselect,fontsizeselect,|,bullist,numlist,|,sub,sup,|,ltr,rtl,removeformat,fullscreen",
        theme_advanced_buttons2 : "tablecontrols,outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor,image,cleanup,help,code,|,insertdate,inserttime,|,forecolor,backcolor,|,charmap,emotions,iespell,media,advhr",
        // theme_advanced_buttons3 : "save,newdocument,|,tablecontrols,|,hr,removeformat,visualaid,|,sub,sup,|,charmap,emotions,iespell,media,advhr,|,print,|,ltr,rtl,|,fullscreen",
        // theme_advanced_buttons4 : "insertlayer,moveforward,movebackward,absolute,|,styleprops,|,cite,abbr,acronym,del,ins,attribs,|,visualchars,nonbreaking,template,pagebreak,restoredraft",
        theme_advanced_toolbar_location : "top",
        theme_advanced_toolbar_align : "left",
        theme_advanced_statusbar_location : "bottom",
        theme_advanced_resizing : true,

        // Example content CSS (should be your site CSS)
        content_css : "css/content.css",

        // Drop lists for link/image/media/template dialogs
        template_external_list_url : "lists/template_list.js",
        external_link_list_url : "lists/link_list.js",
        external_image_list_url : "lists/image_list.js",
        media_external_list_url : "lists/media_list.js"


        // Replace values for the template plugin
        //http://justboil.me/

    });
    function openKCFinder(field, url, type, win) {
        tinyMCE.activeEditor.windowManager.open({
            file: 'public/template/backend/plugins/kcfinder/browse.php?opener=tinymce&type=' + type,
            title: 'KCFinder',
            width: 700,
            height: 500,
            resizable: true,
            inline: true,
            close_previous: false,
            popup_css: false
        }, {
            window: win,
            input: field
        });
        return false;
    }
    function browseKCFinder(field,type) {
        window.KCFinder = {
            callBack: function(url) {
                document.getElementById(field).value = url;
                window.KCFinder = null;
            }
        };
        window.open('<?php echo Config::get('url/base_url').'/'; ?>public/templates/backend/plugin/kcfinder/browse.php?type='+type, 'kcfinder_textbox',
            'status=0, toolbar=0, location=0, menubar=0, directories=0, ' +
            'resizable=1, scrollbars=0, width=800, height=600'
        );
    }
</script>