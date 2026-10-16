# sandbox_telemetry_parse — 2026-10-16 13:38:09 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=494735 lines=1849
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1220 |
| `memory_sample` | 620 |
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
| `chromeBrowserPssKb` | {'int': 620} |
| `chromeGpuPssKb` | {'int': 620} |
| `chromeOtherPssKb` | {'int': 620} |
| `chromeProcesses` | {'int': 620} |
| `chromeProfiles` | {'int': 620} |
| `chromeRendererMaxPssKb` | {'int': 620} |
| `chromeRendererPssKb` | {'int': 620} |
| `chromeRenderers` | {'int': 620} |
| `chromeTabs` | {'int': 620} |
| `chromeTabsProbedProfiles` | {'int': 620} |
| `chromeUtilityPssKb` | {'int': 620} |
| `desktopPssKb` | {'int': 620} |
| `hostPssKb` | {'int': 620} |
| `kind` | {'str': 620} |
| `memAvailableKb` | {'int': 620} |
| `memTotalKb` | {'int': 620} |
| `otherPssKb` | {'int': 620} |
| `processes` | {'int': 620} |
| `pssFallbackProcesses` | {'int': 620} |

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
| `cpuMillicores` | {'int': 1217} |
| `display` | {'int': 1220} |
| `kind` | {'str': 1220} |
| `processes` | {'int': 1220} |
| `pssKb` | {'int': 1220} |
| `rendererMaxPssKb` | {'int': 1220} |
| `renderers` | {'int': 1220} |
| `tabs` | {'int': 1219} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
