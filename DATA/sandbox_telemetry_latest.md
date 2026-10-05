# sandbox_telemetry_parse — 2026-10-05 18:18:32 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=157404 lines=640
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 443 |
| `memory_sample` | 184 |
| `chrome_launch` | 5 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `process_crash` | 1 |

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
| `chromeBrowserPssKb` | {'int': 184} |
| `chromeGpuPssKb` | {'int': 184} |
| `chromeOtherPssKb` | {'int': 184} |
| `chromeProcesses` | {'int': 184} |
| `chromeProfiles` | {'int': 184} |
| `chromeRendererMaxPssKb` | {'int': 184} |
| `chromeRendererPssKb` | {'int': 184} |
| `chromeRenderers` | {'int': 184} |
| `chromeTabs` | {'int': 184} |
| `chromeTabsProbedProfiles` | {'int': 184} |
| `chromeUtilityPssKb` | {'int': 184} |
| `desktopPssKb` | {'int': 184} |
| `hostPssKb` | {'int': 184} |
| `kind` | {'str': 184} |
| `memAvailableKb` | {'int': 184} |
| `memTotalKb` | {'int': 184} |
| `otherPssKb` | {'int': 184} |
| `processes` | {'int': 184} |
| `pssFallbackProcesses` | {'int': 184} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 5} |
| `display` | {'int': 5} |
| `durationMs` | {'int': 5} |
| `kind` | {'str': 5} |
| `mode` | {'str': 5} |
| `outcome` | {'str': 5} |

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
| `cpuMillicores` | {'int': 437} |
| `display` | {'int': 443} |
| `kind` | {'str': 443} |
| `processes` | {'int': 443} |
| `pssKb` | {'int': 443} |
| `rendererMaxPssKb` | {'int': 443} |
| `renderers` | {'int': 443} |
| `tabs` | {'int': 443} |

### `process_crash`

| key | types |
|-----|-------|
| `binary` | {'str': 1} |
| `count` | {'int': 1} |
| `kind` | {'str': 1} |
| `signal` | {'str': 1} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
