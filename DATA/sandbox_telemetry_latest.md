# sandbox_telemetry_parse — 2026-10-16 03:44:04 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=55140 lines=205
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 124 |
| `memory_sample` | 72 |
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
| `chromeBrowserPssKb` | {'int': 72} |
| `chromeGpuPssKb` | {'int': 72} |
| `chromeOtherPssKb` | {'int': 72} |
| `chromeProcesses` | {'int': 72} |
| `chromeProfiles` | {'int': 72} |
| `chromeRendererMaxPssKb` | {'int': 72} |
| `chromeRendererPssKb` | {'int': 72} |
| `chromeRenderers` | {'int': 72} |
| `chromeTabs` | {'int': 72} |
| `chromeTabsProbedProfiles` | {'int': 72} |
| `chromeUtilityPssKb` | {'int': 72} |
| `desktopPssKb` | {'int': 72} |
| `hostPssKb` | {'int': 72} |
| `kind` | {'str': 72} |
| `memAvailableKb` | {'int': 72} |
| `memTotalKb` | {'int': 72} |
| `otherPssKb` | {'int': 72} |
| `processes` | {'int': 72} |
| `pssFallbackProcesses` | {'int': 72} |

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
| `cpuMillicores` | {'int': 121} |
| `display` | {'int': 124} |
| `kind` | {'str': 124} |
| `processes` | {'int': 124} |
| `pssKb` | {'int': 124} |
| `rendererMaxPssKb` | {'int': 124} |
| `renderers` | {'int': 124} |
| `tabs` | {'int': 123} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
