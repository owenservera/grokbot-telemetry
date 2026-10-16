# sandbox_telemetry_parse — 2026-10-16 15:15:12 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=569373 lines=2128
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1406 |
| `memory_sample` | 713 |
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
| `chromeBrowserPssKb` | {'int': 713} |
| `chromeGpuPssKb` | {'int': 713} |
| `chromeOtherPssKb` | {'int': 713} |
| `chromeProcesses` | {'int': 713} |
| `chromeProfiles` | {'int': 713} |
| `chromeRendererMaxPssKb` | {'int': 713} |
| `chromeRendererPssKb` | {'int': 713} |
| `chromeRenderers` | {'int': 713} |
| `chromeTabs` | {'int': 713} |
| `chromeTabsProbedProfiles` | {'int': 713} |
| `chromeUtilityPssKb` | {'int': 713} |
| `desktopPssKb` | {'int': 713} |
| `hostPssKb` | {'int': 713} |
| `kind` | {'str': 713} |
| `memAvailableKb` | {'int': 713} |
| `memTotalKb` | {'int': 713} |
| `otherPssKb` | {'int': 713} |
| `processes` | {'int': 713} |
| `pssFallbackProcesses` | {'int': 713} |

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
| `cpuMillicores` | {'int': 1403} |
| `display` | {'int': 1406} |
| `kind` | {'str': 1406} |
| `processes` | {'int': 1406} |
| `pssKb` | {'int': 1406} |
| `rendererMaxPssKb` | {'int': 1406} |
| `renderers` | {'int': 1406} |
| `tabs` | {'int': 1405} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
