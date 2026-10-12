# sandbox_telemetry_parse — 2026-10-13 01:59:31 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=775281 lines=1795
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1663 |
| `chrome_profile_sample` | 124 |
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
| `chromeBrowserPssKb` | {'int': 1663} |
| `chromeGpuPssKb` | {'int': 1663} |
| `chromeOtherPssKb` | {'int': 1663} |
| `chromeProcesses` | {'int': 1663} |
| `chromeProfiles` | {'int': 1663} |
| `chromeRendererMaxPssKb` | {'int': 1663} |
| `chromeRendererPssKb` | {'int': 1663} |
| `chromeRenderers` | {'int': 1663} |
| `chromeTabs` | {'int': 1663} |
| `chromeTabsProbedProfiles` | {'int': 1663} |
| `chromeUtilityPssKb` | {'int': 1663} |
| `desktopPssKb` | {'int': 1663} |
| `hostPssKb` | {'int': 1663} |
| `kind` | {'str': 1663} |
| `memAvailableKb` | {'int': 1663} |
| `memTotalKb` | {'int': 1663} |
| `otherPssKb` | {'int': 1663} |
| `processes` | {'int': 1663} |
| `pssFallbackProcesses` | {'int': 1663} |

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
| `cpuMillicores` | {'int': 123} |
| `display` | {'int': 124} |
| `kind` | {'str': 124} |
| `processes` | {'int': 124} |
| `pssKb` | {'int': 124} |
| `rendererMaxPssKb` | {'int': 124} |
| `renderers` | {'int': 124} |
| `tabs` | {'int': 124} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
