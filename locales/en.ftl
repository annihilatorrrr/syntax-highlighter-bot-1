start = 
  Hi! I can highlight multiline source code (text inside three backticks) in chats. You can set custom /font and /theme if you want to. If you want the images /as_document, you can toggle it using /as_doc.

  Developed by @dcdunkan from @dcbots. See the GitHub repository <a href="https://github.com/dcdunkan/syntax-highlighter-bot">here</a>.
  
font =
  .info =
    <b>🔠 Fonts</b>
    You can choose a font for the syntax-highlighted images from list below. It's currently set to <b>{$font}</b>

    <u>Usage</u>
    /font &lt;font-name&gt;

    <u>Supported Fonts</u>
    {$fonts}

  .set = Font has been updated to <b>{$font}</b>!
  .invalid = The font name is invalid.
  .already = <b>{$font}</b> was already your font :)

theme =
  .info =  
    <b>🎨 Themes</b>
    You can set a theme for your syntax highlighted images. It's currently set to <b>{$theme}</b>. See the full list <a href="https://telegra.ph/Themes---Syntax-Highlighter-Bot-04-14">here</a>.

    <u>Usage</u>
    /theme &lt;theme-name&gt;

  .set = Theme has been updated to <b>{$theme}</b>!
  .invalid = The theme name is invalid. See the theme list <a href="https://telegra.ph/Themes---Syntax-Highlighter-Bot-04-14">here</a>
  .already = <b>{$theme}</b> was already your theme :)

as-doc =
  .enabled = No more blurry pictures! From now on, I will send images as documents!
  .disabled = Okay, from now on, I <b>won't</b> be sending images as documents!

stats = 
  {
    $count ->
      [0] You haven't used me properly :(
      [1] I've only highlighted one time in this chat.
     *[other] So far, I've highlighted <b>{NUMBER($count, useGrouping:1)}</b> times in this chat :)
  }