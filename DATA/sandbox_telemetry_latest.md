# sandbox_telemetry_parse — 2026-10-13 18:58:29 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1194564 lines=3111
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2321 |
| `chrome_profile_sample` | 782 |
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
| `chromeBrowserPssKb` | {'int': 2321} |
| `chromeGpuPssKb` | {'int': 2321} |
| `chromeOtherPssKb` | {'int': 2321} |
| `chromeProcesses` | {'int': 2321} |
| `chromeProfiles` | {'int': 2321} |
| `chromeRendererMaxPssKb` | {'int': 2321} |
| `chromeRendererPssKb` | {'int': 2321} |
| `chromeRenderers` | {'int': 2321} |
| `chromeTabs` | {'int': 2321} |
| `chromeTabsProbedProfiles` | {'int': 2321} |
| `chromeUtilityPssKb` | {'int': 2321} |
| `desktopPssKb` | {'int': 2321} |
| `hostPssKb` | {'int': 2321} |
| `kind` | {'str': 2321} |
| `memAvailableKb` | {'int': 2321} |
| `memTotalKb` | {'int': 2321} |
| `otherPssKb` | {'int': 2321} |
| `processes` | {'int': 2321} |
| `pssFallbackProcesses` | {'int': 2321} |

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
| `cpuMillicores` | {'int': 781} |
| `display` | {'int': 782} |
| `kind` | {'str': 782} |
| `processes` | {'int': 782} |
| `pssKb` | {'int': 782} |
| `rendererMaxPssKb` | {'int': 782} |
| `renderers` | {'int': 782} |
| `tabs` | {'int': 782} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
