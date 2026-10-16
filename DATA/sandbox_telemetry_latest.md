# sandbox_telemetry_parse — 2026-10-16 12:33:36 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=447368 lines=1672
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1102 |
| `memory_sample` | 561 |
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
| `chromeBrowserPssKb` | {'int': 561} |
| `chromeGpuPssKb` | {'int': 561} |
| `chromeOtherPssKb` | {'int': 561} |
| `chromeProcesses` | {'int': 561} |
| `chromeProfiles` | {'int': 561} |
| `chromeRendererMaxPssKb` | {'int': 561} |
| `chromeRendererPssKb` | {'int': 561} |
| `chromeRenderers` | {'int': 561} |
| `chromeTabs` | {'int': 561} |
| `chromeTabsProbedProfiles` | {'int': 561} |
| `chromeUtilityPssKb` | {'int': 561} |
| `desktopPssKb` | {'int': 561} |
| `hostPssKb` | {'int': 561} |
| `kind` | {'str': 561} |
| `memAvailableKb` | {'int': 561} |
| `memTotalKb` | {'int': 561} |
| `otherPssKb` | {'int': 561} |
| `processes` | {'int': 561} |
| `pssFallbackProcesses` | {'int': 561} |

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
| `cpuMillicores` | {'int': 1099} |
| `display` | {'int': 1102} |
| `kind` | {'str': 1102} |
| `processes` | {'int': 1102} |
| `pssKb` | {'int': 1102} |
| `rendererMaxPssKb` | {'int': 1102} |
| `renderers` | {'int': 1102} |
| `tabs` | {'int': 1101} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
