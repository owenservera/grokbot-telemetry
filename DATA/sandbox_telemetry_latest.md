# sandbox_telemetry_parse — 2026-10-16 14:17:01 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=524434 lines=1960
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1294 |
| `memory_sample` | 657 |
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
| `chromeBrowserPssKb` | {'int': 657} |
| `chromeGpuPssKb` | {'int': 657} |
| `chromeOtherPssKb` | {'int': 657} |
| `chromeProcesses` | {'int': 657} |
| `chromeProfiles` | {'int': 657} |
| `chromeRendererMaxPssKb` | {'int': 657} |
| `chromeRendererPssKb` | {'int': 657} |
| `chromeRenderers` | {'int': 657} |
| `chromeTabs` | {'int': 657} |
| `chromeTabsProbedProfiles` | {'int': 657} |
| `chromeUtilityPssKb` | {'int': 657} |
| `desktopPssKb` | {'int': 657} |
| `hostPssKb` | {'int': 657} |
| `kind` | {'str': 657} |
| `memAvailableKb` | {'int': 657} |
| `memTotalKb` | {'int': 657} |
| `otherPssKb` | {'int': 657} |
| `processes` | {'int': 657} |
| `pssFallbackProcesses` | {'int': 657} |

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
| `cpuMillicores` | {'int': 1291} |
| `display` | {'int': 1294} |
| `kind` | {'str': 1294} |
| `processes` | {'int': 1294} |
| `pssKb` | {'int': 1294} |
| `rendererMaxPssKb` | {'int': 1294} |
| `renderers` | {'int': 1294} |
| `tabs` | {'int': 1293} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
