// The height of the panel
const height = 48

const panelId = panelIds[0]
const panel = panelById(panelId)

// FOr debugging
// print("Panel ID: "+ panel.id)
// print("Panel: "+ Object.keys(panel).join("\n"))

// NOTE: there is a bug: https://bugs.kde.org/show_bug.cgi?id=396796
// panel.hiding = "none"
// panel.hiding = "autohide"

panel.height = height - panel.height
