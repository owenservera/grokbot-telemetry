# sandbox_telemetry_parse — 2026-10-13 05:34:54 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=857405 lines=2053
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1792 |
| `chrome_profile_sample` | 253 |
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
| `chromeBrowserPssKb` | {'int': 1792} |
| `chromeGpuPssKb` | {'int': 1792} |
| `chromeOtherPssKb` | {'int': 1792} |
| `chromeProcesses` | {'int': 1792} |
| `chromeProfiles` | {'int': 1792} |
| `chromeRendererMaxPssKb` | {'int': 1792} |
| `chromeRendererPssKb` | {'int': 1792} |
| `chromeRenderers` | {'int': 1792} |
| `chromeTabs` | {'int': 1792} |
| `chromeTabsProbedProfiles` | {'int': 1792} |
| `chromeUtilityPssKb` | {'int': 1792} |
| `desktopPssKb` | {'int': 1792} |
| `hostPssKb` | {'int': 1792} |
| `kind` | {'str': 1792} |
| `memAvailableKb` | {'int': 1792} |
| `memTotalKb` | {'int': 1792} |
| `otherPssKb` | {'int': 1792} |
| `processes` | {'int': 1792} |
| `pssFallbackProcesses` | {'int': 1792} |

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
| `cpuMillicores` | {'int': 252} |
| `display` | {'int': 253} |
| `kind` | {'str': 253} |
| `processes` | {'int': 253} |
| `pssKb` | {'int': 253} |
| `rendererMaxPssKb` | {'int': 253} |
| `renderers` | {'int': 253} |
| `tabs` | {'int': 253} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
