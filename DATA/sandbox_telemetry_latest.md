# sandbox_telemetry_parse — 2026-10-16 15:04:57 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=561353 lines=2098
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1386 |
| `memory_sample` | 703 |
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
| `chromeBrowserPssKb` | {'int': 703} |
| `chromeGpuPssKb` | {'int': 703} |
| `chromeOtherPssKb` | {'int': 703} |
| `chromeProcesses` | {'int': 703} |
| `chromeProfiles` | {'int': 703} |
| `chromeRendererMaxPssKb` | {'int': 703} |
| `chromeRendererPssKb` | {'int': 703} |
| `chromeRenderers` | {'int': 703} |
| `chromeTabs` | {'int': 703} |
| `chromeTabsProbedProfiles` | {'int': 703} |
| `chromeUtilityPssKb` | {'int': 703} |
| `desktopPssKb` | {'int': 703} |
| `hostPssKb` | {'int': 703} |
| `kind` | {'str': 703} |
| `memAvailableKb` | {'int': 703} |
| `memTotalKb` | {'int': 703} |
| `otherPssKb` | {'int': 703} |
| `processes` | {'int': 703} |
| `pssFallbackProcesses` | {'int': 703} |

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
| `cpuMillicores` | {'int': 1383} |
| `display` | {'int': 1386} |
| `kind` | {'str': 1386} |
| `processes` | {'int': 1386} |
| `pssKb` | {'int': 1386} |
| `rendererMaxPssKb` | {'int': 1386} |
| `renderers` | {'int': 1386} |
| `tabs` | {'int': 1385} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
