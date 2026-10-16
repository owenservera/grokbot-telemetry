# sandbox_telemetry_parse — 2026-10-16 10:08:53 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=345491 lines=1291
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 848 |
| `memory_sample` | 434 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 434} |
| `chromeGpuPssKb` | {'int': 434} |
| `chromeOtherPssKb` | {'int': 434} |
| `chromeProcesses` | {'int': 434} |
| `chromeProfiles` | {'int': 434} |
| `chromeRendererMaxPssKb` | {'int': 434} |
| `chromeRendererPssKb` | {'int': 434} |
| `chromeRenderers` | {'int': 434} |
| `chromeTabs` | {'int': 434} |
| `chromeTabsProbedProfiles` | {'int': 434} |
| `chromeUtilityPssKb` | {'int': 434} |
| `desktopPssKb` | {'int': 434} |
| `hostPssKb` | {'int': 434} |
| `kind` | {'str': 434} |
| `memAvailableKb` | {'int': 434} |
| `memTotalKb` | {'int': 434} |
| `otherPssKb` | {'int': 434} |
| `processes` | {'int': 434} |
| `pssFallbackProcesses` | {'int': 434} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 845} |
| `display` | {'int': 848} |
| `kind` | {'str': 848} |
| `processes` | {'int': 848} |
| `pssKb` | {'int': 848} |
| `rendererMaxPssKb` | {'int': 848} |
| `renderers` | {'int': 848} |
| `tabs` | {'int': 847} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
