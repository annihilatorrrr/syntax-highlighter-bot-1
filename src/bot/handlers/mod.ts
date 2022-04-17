import { Composer } from "../../deps.ts";
import { Context } from "../helpers/context.ts";

import { start } from "./start.ts";
import { font } from "./font.ts";
import { theme } from "./theme.ts";
import { stats } from "./stats.ts";
import { remove } from "./remove.ts";
import { preCode } from "./pre_code.ts";
import { asDocument } from "./as_doc.ts";
import { highlight } from "./highlight.ts";

export const handlers = new Composer<Context>();

// commands that only can be used by private chat,
// and administrators of the group chat.
handlers
  .filter(async (ctx) => {
    if (ctx.chat?.type === "private") return true;
    if (ctx.chat?.type === "channel") return false;
    const user = await ctx.getAuthor();
    return user.status === "creator" || user.status === "administrator";
  })
  .use(start)
  .use(font)
  .use(theme)
  .use(asDocument)
  .use(stats);

handlers.on("callback_query").use(remove);
handlers.use(preCode);
handlers.use(highlight);
