# sandbox_telemetry_parse — 2026-10-13 03:37:24 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=790558 lines=1843
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1687 |
| `chrome_profile_sample` | 148 |
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
| `chromeBrowserPssKb` | {'int': 1687} |
| `chromeGpuPssKb` | {'int': 1687} |
| `chromeOtherPssKb` | {'int': 1687} |
| `chromeProcesses` | {'int': 1687} |
| `chromeProfiles` | {'int': 1687} |
| `chromeRendererMaxPssKb` | {'int': 1687} |
| `chromeRendererPssKb` | {'int': 1687} |
| `chromeRenderers` | {'int': 1687} |
| `chromeTabs` | {'int': 1687} |
| `chromeTabsProbedProfiles` | {'int': 1687} |
| `chromeUtilityPssKb` | {'int': 1687} |
| `desktopPssKb` | {'int': 1687} |
| `hostPssKb` | {'int': 1687} |
| `kind` | {'str': 1687} |
| `memAvailableKb` | {'int': 1687} |
| `memTotalKb` | {'int': 1687} |
| `otherPssKb` | {'int': 1687} |
| `processes` | {'int': 1687} |
| `pssFallbackProcesses` | {'int': 1687} |

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
| `cpuMillicores` | {'int': 147} |
| `display` | {'int': 148} |
| `kind` | {'str': 148} |
| `processes` | {'int': 148} |
| `pssKb` | {'int': 148} |
| `rendererMaxPssKb` | {'int': 148} |
| `renderers` | {'int': 148} |
| `tabs` | {'int': 148} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
