# sandbox_telemetry_parse — 2026-10-13 21:46:20 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1236722 lines=3243
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2387 |
| `chrome_profile_sample` | 848 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2387} |
| `chromeGpuPssKb` | {'int': 2387} |
| `chromeOtherPssKb` | {'int': 2387} |
| `chromeProcesses` | {'int': 2387} |
| `chromeProfiles` | {'int': 2387} |
| `chromeRendererMaxPssKb` | {'int': 2387} |
| `chromeRendererPssKb` | {'int': 2387} |
| `chromeRenderers` | {'int': 2387} |
| `chromeTabs` | {'int': 2387} |
| `chromeTabsProbedProfiles` | {'int': 2387} |
| `chromeUtilityPssKb` | {'int': 2387} |
| `desktopPssKb` | {'int': 2387} |
| `hostPssKb` | {'int': 2387} |
| `kind` | {'str': 2387} |
| `memAvailableKb` | {'int': 2387} |
| `memTotalKb` | {'int': 2387} |
| `otherPssKb` | {'int': 2387} |
| `processes` | {'int': 2387} |
| `pssFallbackProcesses` | {'int': 2387} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `cpuMillicores` | {'int': 847} |
| `display` | {'int': 848} |
| `kind` | {'str': 848} |
| `processes` | {'int': 848} |
| `pssKb` | {'int': 848} |
| `rendererMaxPssKb` | {'int': 848} |
| `renderers` | {'int': 848} |
| `tabs` | {'int': 848} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
