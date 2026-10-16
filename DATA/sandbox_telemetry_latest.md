# sandbox_telemetry_parse — 2026-10-16 17:55:34 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=692973 lines=2590
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1714 |
| `memory_sample` | 867 |
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
| `chromeBrowserPssKb` | {'int': 867} |
| `chromeGpuPssKb` | {'int': 867} |
| `chromeOtherPssKb` | {'int': 867} |
| `chromeProcesses` | {'int': 867} |
| `chromeProfiles` | {'int': 867} |
| `chromeRendererMaxPssKb` | {'int': 867} |
| `chromeRendererPssKb` | {'int': 867} |
| `chromeRenderers` | {'int': 867} |
| `chromeTabs` | {'int': 867} |
| `chromeTabsProbedProfiles` | {'int': 867} |
| `chromeUtilityPssKb` | {'int': 867} |
| `desktopPssKb` | {'int': 867} |
| `hostPssKb` | {'int': 867} |
| `kind` | {'str': 867} |
| `memAvailableKb` | {'int': 867} |
| `memTotalKb` | {'int': 867} |
| `otherPssKb` | {'int': 867} |
| `processes` | {'int': 867} |
| `pssFallbackProcesses` | {'int': 867} |

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
| `cpuMillicores` | {'int': 1711} |
| `display` | {'int': 1714} |
| `kind` | {'str': 1714} |
| `processes` | {'int': 1714} |
| `pssKb` | {'int': 1714} |
| `rendererMaxPssKb` | {'int': 1714} |
| `renderers` | {'int': 1714} |
| `tabs` | {'int': 1713} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
