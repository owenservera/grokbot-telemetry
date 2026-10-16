# sandbox_telemetry_parse — 2026-10-16 11:47:11 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=415269 lines=1552
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1022 |
| `memory_sample` | 521 |
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
| `chromeBrowserPssKb` | {'int': 521} |
| `chromeGpuPssKb` | {'int': 521} |
| `chromeOtherPssKb` | {'int': 521} |
| `chromeProcesses` | {'int': 521} |
| `chromeProfiles` | {'int': 521} |
| `chromeRendererMaxPssKb` | {'int': 521} |
| `chromeRendererPssKb` | {'int': 521} |
| `chromeRenderers` | {'int': 521} |
| `chromeTabs` | {'int': 521} |
| `chromeTabsProbedProfiles` | {'int': 521} |
| `chromeUtilityPssKb` | {'int': 521} |
| `desktopPssKb` | {'int': 521} |
| `hostPssKb` | {'int': 521} |
| `kind` | {'str': 521} |
| `memAvailableKb` | {'int': 521} |
| `memTotalKb` | {'int': 521} |
| `otherPssKb` | {'int': 521} |
| `processes` | {'int': 521} |
| `pssFallbackProcesses` | {'int': 521} |

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
| `cpuMillicores` | {'int': 1019} |
| `display` | {'int': 1022} |
| `kind` | {'str': 1022} |
| `processes` | {'int': 1022} |
| `pssKb` | {'int': 1022} |
| `rendererMaxPssKb` | {'int': 1022} |
| `renderers` | {'int': 1022} |
| `tabs` | {'int': 1021} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
