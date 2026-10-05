# sandbox_telemetry_parse — 2026-10-05 17:10:56 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=71865 lines=233
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 117 |
| `chrome_profile_sample` | 106 |
| `boot_stage` | 3 |
| `chrome_launch` | 3 |
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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 117} |
| `chromeGpuPssKb` | {'int': 117} |
| `chromeOtherPssKb` | {'int': 117} |
| `chromeProcesses` | {'int': 117} |
| `chromeProfiles` | {'int': 117} |
| `chromeRendererMaxPssKb` | {'int': 117} |
| `chromeRendererPssKb` | {'int': 117} |
| `chromeRenderers` | {'int': 117} |
| `chromeTabs` | {'int': 117} |
| `chromeTabsProbedProfiles` | {'int': 117} |
| `chromeUtilityPssKb` | {'int': 117} |
| `desktopPssKb` | {'int': 117} |
| `hostPssKb` | {'int': 117} |
| `kind` | {'str': 117} |
| `memAvailableKb` | {'int': 117} |
| `memTotalKb` | {'int': 117} |
| `otherPssKb` | {'int': 117} |
| `processes` | {'int': 117} |
| `pssFallbackProcesses` | {'int': 117} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `display` | {'int': 3} |
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `mode` | {'str': 3} |
| `outcome` | {'str': 3} |

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
| `cpuMillicores` | {'int': 102} |
| `display` | {'int': 106} |
| `kind` | {'str': 106} |
| `processes` | {'int': 106} |
| `pssKb` | {'int': 106} |
| `rendererMaxPssKb` | {'int': 106} |
| `renderers` | {'int': 106} |
| `tabs` | {'int': 106} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
