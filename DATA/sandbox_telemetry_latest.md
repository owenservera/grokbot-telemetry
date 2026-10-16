# sandbox_telemetry_parse — 2026-10-16 11:51:08 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=418474 lines=1564
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1030 |
| `memory_sample` | 525 |
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
| `chromeBrowserPssKb` | {'int': 525} |
| `chromeGpuPssKb` | {'int': 525} |
| `chromeOtherPssKb` | {'int': 525} |
| `chromeProcesses` | {'int': 525} |
| `chromeProfiles` | {'int': 525} |
| `chromeRendererMaxPssKb` | {'int': 525} |
| `chromeRendererPssKb` | {'int': 525} |
| `chromeRenderers` | {'int': 525} |
| `chromeTabs` | {'int': 525} |
| `chromeTabsProbedProfiles` | {'int': 525} |
| `chromeUtilityPssKb` | {'int': 525} |
| `desktopPssKb` | {'int': 525} |
| `hostPssKb` | {'int': 525} |
| `kind` | {'str': 525} |
| `memAvailableKb` | {'int': 525} |
| `memTotalKb` | {'int': 525} |
| `otherPssKb` | {'int': 525} |
| `processes` | {'int': 525} |
| `pssFallbackProcesses` | {'int': 525} |

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
| `cpuMillicores` | {'int': 1027} |
| `display` | {'int': 1030} |
| `kind` | {'str': 1030} |
| `processes` | {'int': 1030} |
| `pssKb` | {'int': 1030} |
| `rendererMaxPssKb` | {'int': 1030} |
| `renderers` | {'int': 1030} |
| `tabs` | {'int': 1029} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
