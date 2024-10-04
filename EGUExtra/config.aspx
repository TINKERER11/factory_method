<config>
  <manifest_url>cdsmmanifest.xml</manifest_url>
  <dictionary_url>http://dictionary.cambridge.org/default.asp?dict=A </dictionary_url>
  <media_server_url>rtmp://www.cambridge-media.org/videorecording</media_server_url>
  <framework_mode>standalone</framework_mode>
  <asset_url>/../CambridgeContent/English Grammar in Use Extra</asset_url>
  <configs>
    <source id="theme">../CambridgeContent/English Grammar in Use Extra/themes.xml</source>
  </configs>
  <webservices>
    <webservice id="project">http://ng-laptop/api/Projects.asmx</webservice>
    <webservice id="pageset">http://ng-laptop/api/PageSet.asmx</webservice>
  </webservices>
  <DataStorageProvider>
    <decorators>
      <add name="com.cdsm.elf2.data.storage.AtlasAIRDataStorage" />
    </decorators>
  </DataStorageProvider>
  <PedagogueDataMediatorProvider>
    <decorators>
      <add name="com.cdsm.elf2.data.mediator.PedagogueDataMediator" />
    </decorators>
  </PedagogueDataMediatorProvider>
  <XMLFacadeProvider>
    <decorators>
      <add name="com.cdsm.elf2.facades.manifest.StandaloneManifestFacade" />
    </decorators>
  </XMLFacadeProvider>
  <PageUrlHelperProvider>
    <decorators>
      <add name="com.cdsm.elf2.utils.page_url_helper.PreviewPageUrlHelper" />
    </decorators>
  </PageUrlHelperProvider>
  <ModuleRegistry>
    <decorators>
      <add id="login" name="CambridgeLogin" />
      <add id="launcher" name="CambridgeCourseLauncher" />
      <add id="ci" name="CambridgeContentInterface" type="content" />
      <add id="menu" name="CambridgeMenu" type="content" />
      <add id="custom_menu" name="CambridgeCustomMenu" type="content" />
    </decorators>
    <context name="page">
      <uses id="ci" />
    </context>
    <context name="menu">
      <uses id="menu" />
    </context>
    <context name="custom_menu">
      <uses id="custom_menu" />
    </context>
    <context name="login">
      <uses id="login" />
    </context>
    <context name="launcher">
      <uses id="launcher" />
    </context>
    <context name="default">
      <uses id="ci" />
    </context>
  </ModuleRegistry>
  <LoadActionFactory>
    <decorators>
      <add id="launcher" name="com.cdsm.elf2.modules.load_actions.CourseLauncherModuleLoadAction" />
      <add id="custom_menu" name="com.cdsm.elf2.modules.load_actions.ContentModuleLoadAction" />
      <add id="menu" name="com.cdsm.elf2.modules.load_actions.ContentModuleLoadAction" />
      <add id="page" name="com.cdsm.elf2.modules.load_actions.ContentModuleLoadAction" />
    </decorators>
    <context name="launcher">
      <uses id="launcher" />
    </context>
    <context name="custom_menu">
      <uses id="custom_menu" />
    </context>
    <context name="menu">
      <uses id="menu" />
    </context>
    <context name="page">
      <uses id="page" />
    </context>
    <context name="ci">
      <uses id="page" />
    </context>
  </LoadActionFactory>
  <ContentBlockFactory>
    <decorators>
      <!-- Page Editor Only -->
      <!--add id="exercise" name="com.cdsm.elf2.content_block.exercise.preview.PreviewExerciseWrapper" /-->
      <!-- Regular Only -->
      <add id="exercise" name="com.cdsm.elf2.content_block.exercise.ExerciseWrapper" />
      <!-- Common -->
      <add id="text" name="com.cambridge.atlas.content_block.text.TextContentBlock" />
      <add id="mcq" name="com.cambridge.atlas.content_block.mcq.MCQContentBlock" />
      <add id="animation_viewer_v2" name="com.cambridge.atlas.content_block.animation.AnimationContentBlockV2" />
      <add id="heading" name="com.cambridge.atlas.content_block.heading.HeadingContentBlock" />
      <add id="image" name="com.cambridge.atlas.content_block.image.ImageContentBlock" />
      <add id="web_link" name="com.cambridge.atlas.content_block.link.web_link.WebLinkContentBlock" />
      <add id="content_link" name="com.cambridge.atlas.content_block.link.content_link.ContentLinkContentBlock" />
      <add id="pelmanism" name="com.cambridge.atlas.content_block.pelmanism.PelmanismContentBlock" />
      <add id="rubric" name="com.cambridge.atlas.content_block.rubric.RubricContentBlock" />
      <add id="strikeout" name="com.cambridge.atlas.content_block.strikeout_v2.StrikeoutContentBlock" />
      <add id="cloze" name="com.cambridge.atlas.content_block.cloze.ClozeContentBlock" />
      <add id="audio_player" name="com.cambridge.atlas.content_block.media.CompactAudioPlayerContentBlock" />
      <add id="video_player" name="com.cambridge.atlas.content_block.media.PedagogueVideoPlayerContentBlock" />
      <add id="reorder_var1" name="com.cambridge.atlas.content_block.reorder_var1.ReorderVar1ContentBlock" />
      <add id="reorder_var2" name="com.cambridge.atlas.content_block.reorder_var2.ReorderVar2ContentBlock" />
      <add id="reorder_var3" name="com.cambridge.atlas.content_block.reorder_var3.ReorderVar3ContentBlock" />
      <add id="text_entry_scratch_pad" name="com.cambridge.atlas.content_block.scratch_pad.ScratchPadContentBlock" />
      <add id="row_labelling" name="com.cambridge.atlas.content_block.row_labelling.RowLabellingContentBlock" />
      <add id="kims_game" name="com.cambridge.atlas.content_block.kims_game.KimsGameContentBlock" />
      <add id="image_zone_labelling" name="com.cambridge.atlas.content_block.image_zone_labelling.ImageZoneLabellingContentBlock" />
      <add id="identify" name="com.cambridge.atlas.content_block.identify.IdentifyContentBlock" />
      <add id="dnd_matching" name="com.cambridge.atlas.content_block.matching.MatchingContentBlock" />
      <add id="token_bank" name="com.cdsm.elf2.content_block.token_bank.TokenBankContentBlock" />
      <add id="text_edit_correction" name="com.cambridge.atlas.content_block.text_edit_correction.TextEditCorrectionContentBlock" />
      <add id="image_carousel" name="com.cambridge.atlas.content_block.coverflow_carousel.CoverFlowCarouselContentBlock" />
      <add id="text_image_text_cloze" name="com.cambridge.atlas.content_block.text_image_text_cloze.TextImageTextClozeContentBlock" />
      <add id="crossword" name="com.cambridge.atlas.content_block.crossword_puzzle.CrosswordPuzzleContentBlock" />
      <add id="itemsToZones_var1" name="com.cambridge.atlas.content_block.items_to_columns.ItemsToColumnsContentBlock" />
      <add id="text_writing" name="com.cambridge.atlas.content_block.text_writing.TextWritingEditor" />
      <add id="item_to_image_zones" name="com.cambridge.atlas.content_block.item_to_image_zones.ItemToImageZonesContentBlock" />
      <add id="texttoitem_var4" name="com.cambridge.atlas.content_block.text_to_image_dnd.TextToImageDNDContentBlock" />
      <add id="texttoitem_var3" name="com.cambridge.atlas.content_block.cloze.ClozeContentBlock" />
      <add id="text_image_text_cloze_paragraph" name="com.cambridge.atlas.content_block.text_image_text_cloze_paragraph.TextImageTextClozeParagraphContentBlock" />
      <add id="popup_ci_menu" name="com.cdsm.elf2.content_block.popup_ci_menu.PopUpCIMenuContentBlock" />
      <add id="popup_ci_custom_menu" name="com.cdsm.elf2.content_block.popup_ci_custom_menu.PopUpCICustomMenuContentBlock" />
      <add id="vocab_notebook" name="com.cambridge.atlas.content_block.vocab_bank.TouchstoneVocabNotebook" />
      <add id="text_image_text_cloze_paragraph" name="com.cambridge.atlas.content_block.text_image_text_cloze_paragraph.TextImageTextClozeParagraphContentBlock" />
      <add id="texttoitem_var4_paragraph" name="com.cambridge.atlas.content_block.text_to_image_dnd_paragraph.TextToImageDNDParagraphContentBlock" />
      <add id="conversation" name="com.cambridge.atlas.content_block.conversation.ConversationContentBlock" />
      <add id="record_compare" name="com.cambridge.atlas.content_block.record_compare.RecordCompareContentBlock" />
      <add id="record_role_play" name="com.cambridge.atlas.content_block.record_role_play.RecordRolePlayContentBlock" />
      <add id="content_link" name="com.cambridge.atlas.content_block.link.content_link.ContentLinkContentBlock" />
      <add id="progress_report" name="com.cambridge.atlas.content_block.progress_report.ProgressReportContentBlock" />
      <add id="student_test_generator" name="com.cambridge.atlas.content_block.student_test_generator.StudentTestGeneratorContentBlock" />
      <add id="unit_review_test" name="com.cambridge.atlas.content_block.unit_review_test.UnitReviewTestContentBlock" />
      <add id="vocab_drill" name="com.cambridge.atlas.content_block.vocab_drill.WordDrillToolContentBlock" />
      <add id="word_list" name="com.cambridge.atlas.content_block.word_list.WordListContentBlock" />
      <add id="my_work" name="com.cambridge.atlas.content_block.my_work.MyWorkController" />
      <add id="can_do_statement" name="com.cambridge.atlas.content_block.can_do_statement.CanDoStatementContentBlock" />
      <add id="resource_bank" name="com.cambridge.atlas.content_block.resource_bank.ResourceBankContentBlock" />
      <add id="teacher_test_generator" name="com.cambridge.atlas.content_block.student_test_generator.TeacherTestGeneratorContentBlock" />
      <add id="reference_component" name="com.cambridge.atlas.content_block.reference_component.ContentReferenceContentBlock" />
      <add id="spacer" name="com.cdsm.elf2.content_block.spacer.SpacerContentBlock" />
      <add id="linking_lines" name="com.cambridge.atlas.content_block.linking_lines.LinkingLinesContentBlock" />
      <add id="document_link" name="com.cambridge.atlas.content_block.document_link.DocumentLinkContentBlock" />
      <add id="breadcrumb_title" name="com.cambridge.atlas.content_block.breadcrumb_title.BreadcrumbTitleContentBlock" />
    </decorators>
    <context name="exercise">
      <uses id="exercise" />
    </context>
    <context name="default">
      <uses id="content_block" />
    </context>
    <context name="content_block">
      <uses id="text" />
    </context>
    <context name="mcq_compound">
      <uses id="mcq" />
    </context>
    <context name="animation_viewer">
      <uses id="animation_viewer_v2" />
    </context>
    <context name="page_heading">
      <uses id="heading" />
    </context>
    <context name="image_viewer">
      <uses id="image" />
    </context>
    <context name="web_link">
      <uses id="web_link" />
    </context>
    <context name="content_link">
      <uses id="content_link" />
    </context>
    <context name="pelmanism">
      <uses id="pelmanism" />
    </context>
    <context name="rubric">
      <uses id="rubric" />
    </context>
    <context name="strikeout">
      <uses id="strikeout" />
    </context>
    <context name="cloze">
      <uses id="cloze" />
    </context>
    <context name="audio_player">
      <uses id="audio_player" />
    </context>
    <context name="video_player">
      <uses id="video_player" />
    </context>
    <context name="reorder_var1">
      <uses id="reorder_var1" />
    </context>
    <context name="reorder_var2">
      <uses id="reorder_var2" />
    </context>
    <context name="reorder_var3">
      <uses id="reorder_var3" />
    </context>
    <context name="text_entry_scratch_pad">
      <uses id="text_entry_scratch_pad" />
    </context>
    <context name="kims_game">
      <uses id="kims_game" />
    </context>
    <context name="image_zone_labelling">
      <uses id="image_zone_labelling" />
    </context>
    <context name="identify">
      <uses id="identify" />
    </context>
    <context name="dnd_matching">
      <uses id="dnd_matching" />
    </context>
    <context name="row_labelling_checkbox">
      <uses id="row_labelling" />
    </context>
    <context name="row_labelling_drag">
      <uses id="row_labelling" />
    </context>
    <context name="row_labelling_text">
      <uses id="row_labelling" />
    </context>
    <context name="texttoitem_var1">
      <uses id="cloze" />
    </context>
    <context name="token_bank">
      <uses id="token_bank" />
    </context>
    <context name="text_edit_correction">
      <uses id="text_edit_correction" />
    </context>
    <context name="image_carousel">
      <uses id="image_carousel" />
    </context>
    <context name="text_image_text_cloze">
      <uses id="text_image_text_cloze" />
    </context>
    <context name="crossword">
      <uses id="crossword" />
    </context>
    <context name="itemsToZones_var1">
      <uses id="itemsToZones_var1" />
    </context>
    <context name="item_to_image_zones">
      <uses id="item_to_image_zones" />
    </context>
    <context name="texttoitem_var4">
      <uses id="texttoitem_var4" />
    </context>
    <context name="text_writing">
      <uses id="text_writing" />
    </context>
    <context name="sentence_completion_var2">
      <uses id="cloze" />
    </context>
    <context name="texttoitem_var3">
      <uses id="texttoitem_var3" />
    </context>
    <context name="text_image_text_cloze_paragraph">
      <uses id="text_image_text_cloze_paragraph" />
    </context>
    <context name="popup_ci_menu">
      <uses id="popup_ci_menu" />
    </context>
    <context name="popup_ci_custom_menu">
      <uses id="popup_ci_custom_menu" />
    </context>
    <context name="vocab_notebook">
      <uses id="vocab_notebook" />
    </context>
    <context name="text_image_text_cloze_paragraph">
      <uses id="text_image_text_cloze_paragraph" />
    </context>
    <context name="texttoitem_var4_paragraph">
      <uses id="texttoitem_var4_paragraph" />
    </context>
    <context name="conversation">
      <uses id="conversation" />
    </context>
    <context name="record_compare">
      <uses id="record_compare" />
    </context>
    <context name="record_role_play">
      <uses id="record_role_play" />
    </context>
    <context name="content_link">
      <uses id="content_link" />
    </context>
    <context name="progress_report">
      <uses id="progress_report" />
    </context>
    <context name="student_test_generator">
      <uses id="student_test_generator" />
    </context>
    <context name="unit_review_test">
      <uses id="unit_review_test" />
    </context>
    <context name="vocab_drill">
      <uses id="vocab_drill" />
    </context>
    <context name="can_do_statement">
      <uses id="can_do_statement" />
    </context>
    <context name="my_work">
      <uses id="my_work" />
    </context>
    <context name="word_list">
      <uses id="word_list" />
    </context>
    <context name="resource_bank">
      <uses id="resource_bank" />
    </context>
    <context name="teacher_test_generator">
      <uses id="teacher_test_generator" />
    </context>
    <context name="reference_component">
      <uses id="reference_component" />
    </context>
    <context name="spacer">
      <uses id="spacer" />
    </context>
    <context name="linking_lines">
      <uses id="linking_lines" />
    </context>
    <context name="document_link">
      <uses id="document_link" />
    </context>
    <context name="breadcrumb_title">
      <uses id="breadcrumb_title" />
    </context>
  </ContentBlockFactory>
  <ContentBlockModelFactory>
    <decorators>
      <add id="exercise" name="com.cdsm.elf2.content_block.exercise.ExerciseModel" />
      <add id="text" name="com.cambridge.atlas.content_block.text.TextContentBlockModel" />
      <add id="mcq" name="com.cdsm.elf2.content_block.mcq.MCQContentBlockModel" />
      <add id="animation" name="com.cambridge.atlas.content_block.animation.AnimationContentBlockModel" />
      <add id="heading" name="com.cambridge.atlas.content_block.heading.HeadingContentBlockModel" />
      <add id="image" name="com.cambridge.atlas.content_block.image.ImageContentBlockModel" />
      <add id="web_link" name="com.cambridge.atlas.content_block.link.web_link.WebLinkContentBlockModel" />
      <add id="pelmanism" name="com.cambridge.atlas.content_block.pelmanism.PelmanismContentBlockModel" />
      <add id="rubric" name="com.cambridge.atlas.content_block.rubric.RubricContentBlockModel" />
      <add id="strikeout" name="com.cambridge.atlas.content_block.strikeout_v2.StrikeoutContentBlockModel" />
      <add id="cloze" name="com.cdsm.elf2.content_block.cloze.ClozeContentBlockModel" />
      <add id="audio_player" name="com.cdsm.elf2.content_block.media.MediaPlayerContentBlockModel" />
      <add id="video_player" name="com.cdsm.elf2.content_block.media.MediaPlayerContentBlockModel" />
      <add id="reorder_var1" name="com.cambridge.atlas.content_block.reorder_var1.ReorderVar1ContentBlockModel" />
      <add id="reorder_var2" name="com.cambridge.atlas.content_block.reorder_var2.ReorderVar2ContentBlockModel" />
      <add id="reorder_var3" name="com.cambridge.atlas.content_block.reorder_var3.ReorderVar3ContentBlockModel" />
      <add id="text_entry_scratch_pad" name="com.cambridge.atlas.content_block.scratch_pad.ScratchPadContentBlockModel" />
      <add id="row_labelling" name="com.cambridge.atlas.content_block.row_labelling.RowLabellingContentBlockModel" />
      <add id="kims_game" name="com.cambridge.atlas.content_block.kims_game.KimsGameContentBlockModel" />
      <add id="image_zone_labelling" name="com.cambridge.atlas.content_block.image_zone_labelling.ImageZoneLabellingContentBlockModel" />
      <add id="identify" name="com.cambridge.atlas.content_block.identify.IdentifyContentBlockModel" />
      <add id="dnd_matching" name="com.cambridge.atlas.content_block.matching.MatchingContentBlockModel" />
      <add id="token_bank" name="com.cdsm.elf2.content_block.token_bank.TokenBankContentBlockModel" />
      <add id="text_edit_correction" name="com.cambridge.atlas.content_block.text_edit_correction.TextEditCorrectionContentBlockModel" />
      <add id="image_carousel" name="com.cambridge.atlas.content_block.coverflow_carousel.CoverFlowCarouselContentBlockModel" />
      <add id="text_image_text_cloze" name="com.cambridge.atlas.content_block.text_image_text_cloze.TextImageTextClozeContentBlockModel" />
      <add id="crossword" name="com.cambridge.atlas.content_block.crossword_puzzle.CrosswordPuzzleContentBlockModel" />
      <add id="itemsToZones_var1" name="com.cambridge.atlas.content_block.items_to_columns.ItemsToColumnsContentBlockModel" />
      <add id="item_to_image_zones" name="com.cambridge.atlas.content_block.item_to_image_zones.ItemToImageZonesContentBlockModel" />
      <add id="texttoitem_var4" name="com.cambridge.atlas.content_block.text_to_image_dnd.TextToImageDNDContentBlockModel" />
      <add id="text_writing" name="com.cambridge.atlas.content_block.text_writing.TextWritingEditorModel" />
      <add id="texttoitem_var3" name="com.cdsm.elf2.content_block.cloze.ClozeContentBlockModel" />
      <add id="text_image_text_cloze_paragraph" name="com.cambridge.atlas.content_block.text_image_text_cloze_paragraph.TextImageTextClozeParagraphContentBlockModel" />
      <add id="popup_ci_menu" name="com.cdsm.elf2.content_block.popup_ci_menu.PopUpCIMenuContentBlockModel" />
      <add id="vocab_notebook" name="com.cambridge.atlas.content_block.vocab_bank.TouchstoneVocabNotebookModel" />
      <add id="text_image_text_cloze_paragraph" name="com.cambridge.atlas.content_block.text_image_text_cloze_paragraph.TextImageTextClozeParagraphContentBlockModel" />
      <add id="texttoitem_var4_paragraph" name="com.cambridge.atlas.content_block.text_to_image_dnd_paragraph.TextToImageDNDParagraphContentBlockModel" />
      <add id="conversation" name="com.cambridge.atlas.content_block.conversation.ConversationContentBlockModel" />
      <add id="record_role_play" name="com.cambridge.atlas.content_block.record_role_play.RecordRolePlayContentBlockModel" />
      <add id="record_compare" name="com.cambridge.atlas.content_block.record_compare.RecordCompareContentBlockModel" />
      <add id="progress_report" name="com.cambridge.atlas.content_block.progress_report.ProgressReportContentBlockModel" />
      <add id="student_test_generator" name="com.cambridge.atlas.content_block.student_test_generator.StudentTestGeneratorContentBlockModel" />
      <add id="unit_review_test" name="com.cambridge.atlas.content_block.unit_review_test.UnitReviewTestContentBlockModel" />
      <add id="vocab_drill" name="com.cambridge.atlas.content_block.vocab_drill.WordDrillToolModel" />
      <add id="can_do_statement" name="com.cambridge.atlas.content_block.can_do_statement.CanDoStatementContentBlockModel" />
      <add id="my_work" name="com.cambridge.atlas.content_block.my_work.MyWorkModel" />
      <add id="resource_bank" name="com.cambridge.atlas.content_block.resource_bank.ResourceBankContentBlockModel" />
      <add id="teacher_test_generator" name="com.cambridge.atlas.content_block.student_test_generator.TeacherTestGeneratorContentBlockModel" />
      <add id="reference_component" name="com.cambridge.atlas.content_block.reference_component.ContentReferenceContentBlockModel" />
      <add id="spacer" name="com.cdsm.elf2.content_block.spacer.SpacerContentBlockModel" />
      <add id="linking_lines" name="com.cambridge.atlas.content_block.linking_lines.LinkingLinesContentBlockModel" />
      <add id="document_link" name="com.cambridge.atlas.content_block.document_link.DocumentLinkContentBlockModel" />
      <add id="breadcrumb_title" name="com.cambridge.atlas.content_block.breadcrumb_title.BreadcrumbTitleContentBlockModel" />
    </decorators>
    <context name="exercise">
      <uses id="exercise" />
    </context>
    <context name="default">
      <uses id="content_block" />
    </context>
    <context name="content_block">
      <uses id="text" />
    </context>
    <context name="mcq_compound">
      <uses id="mcq" />
    </context>
    <context name="animation_viewer">
      <uses id="animation" />
    </context>
    <context name="animation_viewer_v2">
      <uses id="animation" />
    </context>
    <context name="page_heading">
      <uses id="heading" />
    </context>
    <context name="image_viewer">
      <uses id="image" />
    </context>
    <context name="web_link">
      <uses id="web_link" />
    </context>
    <context name="content_link">
      <uses id="web_link" />
    </context>
    <context name="pelmanism">
      <uses id="pelmanism" />
    </context>
    <context name="rubric">
      <uses id="rubric" />
    </context>
    <context name="strikeout">
      <uses id="strikeout" />
    </context>
    <context name="cloze">
      <uses id="cloze" />
    </context>
    <context name="audio_player">
      <uses id="audio_player" />
    </context>
    <context name="video_player">
      <uses id="video_player" />
    </context>
    <context name="reorder_var1">
      <uses id="reorder_var1" />
    </context>
    <context name="reorder_var2">
      <uses id="reorder_var2" />
    </context>
    <context name="reorder_var3">
      <uses id="reorder_var3" />
    </context>
    <context name="text_entry_scratch_pad">
      <uses id="text_entry_scratch_pad" />
    </context>
    <context name="kims_game">
      <uses id="kims_game" />
    </context>
    <context name="image_zone_labelling">
      <uses id="image_zone_labelling" />
    </context>
    <context name="identify">
      <uses id="identify" />
    </context>
    <context name="dnd_matching">
      <uses id="dnd_matching" />
    </context>
    <context name="row_labelling_checkbox">
      <uses id="row_labelling" />
    </context>
    <context name="row_labelling_drag">
      <uses id="row_labelling" />
    </context>
    <context name="row_labelling_text">
      <uses id="row_labelling" />
    </context>
    <context name="texttoitem_var1">
      <uses id="cloze" />
    </context>
    <context name="token_bank">
      <uses id="token_bank" />
    </context>
    <context name="text_edit_correction">
      <uses id="text_edit_correction" />
    </context>
    <context name="image_carousel">
      <uses id="image_carousel" />
    </context>
    <context name="text_image_text_cloze">
      <uses id="text_image_text_cloze" />
    </context>
    <context name="crossword">
      <uses id="crossword" />
    </context>
    <context name="itemsToZones_var1">
      <uses id="itemsToZones_var1" />
    </context>
    <context name="item_to_image_zones">
      <uses id="item_to_image_zones" />
    </context>
    <context name="texttoitem_var4">
      <uses id="texttoitem_var4" />
    </context>
    <context name="text_writing">
      <uses id="text_writing" />
    </context>
    <context name="sentence_completion_var2">
      <uses id="cloze" />
    </context>
    <context name="texttoitem_var3">
      <uses id="texttoitem_var3" />
    </context>
    <context name="popup_ci_menu">
      <uses id="popup_ci_menu" />
    </context>
    <context name="popup_ci_custom_menu">
      <uses id="popup_ci_menu" />
    </context>
    <context name="vocab_notebook">
      <uses id="vocab_notebook" />
    </context>
    <context name="text_image_text_cloze_paragraph">
      <uses id="text_image_text_cloze_paragraph" />
    </context>
    <context name="texttoitem_var4_paragraph">
      <uses id="texttoitem_var4_paragraph" />
    </context>
    <context name="conversation">
      <uses id="conversation" />
    </context>
    <context name="record_compare">
      <uses id="record_compare" />
    </context>
    <context name="record_role_play">
      <uses id="record_role_play" />
    </context>
    <context name="content_link">
      <uses id="web_link" />
    </context>
    <context name="progress_report">
      <uses id="progress_report" />
    </context>
    <context name="student_test_generator">
      <uses id="student_test_generator" />
    </context>
    <context name="unit_review_test">
      <uses id="unit_review_test" />
    </context>
    <context name="vocab_drill">
      <uses id="vocab_drill" />
    </context>
    <context name="can_do_statement">
      <uses id="can_do_statement" />
    </context>
    <context name="my_work">
      <uses id="my_work" />
    </context>
    <context name="word_list">
      <!--  Shares same model as vocab_drill -->
      <uses id="vocab_drill" />
    </context>
    <context name="resource_bank">
      <uses id="resource_bank" />
    </context>
    <context name="teacher_test_generator">
      <uses id="teacher_test_generator" />
    </context>
    <context name="reference_component">
      <uses id="reference_component" />
    </context>
    <context name="spacer">
      <uses id="spacer" />
    </context>
    <context name="linking_lines">
      <uses id="linking_lines" />
    </context>
    <context name="document_link">
      <uses id="document_link" />
    </context>
    <context name="breadcrumb_title">
      <uses id="breadcrumb_title" />
    </context>
  </ContentBlockModelFactory>
  <ContentBlockXMLStrategyFactory>
    <decorators>
      <!-- TO DO: Move mcq_compound to page conversion strategy - or scrap altogether (since does same
			as if no strategy provided)? -->
      <add id="mcq_compound" name="com.cambridge.atlas.content_block.strategy.MCQContentBlockXMLStrategy" />
      <!--  TO DO: Move mcq_dropdown to page conversion strategy. Works here - but neater to have all conversion in one place -->
      <add id="mcq_dropdown" name="com.cambridge.atlas.content_block.strategy.MCQDropDownContentBlockXMLStrategy" />
    </decorators>
    <context name="mcq_compound">
      <uses id="mcq_compound" />
    </context>
    <context name="mcq_dropdown">
      <uses id="mcq_dropdown" />
    </context>
  </ContentBlockXMLStrategyFactory>
  <BlankOptionModelFactory>
    <decorators>
      <add id="text_drag_drop" name="com.cdsm.elf2.content_block.drag_drop.TextTokenOptionModel" />
    </decorators>
    <context name="text_drag_drop">
      <uses id="text_drag_drop" />
    </context>
  </BlankOptionModelFactory>
  <TokenModelFactory>
    <decorators>
      <add id="text" name="com.cdsm.elf2.content_block.token_bank.TextTokenModel" />
      <add id="uber_token" name="com.cdsm.elf2.content_block.token_bank.UberTokenModel" />
    </decorators>
    <context name="text">
      <uses id="text" />
    </context>
    <context name="uber_token">
      <uses id="uber_token" />
    </context>
  </TokenModelFactory>
  <TokenFactory>
    <decorators>
      <add id="text" name="com.cdsm.elf2.content_block.token_bank.TextToken" />
      <add id="uber_token" name="com.cdsm.elf2.content_block.token_bank.UberToken" />
    </decorators>
    <context name="text">
      <uses id="text" />
    </context>
    <context name="uber_token">
      <uses id="uber_token" />
    </context>
  </TokenFactory>
  <UrlHelperFactory>
    <decorators>
      <add name="com.cdsm.utils.url_helper.AirUrlHelper" />
    </decorators>
  </UrlHelperFactory>
  <StyleLoadStrategyFactory>
    <decorators>
      <add name="com.cdsm.utils.style.load_strategies.AirStyleLoadStrategy" />
    </decorators>
  </StyleLoadStrategyFactory>
  <PageXmlConversionStrategyFactory>
    <decorators>
      <add id="original_link_id" name="com.cdsm.elf2.strategies.page.OriginalLinkIDStrategy" />
      <add id="page_editor" name="com.cdsm.elf2.page_editor.strategy.PageEditorXMLStrategy" />
      <add id="preview" name="com.cdsm.elf2.preview.PreviewPageXMLStrategy" />
      <add id="cloze" name="com.cdsm.elf2.content_block.strategy.ClozeXMLConversionStrategy" />
      <add id="dnd_matching" name="com.cambridge.atlas.content_block.strategy.MatchingXMLConversionStrategy" />
      <add id="sentence_completion_var1" name="com.cdsm.elf2.content_block.strategy.ClozeXMLConversionStrategy" />
      <add id="populate_token_banks" name="com.cdsm.elf2.content_block.strategy.TokenBankXMLConversionStrategy" />
      <add id="itemsToZones_var1" name="com.cambridge.atlas.content_block.strategy.ItemsToColumnsXMLConversionStrategy" />
      <add id="row_labelling_drag" name="com.cambridge.atlas.content_block.strategy.RowLabellingXMLConversionStrategy" />
      <add id="item_to_image_zones" name="com.cambridge.atlas.content_block.strategy.ItemToImageZonesXMLStrategy" />
      <add id="texttoitem_var4" name="com.cambridge.atlas.content_block.strategy.TextToImageDNDXMLStrategy" />
      <add id="position_content_blocks" name="com.cdsm.elf2.strategies.page.ContentBlockPositionXMLStrategy" />
      <add id="texttoitem_var4_paragraph" name="com.cambridge.atlas.content_block.strategy.TextToImageDNDParagraphXMLConversionStrategy" />
      <add id="disable_ex_timer" name="com.cdsm.elf2.strategies.page.DisableExerciseTimerXmlStrategy" />
      <add id="queued_state_enabled" name="com.cdsm.elf2.content_block.strategy.QueuedStateEnabledXMLStrategy" />
      <add id="state_xml_correction" name="com.cdsm.elf2.strategies.page.StateXMLCorrectionStrategy" />
      <add id="heading_exercise_join" name="com.cdsm.elf2.strategies.page.HeadingExerciseOverflowStrategy" />
      <add id="timer_overlap" name="com.cdsm.elf2.strategies.page.ExerciseTimerOverlapXmlStrategy" />
      <add id="strikeout" name="com.cambridge.atlas.content_block.strategy.StrikeoutXMLConversionStrategy" />
      <add id="insert_default_state_defs" name="com.cdsm.elf2.strategies.page.MissingStateXMLCorrectionStrategy" />
    </decorators>
    <context name="original_link_id">
      <uses id="original_link_id" />
    </context>
    <context name="page_editor">
      <uses id="page_editor" />
    </context>
    <context name="preview">
      <uses id="preview" />
    </context>
    <context name="texttoitem_var1">
      <uses id="cloze" />
    </context>
    <context name="texttoitem_var3">
      <uses id="cloze" />
    </context>
    <context name="sentence_completion_var1">
      <uses id="sentence_completion_var1" />
    </context>
    <context name="populate_token_banks">
      <uses id="populate_token_banks" />
    </context>
    <context name="dnd_matching">
      <uses id="dnd_matching" />
    </context>
    <context name="itemsToZones_var1">
      <uses id="itemsToZones_var1" />
    </context>
    <context name="row_labelling_drag">
      <uses id="row_labelling_drag" />
    </context>
    <context name="item_to_image_zones">
      <uses id="item_to_image_zones" />
    </context>
    <context name="texttoitem_var4">
      <uses id="texttoitem_var4" />
    </context>
    <context name="position_content_blocks">
      <uses id="position_content_blocks" />
    </context>
    <context name="texttoitem_var4_paragraph">
      <uses id="texttoitem_var4_paragraph" />
    </context>
    <context name="disable_ex_timer">
      <uses id="disable_ex_timer" />
    </context>
    <context name="unit_review_test">
      <uses id="queued_state_enabled" />
    </context>
    <context name="state_xml_correction">
      <uses id="state_xml_correction" />
    </context>
    <context name="heading_exercise_join">
      <uses id="heading_exercise_join" />
    </context>
    <context name="timer_overlap">
      <uses id="timer_overlap" />
    </context>
    <context name="sentence_completion_var2">
      <uses id="cloze" />
    </context>
    <context name="strikeout">
      <uses id="strikeout" />
    </context>
    <context name="insert_default_state_defs">
      <uses id="insert_default_state_defs" />
    </context>
  </PageXmlConversionStrategyFactory>
  <ManifestExecutionRuleFactory>
    <decorators>
      <add id="redirect" name="com.cdsm.elf2.models.manifest.execution_rules.RedirectManifestExecutionRule" />
      <add id="media" name="com.cdsm.elf2.models.manifest.execution_rules.MediaManifestExecutionRule" />
    </decorators>
    <context name="redirect">
      <uses id="redirect" />
    </context>
    <context name="media">
      <uses id="media" />
    </context>
    <context name="unit_review_test">
      <uses id="queued_state_enabled" />
    </context>
  </ManifestExecutionRuleFactory>
  <MediaRecorderFactory>
    <!-- Configure which audio recorder to use -->
    <decorators>
      <add name="com.cdsm.media.recording.GlobalAirAudioRecorder" />
    </decorators>
  </MediaRecorderFactory>
  <BookPropertiesAdaptorFactory>
    <decorators>
      <add name="com.cdsm.elf2.preview.modules.launcher.adapters.BookPropertiesXMLAdapter" />
    </decorators>
  </BookPropertiesAdaptorFactory>
  <AirStrategyProvider>
    <decorators>
      <add id="NativeWindowBoundsStrategy" name="com.cambridge.classware.toolstates.strategies.NativeWindowBoundsStrategy" />
      <add id="AcceptNativeFileDragStrategy" name="com.cambridge.classware.toolstates.strategies.AcceptNativeFileDragStrategy" />
      <add id="GetNativeIconImageStrategy" name="com.cambridge.classware.toolstates.tools.note_tool.note_strategy.GetNativeIconImageStrategy" />
      <add id="GetNativeIconBmpStrategy" name="com.cambridge.classware.toolstates.tools.note_tool.note_strategy.GetNativeIconBmpStrategy" />
      <add id="ApplicationStorageDirectoryStrategy" name="com.cambridge.classware.toolstates.tools.attachment_tools.attachment_strategy.ApplicationStorageDirectoryStrategy" />
      <add id="NativeWindowActiveStrategy" name="com.cdsm.utils.air_strategy.NativeWindowActiveStrategy" />
      <add id="NativeDragEventAddNativeDragDropListenerStrategy" name="com.cdsm.utils.air_strategy.NativeDragEventAddNativeDragDropListenerStrategy" />
      <add id="FileGetUrlStrategy" name="com.cdsm.utils.air_strategy.FileGetUrlStrategy" />
      <add id="PrintJobNameStrategy" name="com.cdsm.utils.print.PrintJobNameStrategy" />
    </decorators>
    <context name="NativeWindowBoundsStrategy">
      <uses id="NativeWindowBoundsStrategy" />
    </context>
    <context name="AcceptNativeFileDragStrategy">
      <uses id="AcceptNativeFileDragStrategy" />
    </context>
    <context name="GetNativeIconImageStrategy">
      <uses id="GetNativeIconImageStrategy" />
    </context>
    <context name="GetNativeIconBmpStrategy">
      <uses id="GetNativeIconBmpStrategy" />
    </context>
    <context name="ApplicationStorageDirectoryStrategy">
      <uses id="ApplicationStorageDirectoryStrategy" />
    </context>
    <context name="NativeWindowActiveStrategy">
      <uses id="NativeWindowActiveStrategy" />
    </context>
    <context name="NativeDragEventAddNativeDragDropListenerStrategy">
      <uses id="NativeDragEventAddNativeDragDropListenerStrategy" />
    </context>
    <context name="FileGetUrlStrategy">
      <uses id="FileGetUrlStrategy" />
    </context>
    <context name="PrintJobNameStrategy">
      <uses id="PrintJobNameStrategy" />
    </context>
  </AirStrategyProvider>
  <FileSelectorFactory>
    <decorators>
      <add id="default" name="com.cdsm.utils.file_selector.LocalFileSelector" />
      <add id="assetVault" name="com.cambridge.classware.utils.file_selector.AssetVaultFileSelector" />
    </decorators>
    <context name="default">
      <uses id="default" />
    </context>
    <context name="assetVault">
      <uses id="assetVault" />
    </context>
  </FileSelectorFactory>
  <ApplicationFeatureFactory>
    <decorators>
      <add id="phoneme" name="com.cambridge.classware.ui.phoneme_chart.PhonemeChart" />
      <add id="progress" name="com.cambridge.classware.ui.progress_chart.ProgressChart" />
    </decorators>
    <context name="phoneme">
      <uses id="phoneme" />
    </context>
    <context name="progress">
      <uses id="progress" />
    </context>
  </ApplicationFeatureFactory>
  <ContentServicesDecorator>
    <decorators>
      <add id="portfolio" name="com.cdsm.elf2.preview.content_services.SendPortfolioContentService" />
      <add id="resource" name="com.cdsm.elf2.preview.content_services.ResourceDefinitionContentService" />
      <add id="set_state" name="com.cdsm.elf2.preview.content_services.SetSpecialActivityStateContentService" />
      <add id="get_state" name="com.cdsm.elf2.preview.content_services.GetSpecialActivityStateContentService" />
    </decorators>
    <context name="portfolio">
      <uses id="portfolio" />
    </context>
    <context name="resource">
      <uses id="resource" />
    </context>
    <context name="set_state">
      <uses id="set_state" />
    </context>
    <context name="get_state">
      <uses id="get_state" />
    </context>
  </ContentServicesDecorator>
  <SettingsPredicateChainProvider>
    <decorators>
      <add name="com.cdsm.elf2.settings.predicates.ValuesExistsSettingsPredicate" />
      <add name="com.cdsm.elf2.settings.predicates.TrueOverrideSettingsPredicate" />
      <add name="com.cdsm.elf2.settings.predicates.OverrideValueSettingsPredicate" />
    </decorators>
  </SettingsPredicateChainProvider>
  <SettingsXmlLoaderProvider>
    <decorators>
      <add name="com.cdsm.elf2.settings.SettingsXmlGenerator" />
    </decorators>
  </SettingsXmlLoaderProvider>
  <WhiteboardToolBarProvider>
    <decorators>
      <add id="tool_pointer" action="tool" styleName="whiteboardArrowToolbarBtn" toolTip="Arrow Tool" />
      <add id="tool_note" action="tool" styleName="whiteboardNoteToolbarBtn" toolTip="Notes" depth="2" />
      <add id="tool_pen" action="tool" styleName="whiteboardPenToolbarBtn" toolTip="Pen Tool" depth="0">
        <optionSet>
          <option id="set_pen_colour" action="command" value="0x000000" styleName="whiteboardPenColorBlackBtn" toolTip="Black" />
          <option id="set_pen_colour" action="command" value="0xff0000" styleName="whiteboardPenColorRedBtn" toolTip="Red" />
          <option id="set_pen_colour" action="command" value="0x00ff00" styleName="whiteboardPenColorGreenBtn" toolTip="Green" />
          <option id="set_pen_colour" action="command" value="0x0000ff" styleName="whiteboardPenColorBlueBtn" toolTip="Blue" />
          <option id="set_pen_colour" action="command" value="0xffffff" styleName="whiteboardPenColorWhiteBtn" toolTip="White" />
        </optionSet>
        <optionSet>
          <option id="set_pen_thickness" action="command" value="2" styleName="whiteboardPenThicknessThinBtn" toolTip="Thin" />
          <option id="set_pen_thickness" action="command" value="5" styleName="whiteboardPenThicknessMediumBtn" toolTip="Medium" />
          <option id="set_pen_thickness" action="command" value="10" styleName="whiteboardPenThicknessThickBtn" toolTip="Thick" />
        </optionSet>
      </add>
      <add id="tool_highlighter" action="tool" styleName="whiteboardHighlighterToolbarBtn" toolTip="Highlighter Tool" depth="1" />
      <add id="tool_mask_hide" action="tool" styleName="whiteboardMaskHideToolbarBtn" toolTip="Hide Tool" depth="3">
        <option id="tool_mask" action="tool" styleName="whiteboardMaskShowToolbarBtn" toolTip="Show Tool" />
      </add>
      <add id="tool_eraser" action="tool" styleName="whiteboardEraserToolbarBtn" toolTip="Eraser Tool">
        <option id="tool_erase_all" action="command" styleName="whiteboardEraserAllToolbarBtn" toolTip="Remove all annotations" />
      </add>
    </decorators>
  </WhiteboardToolBarProvider>
  <WhiteboardToolBarCommandProvider>
    <decorators>
      <add id="set_pen_colour" name="com.cdsm.elf2.whiteboard.toolbar.command.WhiteboardToolbarCommandPenColour" />
      <add id="set_pen_thickness" name="com.cdsm.elf2.whiteboard.toolbar.command.WhiteboardToolbarCommandPenThickness" />
      <add id="tool_erase_all" name="com.cdsm.elf2.whiteboard.toolbar.command.WhiteboardToolbarCommandEraseAll" />
    </decorators>
    <context name="set_pen_colour">
      <uses id="set_pen_colour" />
    </context>
    <context name="set_pen_thickness">
      <uses id="set_pen_thickness" />
    </context>
    <context name="tool_erase_all">
      <uses id="tool_erase_all" />
    </context>
  </WhiteboardToolBarCommandProvider>
  <WhiteboardToolBarButtonFactory>
    <decorators>
      <add id="basic_button" name="com.cdsm.elf2.whiteboard.toolbar.button.WhiteboardToolbarButton" />
      <add id="complex_button" name="com.cdsm.elf2.whiteboard.toolbar.button.ComplexWhiteboardToolbarButton" />
      <add id="pen_button" name="com.cdsm.elf2.whiteboard.toolbar.button.WhiteboardToolbarButtonPen" />
    </decorators>
    <context name="tool_note">
      <uses id="basic_button" />
    </context>
    <context name="tool_pen">
      <uses id="pen_button" />
    </context>
    <context name="tool_highlighter">
      <uses id="basic_button" />
    </context>
    <context name="tool_mask_hide">
      <uses id="basic_button" />
    </context>
    <context name="tool_eraser">
      <uses id="basic_button" />
    </context>
    <context name="tool_pointer">
      <uses id="basic_button" />
    </context>
  </WhiteboardToolBarButtonFactory>
  <WhiteboardToolStateFactory>
    <decorators>
      <add id="tool_note" name="com.cambridge.classware.toolstates.TextToolState" />
      <add id="tool_pen" name="com.cambridge.classware.toolstates.PenToolState" />
      <add id="tool_highlighter" name="com.cambridge.classware.toolstates.HighlighterToolState" />
      <add id="tool_mask" name="com.cambridge.classware.toolstates.MaskToolShowState" />
      <add id="tool_mask_hide" name="com.cambridge.classware.toolstates.MaskToolHideState" />
      <add id="tool_eraser" name="com.cambridge.classware.toolstates.EraserToolState" />
      <add id="tool_pointer" name="com.cambridge.classware.toolstates.PointerToolState" />
    </decorators>
    <context name="tool_note">
      <uses id="tool_note" />
    </context>
    <context name="tool_pen">
      <uses id="tool_pen" />
    </context>
    <context name="tool_highlighter">
      <uses id="tool_highlighter" />
    </context>
    <context name="tool_mask">
      <uses id="tool_mask" />
    </context>
    <context name="tool_mask_hide">
      <uses id="tool_mask_hide" />
    </context>
    <context name="tool_eraser">
      <uses id="tool_eraser" />
    </context>
    <context name="tool_pointer">
      <uses id="tool_pointer" />
    </context>
  </WhiteboardToolStateFactory>
  <WhiteboardToolLayerFactory>
    <decorators>
      <add id="tool_note" name="com.cambridge.classware.page_overlays.layers.TextToolPageOverlayLayer" />
      <add id="tool_pen" name="com.cambridge.classware.page_overlays.layers.PenPageOverlayLayer" />
      <add id="tool_highlighter" name="com.cambridge.classware.page_overlays.layers.HighlighterPageOverlayLayer" />
      <add id="tool_mask" name="com.cambridge.classware.page_overlays.layers.MaskPageOverlayLayer" />
    </decorators>
    <context name="tool_note">
      <uses id="tool_note" />
    </context>
    <context name="tool_pen">
      <uses id="tool_pen" />
    </context>
    <context name="tool_highlighter">
      <uses id="tool_highlighter" />
    </context>
    <context name="tool_mask_hide">
      <uses id="tool_mask" />
    </context>
    <context name="tool_eraser">
      <uses id="tool_eraser" />
    </context>
  </WhiteboardToolLayerFactory>
  <WhiteboardToolStateLayerRelationshipProvider>
    <context name="tool_eraser">
      <uses id="tool_mask_hide" />
      <uses id="tool_pen" />
      <uses id="tool_highlighter" />
      <uses id="tool_note" />
    </context>
    <context name="tool_mask">
      <uses id="tool_mask_hide" />
    </context>
    <context name="tool_pointer">
      <uses id="tool_note" />
    </context>
  </WhiteboardToolStateLayerRelationshipProvider>
  <MyWorkCategoriesLoaderFactory>
    <decorators>
      <add name="com.cambridge.atlas.content_block.my_work.MyWorkCategoriesLoader" />
    </decorators>
  </MyWorkCategoriesLoaderFactory>
  <InteractionIdHelperFactory>
    <decorators>
      <add name="com.cdsm.elf2.models.interactions.id.StandaloneInteractionIdHelper" />
    </decorators>
  </InteractionIdHelperFactory>
</config>