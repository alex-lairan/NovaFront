component Editor {
  fun componentDidMount : Promise(Never, Void) {
    editor()
  }

  fun editor {
    `
    (() => {
      return new EditorJS({ holder: 'editor' });
    })()
    `
  }

  fun render : Html {
    <div id="editor" style="border: 5px solid red;"></div>
  }
}
