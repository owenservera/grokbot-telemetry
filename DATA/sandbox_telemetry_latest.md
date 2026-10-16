# sandbox_telemetry_parse — 2026-10-16 13:55:39 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=507577 lines=1897
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1252 |
| `memory_sample` | 636 |
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
| `chromeBrowserPssKb` | {'int': 636} |
| `chromeGpuPssKb` | {'int': 636} |
| `chromeOtherPssKb` | {'int': 636} |
| `chromeProcesses` | {'int': 636} |
| `chromeProfiles` | {'int': 636} |
| `chromeRendererMaxPssKb` | {'int': 636} |
| `chromeRendererPssKb` | {'int': 636} |
| `chromeRenderers` | {'int': 636} |
| `chromeTabs` | {'int': 636} |
| `chromeTabsProbedProfiles` | {'int': 636} |
| `chromeUtilityPssKb` | {'int': 636} |
| `desktopPssKb` | {'int': 636} |
| `hostPssKb` | {'int': 636} |
| `kind` | {'str': 636} |
| `memAvailableKb` | {'int': 636} |
| `memTotalKb` | {'int': 636} |
| `otherPssKb` | {'int': 636} |
| `processes` | {'int': 636} |
| `pssFallbackProcesses` | {'int': 636} |

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
| `cpuMillicores` | {'int': 1249} |
| `display` | {'int': 1252} |
| `kind` | {'str': 1252} |
| `processes` | {'int': 1252} |
| `pssKb` | {'int': 1252} |
| `rendererMaxPssKb` | {'int': 1252} |
| `renderers` | {'int': 1252} |
| `tabs` | {'int': 1251} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
